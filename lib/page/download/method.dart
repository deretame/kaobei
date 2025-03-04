import '../comic_info/models/comic_info.dart';
import '../comic_read/json/comic_read_json.dart';
import 'comic_all_info.dart' as comic_all_info;

comic_all_info.ComicAllInfo initComicAllInfo(ComicInfo comicInfo) {
  var comicResult = comicInfo.info.results;
  var comicBaseInfo = comicResult.comic;

  var comicAllInfo = getComicAllInfo();

  comicAllInfo
    ..isBanned = comicResult.isBanned
    ..isLock = comicResult.isLock
    ..isLogin = comicResult.isLogin
    ..isMobileBind = comicResult.isMobileBind
    ..isVip = comicResult.isVip
    ..popular = comicResult.popular;

  comicAllInfo.comic
    ..uuid = comicBaseInfo.uuid
    ..b404 = comicBaseInfo.b404
    ..bHidden = comicBaseInfo.bHidden
    ..ban = comicBaseInfo.ban
    ..name = comicBaseInfo.name
    ..alias = comicBaseInfo.alias
    ..pathWord = comicBaseInfo.pathWord
    ..closeComment = comicBaseInfo.closeComment
    ..closeRoast = comicBaseInfo.closeRoast
    ..freeType = comic_all_info.FreeType(
      comicBaseInfo.freeType.display,
      comicBaseInfo.freeType.value,
    )
    ..restrict = comic_all_info.FreeType(
      comicBaseInfo.restrict.display,
      comicBaseInfo.restrict.value,
    )
    ..reclass = comic_all_info.FreeType(
      comicBaseInfo.reclass.display,
      comicBaseInfo.reclass.value,
    )
    ..females = comicBaseInfo.females
    ..males = comicBaseInfo.males
    ..clubs = comicBaseInfo.clubs
    ..imgType = comicBaseInfo.imgType
    ..seoBaidu = comicBaseInfo.seoBaidu
    ..region = comic_all_info.FreeType(
      comicBaseInfo.region.display,
      comicBaseInfo.region.value,
    )
    ..status = comic_all_info.FreeType(
      comicBaseInfo.status.display,
      comicBaseInfo.status.value,
    )
    ..author =
        comicBaseInfo.author
            .map((e) => comic_all_info.Author(e.name, e.pathWord))
            .toList()
    ..theme =
        comicBaseInfo.theme
            .map((e) => comic_all_info.Author(e.name, e.pathWord))
            .toList()
    ..parodies = comicBaseInfo.parodies
    ..brief = comicBaseInfo.brief
    ..datetimeUpdated = comicBaseInfo.datetimeUpdated
    ..cover = comicBaseInfo.cover
    ..popular = comicBaseInfo.popular;

  var groups = comicInfo.groups;

  comicAllInfo.groups =
      groups
          .map((e) => comic_all_info.Group(e.pathWord, e.count, e.name, []))
          .toList();

  return comicAllInfo;
}

comic_all_info.ComicAllInfo getComicAllInfo() {
  comic_all_info.ComicAllInfo comicAllInfo = comic_all_info.ComicAllInfo(
    false,
    // isBanned
    false,
    // isLock
    false,
    // isLogin
    false,
    // isMobileBind
    false,
    // isVip
    comic_all_info.ComicAllInfoComic(
      '',
      // uuid
      false,
      // b404
      false,
      // bHidden
      0,
      // ban
      '',
      // name
      '',
      // alias
      '',
      // pathWord
      false,
      // closeComment
      false,
      // closeRoast
      comic_all_info.FreeType('', 0),
      // freeType
      comic_all_info.FreeType('', 0),
      // restrict
      comic_all_info.FreeType('', 0),
      // reclass
      [],
      // females
      [],
      // males
      [],
      // clubs
      0,
      // imgType
      '',
      // seoBaidu
      comic_all_info.FreeType('', 0),
      // region
      comic_all_info.FreeType('', 0),
      // status
      [],
      // author
      [],
      // theme
      [],
      // parodies
      '',
      // brief
      DateTime.now(),
      // datetimeUpdated
      '',
      // cover
      comic_all_info.LastChapter('', ''),
      // lastChapter
      0, // popular
    ),
    0,
    // popular
    [], // groups
  );
  return comicAllInfo;
}

