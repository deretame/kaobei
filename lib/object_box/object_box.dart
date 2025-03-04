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
    final docsDir = await getApplicationDocumentsDirectory();
    final store = await openStore(directory: p.join(docsDir.path, "breeze_db"));
    return ObjectBox._create(store);
  }

  Box<CollectComic> get collectBox => _collectComic;

  Box<ComicHistory> get historyBox => _comicHistory;

  Box<ComicDownload> get downloadBox => _comicDownload;
}
