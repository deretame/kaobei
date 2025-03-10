import 'dart:io';
import 'dart:isolate';

import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:tar/tar.dart';

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
  var comicDir = '$downloadPath${processedComicInfo.comic.name}';

  if (await Directory(comicDir).exists()) {
    await Directory(comicDir).delete(recursive: true);
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
        var pictureFile = File('$chapterDir/${i++}.jpg');
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

Future<void> exportComicAsZip(
  ComicAllInfoJson comicInfo,
  String comicInfoJsonStr,
) async {
  var processedComicInfo = comicInfoProcess(comicInfo);

  // 创建缓存目录
  var cacheDir = await _createCacheDir();
  var comicDir = '$cacheDir${processedComicInfo.comic.name}';

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
        var pictureFile = File('$chapterDir/${i++}.${picture.split('.').last}');
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

  // 在后台线程中执行压缩操作
  var downloadPath = await createDownloadDir();
  await _compressInBackground(
    comicDir,
    downloadPath,
    processedComicInfo.comic.name,
  );

  // 删除缓存目录
  await Directory(comicDir).delete(recursive: true);

  showSuccessToast('漫画${comicInfo.comic.name}导出为压缩包完成');
}

/// 创建缓存目录
Future<String> _createCacheDir() async {
  var cacheDir = Directory('${Directory.systemTemp.path}/comic_export_cache');
  if (!await cacheDir.exists()) {
    await cacheDir.create(recursive: true);
  }
  return cacheDir.path;
}

/// 在后台线程中执行压缩操作
Future<void> _compressInBackground(
  String comicDir,
  String downloadPath,
  String comicName,
) async {
  // 创建一个 ReceivePort 来接收后台线程的消息
  final receivePort = ReceivePort();

  // 启动后台线程
  await Isolate.spawn(
    _compressIsolate,
    _CompressIsolateData(
      comicDir: comicDir,
      downloadPath: downloadPath,
      comicName: comicName,
      sendPort: receivePort.sendPort,
    ),
  );

  // 等待后台线程完成
  await receivePort.first;
}

/// 后台线程的入口函数
Future<void> _compressIsolate(_CompressIsolateData data) async {
  var outputPath = '${data.downloadPath}${data.comicName}.tar';

  final entries = findEntries(outputPath, data.comicDir);
  final output = File(outputPath);

  await entries.transform(tarWriter).pipe(output.openWrite());

  // 通知主线程压缩完成
  data.sendPort.send(null);
}

Stream<TarEntry> findEntries(String outputName, String comicDir) async* {
  final root = Directory(comicDir);
  await for (final entry in root.list(recursive: true)) {
    if (entry is! File) continue;

    final name = path.relative(entry.path, from: root.path);

    if (name.startsWith('.')) continue;

    if (name == outputName) continue;

    final stat = entry.statSync();

    yield TarEntry(
      TarHeader(
        name: name,
        typeFlag: TypeFlag.reg,
        mode: stat.mode,
        modified: stat.modified,
        accessed: stat.accessed,
        changed: stat.changed,
        size: stat.size,
      ),
      entry.openRead(),
    );
  }
}

/// 用于传递数据到后台线程的数据结构
class _CompressIsolateData {
  final String comicDir;
  final String downloadPath;
  final String comicName;
  final SendPort sendPort;

  _CompressIsolateData({
    required this.comicDir,
    required this.downloadPath,
    required this.comicName,
    required this.sendPort,
  });
}

ComicAllInfoJson comicInfoProcess(ComicAllInfoJson comicInfo) {
  // 修改 comic 的 name
  comicInfo = comicInfo.copyWith.comic(
    name:
        "${comicInfo.comic.name}_${comicInfo.comic.pathWord}"
            .replaceInvalidCharacters(),
  );

  // 修改 groups 和 chapterList
  int i = 1;
  var updatedGroups =
      comicInfo.groups.map((group) {
        // 修改 group 的 name
        var updatedGroup = group.copyWith(
          name: "${i++}.${group.name}".replaceInvalidCharacters(),
        );

        // 修改 chapterList 中的 chapter name
        var updatedChapterList =
            updatedGroup.chapterList.map((chapter) {
              return chapter.copyWith.chapterInfo.chapter(
                name:
                    "${chapter.chapterInfo.chapter.index + 1}.${chapter.chapterInfo.chapter.name}"
                        .replaceInvalidCharacters(),
              );
            }).toList();

        // 更新 group 的 chapterList
        return updatedGroup.copyWith(chapterList: updatedChapterList);
      }).toList();

  // 更新 comicInfo 的 groups
  return comicInfo.copyWith(groups: updatedGroups);
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