comic_all_info.ChapterList initChapter(ComicReadJson comicReadJson) {
  var chapterInfo = comicReadJson.results;
  var chapterList = getChapterInfo();

  chapterList.chapterInfo
    ..showApp = chapterInfo.showApp
    ..isLock = chapterInfo.isLock
    ..isLogin = chapterInfo.isLogin
    ..isMobileBind = chapterInfo.isMobileBind
    ..isVip = chapterInfo.isVip
    ..isBanned = chapterInfo.isBanned;

  chapterList.chapterInfo.comic
    ..name = chapterInfo.comic.name
    ..uuid = chapterInfo.comic.uuid
    ..pathWord = chapterInfo.comic.pathWord
    ..restrict = comic_all_info.FreeType(
      chapterInfo.comic.restrict.display,
      chapterInfo.comic.restrict.value,
    );

  List<String> sortedUrls =
      chapterInfo.chapter.contents.map((content) => content.url).toList()
        ..sort();
  chapterList.chapterInfo.chapter
    ..index = chapterInfo.chapter.index
    ..uuid = chapterInfo.chapter.uuid
    ..count = chapterInfo.chapter.count
    ..ordered = chapterInfo.chapter.ordered
    ..size = chapterInfo.chapter.size
    ..name = chapterInfo.chapter.name
    ..comicId = chapterInfo.chapter.comicId
    ..comicPathWord = chapterInfo.chapter.comicPathWord
    ..groupId = chapterInfo.chapter.groupId
    ..groupPathWord = chapterInfo.chapter.groupPathWord
    ..type = chapterInfo.chapter.type
    ..imgType = chapterInfo.chapter.imgType
    ..news = chapterInfo.chapter.news
    ..datetimeCreated = chapterInfo.chapter.datetimeCreated
    ..prev = chapterInfo.chapter.prev
    ..next = chapterInfo.chapter.next
    ..contents = sortedUrls
    ..isLong = chapterInfo.chapter.isLong;

  return chapterList;
}

comic_all_info.ChapterList getChapterInfo() {
  // 创建 ChapterInfoComic 对象
  var chapterInfoComic = comic_all_info.ChapterInfoComic(
    'Comic Name', // name
    'comic-uuid', // uuid
    'comic-path-word', // pathWord
    comic_all_info.FreeType('Free', 0), // restrict
  );

  // 创建 Chapter 对象
  var chapter = comic_all_info.Chapter(
    1,
    // index
    'chapter-uuid',
    // uuid
    10,
    // count
    1,
    // ordered
    100,
    // size
    'Chapter Name',
    // name
    'comic-id',
    // comicId
    'comic-path-word',
    // comicPathWord
    'group-id',
    // groupId
    'group-path-word',
    // groupPathWord
    1,
    // type
    1,
    // imgType
    'news',
    // news
    DateTime.now(),
    // datetimeCreated
    'prev',
    // prev
    'next',
    // next
    ['content1', 'content2'],
    // contents
    true, // isLong
  );

  // 创建 ChapterInfo 对象
  var chapterInfo = comic_all_info.ChapterInfo(
    true,
    // showApp
    false,
    // isLock
    true,
    // isLogin
    false,
    // isMobileBind
    true,
    // isVip
    chapterInfoComic,
    // comic
    chapter,
    // chapter
    false, // isBanned
  );

  // 创建 ChapterList 对象
  var chapterList = comic_all_info.ChapterList(chapterInfo);

  return chapterList;
}
