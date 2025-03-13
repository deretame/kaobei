import 'dart:io';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'model.dart';
import 'objectbox.g.dart';

class ObjectBox {
  late final Store store;

  late final Box<CollectComic> _collectComic;

  late final Box<ComicHistory> _comicHistory;

  late final Box<ComicDownload> _comicDownload;

  ObjectBox._create(this.store) {
    _collectComic = store.box<CollectComic>();
    _comicHistory = store.box<ComicHistory>();
    _comicDownload = store.box<ComicDownload>();
  }

  static Future<ObjectBox> create() async {
    Directory baseDir;
    if (Platform.isAndroid) {
      // Android: 使用应用文档目录
      baseDir = await getApplicationDocumentsDirectory();
    } else if (Platform.isWindows) {
      // Windows: 使用应用本身的目录下的 data 目录
      final executablePath = Platform.resolvedExecutable;
      final appDir = Directory(p.dirname(executablePath));
      baseDir = Directory(p.join(appDir.path, 'data'));
      // 确保 data 目录存在
      if (!await baseDir.exists()) {
        await baseDir.create(recursive: true);
      }
    } else {
      throw UnsupportedError(
        'Unsupported platform: ${Platform.operatingSystem}',
      );
    }
    // 打开 Store
    final store = await openStore(directory: p.join(baseDir.path, 'breeze_db'));
    return ObjectBox._create(store);
  }

  Box<CollectComic> get collectBox => _collectComic;

  Box<ComicHistory> get historyBox => _comicHistory;

  Box<ComicDownload> get downloadBox => _comicDownload;
}
