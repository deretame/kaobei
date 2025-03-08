import 'dart:io';
import 'dart:isolate';

import 'package:archive/archive_io.dart';
import 'package:path_provider/path_provider.dart';

import '../../../main.dart';
import '../../../network/http/picture.dart';
import '../../../util/toast.dart';
import '../../../widgets/picture_bloc/models/picture_info.dart';
import '../json/comic_all_info_json/comic_all_info_json.dart';

Future<void> exportComicAsFolder(
  ComicAllInfoJson comicInfo,
  String comicInfoJsonStr,
) async {
  var processedComicInfo = comicInfoProcess(comicInfo);
  var downloadPath = await createDownloadDir();
  var comicDir = '$downloadPath/${processedComicInfo.comic.name}';

  if (!await Directory(comicDir).exists()) {
    await Directory(comicDir).create(recursive: true);
  }

  // 保存漫画基本信息
  var comicBaseInfoFile = File('$comicDir/comic_base_info.json');
  if (!await comicBaseInfoFile.exists()) {
    await comicBaseInfoFile.create(recursive: true);
  }
  await comicBaseInfoFile.writeAsString(comicInfoJsonStr);

  // 保存漫画原始信息
  var comicInfoString = comicAllInfoJsonToJson(comicInfo);
  var comicInfoFile = File('$comicDir/original_comic_info.json');
  if (!await comicInfoFile.exists()) {
    await comicInfoFile.create(recursive: true);
  }
  await comicInfoFile.writeAsString(comicInfoString);

  // 保存处理过的漫画信息
  var processedComicInfoString = comicAllInfoJsonToJson(processedComicInfo);
  var processedComicInfoFile = File('$comicDir/processed_comic_info.json');
  if (!await processedComicInfoFile.exists()) {
    await processedComicInfoFile.create(recursive: true);
  }
  await processedComicInfoFile.writeAsString(processedComicInfoString);

  // 保存封面
  var coverDir = '$comicDir/cover/';
  var coverFile = File('$coverDir/cover.jpg');
  if (!await coverFile.exists()) {
    await coverFile.create(recursive: true);
  }
  var coverDownloadFile = await downloadPicture(
    url: processedComicInfo.comic.cover,
    cartoonId: processedComicInfo.comic.pathWord,
    pictureType: PictureType.cover,
  );
  await File(coverDownloadFile).copy(coverFile.path);

  var chapterDir = '$comicDir/chapters/';
  if (!await Directory(chapterDir).exists()) {
    await Directory(chapterDir).create(recursive: true);
  }

  for (var group in processedComicInfo.groups) {
    var groupDir = '$chapterDir/${group.name}/';
    if (!await Directory(groupDir).exists()) {
      await Directory(groupDir).create(recursive: true);
    }
    for (var chapter in group.chapterList) {
      var chapterDir = '$groupDir/${chapter.chapterInfo.chapter.name}/';
      if (!await Directory(chapterDir).exists()) {
        await Directory(chapterDir).create(recursive: true);
      }
      int i = 1;
      for (var picture in chapter.chapterInfo.chapter.contents) {
        var pictureFile = File('$chapterDir/$i.jpg');
        if (!await pictureFile.exists()) {
          await pictureFile.create(recursive: true);
        }
        var pictureDownloadFile = await downloadPicture(
          url: picture,
          cartoonId: processedComicInfo.comic.pathWord,
          chapterId: chapter.chapterInfo.chapter.uuid,
          pictureType: PictureType.comic,
        );
        await File(pictureDownloadFile).copy(pictureFile.path);
      }
    }
  }

  showSuccessToast('漫画${comicInfo.comic.name}导出为文件夹完成');
}

// 可序列化的参数类
class ZipArguments {
  final String zipFilePath;
  final Map<String, String> jsonFiles;
  final List<MapEntry<String, String>> filesToAdd;

  ZipArguments({
    required this.zipFilePath,
    required this.jsonFiles,
    required this.filesToAdd,
  });
}

