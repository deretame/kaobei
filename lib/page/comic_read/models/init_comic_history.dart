import '../../../object_box/model.dart';
import '../../comic_info/json/info/comic_info_json.dart';

ComicHistory initComicHistory(Comic comic) {
  return ComicHistory(
    pathWord: comic.pathWord,
    coverUrl: comic.cover,
    name: comic.name,
    alias: comic.alias,
    region: comic.region.display,
    status: comic.status.display,
    author: comic.author.map((e) => e.name).toList().join("|"),
    theme: comic.theme.map((e) => e.name).toList(),
    description: comic.brief,
    popular: comic.popular,
    lastUpdatedTime: comic.datetimeUpdated,
    deleted: false,
    deleteTime: DateTime(2000, 1, 1, 0, 0, 0).toUtc(),
    lastViewingTime: DateTime.now(),
    chapterId: comic.uuid,
    chapterName: '',
    chapterIndex: 0,
  );
}
