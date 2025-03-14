import 'dart:io';

import 'package:kaobei/util/get_path.dart';

import '../main.dart';

Future<void> manageCacheSize() async {
  // 获取缓存目录路径
  final String cachePath = await getCachePath();
  final Directory cacheDirectory = Directory(cachePath);

  // 如果目录不存在，则创建
  if (!cacheDirectory.existsSync()) {
    logger.i('Cache directory does not exist, creating...');
    await cacheDirectory.create(recursive: true);
  }

  // 创建一个变量来保存总大小
  int totalSize = 0;

  // 遍历缓存目录中的所有文件
  final List<FileSystemEntity> files = cacheDirectory.listSync(recursive: true);
  for (var file in files) {
    if (file is File) {
      // 如果是文件，则获取其大小并累加
      totalSize += await file.length();
    }
  }

  // 检查总大小是否达到 1GB (1GB = 1024 * 1024 * 1024 bytes)
  const int maxSize = 1 * 1024 * 1024 * 1024; // 1GB
  if (totalSize >= maxSize) {
    logger.i('Cache size exceeded 1GB, clearing cache...');
    await clearCache(cacheDirectory);
  } else {
    logger.i(
      'Current cache size: ${totalSize / (1024 * 1024)} MB',
    ); // 转换为 MB 输出
  }
}

Future<void> clearCache(Directory cacheDirectory) async {
  try {
    // 直接删除缓存目录及其所有内容
    await cacheDirectory.delete(recursive: true);
    logger.i('Cache cleared successfully.');
  } catch (e) {
    logger.e('Error clearing cache: $e');
  }
}