Future<void> exportComicAsZip(
  ComicAllInfoJson comicInfo,
  String comicInfoJsonStr,
) async {
  // 在主Isolate中处理数据和下载文件
  final processedComicInfo = comicInfoProcess(comicInfo);
  final downloadPath = await createDownloadDir();
  final comicDirName = processedComicInfo.comic.name;
  final zipFilePath = '$downloadPath/$comicDirName.zip';

  // 下载封面
  final coverPath = await downloadPicture(
    url: processedComicInfo.comic.cover,
    cartoonId: processedComicInfo.comic.pathWord,
    pictureType: PictureType.cover,
  );

  // 收集所有要添加到ZIP的文件
  final filesToAdd = <MapEntry<String, String>>[];
  filesToAdd.add(MapEntry('cover/cover.jpg', coverPath));

  // 下载章节图片并收集路径
  for (final group in processedComicInfo.groups) {
    for (final chapter in group.chapterList) {
      final chapterDir =
          'chapters/${group.name}/${chapter.chapterInfo.chapter.name}';
      int index = 1;
      for (final picture in chapter.chapterInfo.chapter.contents) {
        final picturePath = await downloadPicture(
          url: picture,
          cartoonId: processedComicInfo.comic.pathWord,
          chapterId: chapter.chapterInfo.chapter.uuid,
          pictureType: PictureType.comic,
        );
        filesToAdd.add(MapEntry('$chapterDir/$index.jpg', picturePath));
        index++;
      }
    }
  }

  // 准备JSON内容
  final jsonFiles = {
    'comic_base_info.json': comicInfoJsonStr,
    'original_comic_info.json': comicAllInfoJsonToJson(comicInfo),
    'processed_comic_info.json': comicAllInfoJsonToJson(processedComicInfo),
  };

  // 在后台Isolate中执行压缩
  await Isolate.run(() async {
    await _createZipInBackground(
      ZipArguments(
        zipFilePath: zipFilePath,
        jsonFiles: jsonFiles,
        filesToAdd: filesToAdd,
      ),
    );
  });

  showSuccessToast('漫画${comicInfo.comic.name}导出为压缩包完成');
}

Future<void> _createZipInBackground(ZipArguments args) async {
  final zipFile = File(args.zipFilePath);
  if (await zipFile.exists()) await zipFile.delete();

  final encoder = ZipFileEncoder();
  encoder.create(args.zipFilePath, level: DeflateLevel.none);

  try {
    // 添加JSON文件
    for (final entry in args.jsonFiles.entries) {
      encoder.addArchiveFile(
        ArchiveFile(entry.key, entry.value.length, entry.value.codeUnits),
      );
    }

    // 添加图片文件
    for (final fileEntry in args.filesToAdd) {
      final sourceFile = File(fileEntry.value);
      if (await sourceFile.exists()) {
        encoder.addFile(sourceFile, fileEntry.key, DeflateLevel.none);
      }
    }
  } finally {
    encoder.close();
  }
}

ComicAllInfoJson comicInfoProcess(ComicAllInfoJson comicInfo) {
  comicInfo = comicInfo.copyWith.comic(
    name:
        ("${comicInfo.comic.name}_${comicInfo.comic.pathWord}")
            .replaceInvalidCharacters(),
  );

  for (var group in comicInfo.groups) {
    group = group.copyWith(name: group.name.replaceInvalidCharacters());
    for (var chapter in group.chapterList) {
      chapter = chapter.copyWith.chapterInfo.chapter(
        name: chapter.chapterInfo.chapter.name.replaceInvalidCharacters(),
      );
    }
  }

  return comicInfo;
}

/// 创建下载目录
Future<String> createDownloadDir() async {
  try {
    // 获取外部存储目录
    Directory? externalDir = await getExternalStorageDirectory();
    if (externalDir != null) {
      String downloadPath = externalDir.path;
      logger.d('downloadPath: $downloadPath');
    }

    RegExp regExp = RegExp(r'/(\d+)/');
    Match? match = regExp.firstMatch(externalDir!.path);
    String userId = match!.group(1)!; // 提取到的用户ID

    String filePath = "/storage/emulated/$userId/Download/拷贝/";

    // 使用path库来确保路径的正确性
    final dir = Directory(filePath);

    // 检查目录是否存在
    bool dirExists = await dir.exists();
    if (!dirExists) {
      // 如果目录不存在，则创建它
      try {
        await dir.create(recursive: true); // recursive设置为true可以创建所有必要的父目录
        logger.d('Directory created: $filePath');
      } catch (e) {
        logger.e('Failed to create directory: $e');
        rethrow;
      }
    } else {
      logger.d('Directory already exists: $filePath');
    }

    return filePath;
  } catch (e) {
    logger.e(e.toString());
    rethrow;
  }
}

extension StringExtensions on String {
  String replaceInvalidCharacters() {
    return replaceAll(RegExp(r'[<>:"/\\|?* ]'), '_');
  }
}
