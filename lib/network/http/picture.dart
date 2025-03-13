import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:path/path.dart' as file_path;

import '../../main.dart';
import '../../util/get_path.dart';
import '../../widgets/picture_bloc/models/picture_info.dart';

final pictureDio = Dio();

Future<String> getCachePicture({
  String url = '',
  String cartoonId = '1',
  PictureType pictureType = PictureType.none,
  String chapterId = '',
}) async {
  if (url.isEmpty) {
    throw Exception('URL 不能为空 404');
  }

  // 获取缓存和下载路径
  String cachePath = await getCachePath();
  String downloadPath = await getDownloadPath();

  final name = sanitizePath(url);

  // 构建文件路径
  String cacheFilePath = buildFilePath(
    cachePath,
    pictureType,
    cartoonId,
    chapterId,
    name,
  );

  String downloadFilePath = buildFilePath(
    downloadPath,
    pictureType,
    cartoonId,
    chapterId,
    name,
  );

  logger.d(cachePath);

  // 检查文件是否存在
  String existingFilePath = await checkFileExists(
    cacheFilePath,
    downloadFilePath,
  );
  if (existingFilePath.isNotEmpty) {
    return existingFilePath;
  }
  // logger.d('开始下载图片: $url');

  // 下载图片
  Uint8List imageData = await downloadImageWithRetry(url);

  // 保存图片
  await saveImage(imageData, cacheFilePath);

  return cacheFilePath;
}

Future<String> downloadPicture({
  String url = '',
  String cartoonId = '1',
  PictureType pictureType = PictureType.none,
  String chapterId = '',
}) async {
  if (url.isEmpty) {
    throw Exception('URL 不能为空 404');
  }

  // 获取下载路径
  String downloadPath = await getDownloadPath();
  String cachePath = await getCachePath();

  final name = sanitizePath(url);

  // 构建文件路径
  String cacheFilePath = buildFilePath(
    cachePath,
    pictureType,
    cartoonId,
    chapterId,
    name,
  );

  String downloadFilePath = buildFilePath(
    downloadPath,
    pictureType,
    cartoonId,
    chapterId,
    name,
  );

  // 检查文件是否存在
  String existingFilePath = await checkFileExists(
    cacheFilePath,
    downloadFilePath,
  );

  if (existingFilePath.isNotEmpty) {
    if (existingFilePath != downloadFilePath) {
      await copyFile(cacheFilePath, downloadFilePath);
    }
    return downloadFilePath;
  }

  // 下载图片
  Uint8List imageData = await downloadImageWithRetry(url);

  // 保存图片
  await saveImage(imageData, downloadFilePath);

  // logger.d('图片已下载到：$downloadFilePath');

  return downloadFilePath;
}

String sanitizePath(String path) {
  return path.replaceAll(RegExp(r'[^a-zA-Z0-9_\-.]'), '_');
}

String buildFilePath(
  String basePath,
  PictureType pictureType,
  String cartoonId,
  String chapterId,
  String name,
) {
  if (pictureType == PictureType.cover) {
    return file_path.join(basePath, cartoonId, 'cover', chapterId, name);
  } else if (pictureType == PictureType.comic) {
    return file_path.join(basePath, cartoonId, 'comic', chapterId, name);
  } else {
    return file_path.join(basePath, pictureType.name, name);
  }
}

Future<String> checkFileExists(String cachePath, String downloadPath) async {
  if (await fileExists(downloadPath)) {
    return downloadPath;
  }

  if (await fileExists(cachePath)) {
    return cachePath;
  }

  return '';
}

Future<bool> fileExists(String filePath) async {
  try {
    return await File(filePath).exists();
  } catch (e) {
    logger.e('检查文件存在性时出错: $e');
    return false;
  }
}

Future<void> copyFile(String sourcePath, String targetPath) async {
  try {
    await ensureDirectoryExists(targetPath);
    await File(sourcePath).copy(targetPath);
  } catch (e) {
    logger.e('复制文件失败: $e');
    throw Exception('复制文件失败: $e');
  }
}

Future<Uint8List> downloadImageWithRetry(String url) async {
  while (true) {
    try {
      final response = await dio.get(
        url,
        options: Options(responseType: ResponseType.bytes), // 指定返回类型为字节数据
      );
      return response.data as Uint8List;
    } catch (e) {
      logger.e('下载图片失败: $e, URL: $url');
      await Future.delayed(Duration(seconds: 1)); // 延迟 1 秒后重试
    }
  }
}

Future<void> saveImage(Uint8List imageData, String filePath) async {
  final targetFile = File(filePath);

  try {
    // 确保目录存在
    await ensureDirectoryExists(filePath);

    // 直接写入目标文件
    await targetFile.writeAsBytes(imageData);

    // logger.d('图片已保存到：$filePath');
  } catch (e) {
    // 如果发生异常，删除不完整的文件
    if (await targetFile.exists()) {
      await targetFile.delete();
    }
    logger.e('保存图片失败: $e');
    throw Exception('保存图片失败: $e');
  }
}

Future<void> ensureDirectoryExists(String filePath) async {
  final directory = Directory(file_path.dirname(filePath));
  if (!await directory.exists()) {
    await directory.create(recursive: true);
  }
}

String replaceSubsequentDoubleSlashes(String input) {
  String target = '//';
  String replacement = '/';

  // 找到第一个'//'的位置
  int firstDoubleSlashIndex = input.indexOf(target);

  // 如果存在第一个'//'，则从其后开始替换所有'//'为'/'
  if (firstDoubleSlashIndex != -1) {
    String firstPart = input.substring(
      0,
      firstDoubleSlashIndex + target.length,
    );
    String secondPart = input.substring(firstDoubleSlashIndex + target.length);
    String replacedSecondPart = secondPart.replaceAll(target, replacement);
    return '$firstPart$replacedSecondPart';
  } else {
    // 如果没有'//'，则返回原始字符串
    return input;
  }
}
