import 'dart:io';

import 'package:path_provider/path_provider.dart';

// 获取应用目录
Future<String> getAppDirectory() async {
  if (Platform.isAndroid) {
    // 如果是 Android 平台，获取临时目录并去掉末尾的 /cache
    final Directory tempDir = await getTemporaryDirectory();
    return tempDir.path.replaceAll("/cache", "");
  } else if (Platform.isWindows) {
    // 如果是 Windows 平台，获取应用安装目录
    final String appDir = Platform.resolvedExecutable;
    return appDir.substring(0, appDir.lastIndexOf(Platform.pathSeparator));
  } else {
    // 其他平台（如 iOS、macOS 等），返回临时目录
    final Directory tempDir = await getTemporaryDirectory();
    return tempDir.path;
  }
}

// 获取文件路径
Future<String> getFilePath() async {
  // 拼接文件路径
  final String filePath = "${await getAppDirectory()}/files";
  return filePath;
}

// 获取缓存路径
Future<String> getCachePath() async {
  // 拼接文件路径
  final String appCacheDir = "${await getAppDirectory()}/cache";
  return appCacheDir;
}

// 获取文件下载路径
Future<String> getDownloadPath() async {
  // 获取下载目录
  final downloadsDir = "${await getFilePath()}/downloads";
  return downloadsDir; // 返回空字符串或者合适的错误信息
}
