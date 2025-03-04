class ComicAllInfo {
  bool isBanned;
  bool isLock;
  bool isLogin;
  bool isMobileBind;
  bool isVip;
  ComicAllInfoComic comic;
  int popular;
  List<Group> groups;

  ComicAllInfo(
    this.isBanned,
    this.isLock,
    this.isLogin,
    this.isMobileBind,
    this.isVip,
    this.comic,
    this.popular,
    this.groups,
  );

  Map<String, dynamic> toJson() => {
    'is_banned': isBanned,
    'is_lock': isLock,
    'is_login': isLogin,
    'is_mobile_bind': isMobileBind,
    'is_vip': isVip,
    'comic': comic.toJson(),
    'popular': popular,
    'groups': groups.map((group) => group.toJson()).toList(),
  };

  factory ComicAllInfo.fromJson(Map<String, dynamic> json) {
    return ComicAllInfo(
      json['is_banned'] ?? false,
      json['is_lock'] ?? false,
      json['is_login'] ?? false,
      json['is_mobile_bind'] ?? false,
      json['is_vip'] ?? false,
      ComicAllInfoComic.fromJson(json['comic']),
      json['popular'] ?? 0,
      (json['groups'] as List).map((group) => Group.fromJson(group)).toList(),
    );
  }
}

class ComicAllInfoComic {
  String uuid;
  bool b404;
  bool bHidden;
  int ban;
  String name;
  String alias;
  String pathWord;
  bool closeComment;
  bool closeRoast;
  FreeType freeType;
  FreeType restrict;
  FreeType reclass;
  List<dynamic> females;
  List<dynamic> males;
  List<dynamic> clubs;
  int imgType;
  String seoBaidu;
  FreeType region;
  FreeType status;
  List<Author> author;
  List<Author> theme;
  List<dynamic> parodies;
  String brief;
  DateTime datetimeUpdated;
  String cover;
  LastChapter lastChapter;
  int popular;

  ComicAllInfoComic(
    this.uuid,
    this.b404,
    this.bHidden,
    this.ban,
    this.name,
    this.alias,
    this.pathWord,
    this.closeComment,
    this.closeRoast,
    this.freeType,
    this.restrict,
    this.reclass,
    this.females,
    this.males,
    this.clubs,
    this.imgType,
    this.seoBaidu,
    this.region,
    this.status,
    this.author,
    this.theme,
    this.parodies,
    this.brief,
    this.datetimeUpdated,
    this.cover,
    this.lastChapter,
    this.popular,
  );

  Map<String, dynamic> toJson() => {
    'uuid': uuid,
    'b_404': b404,
    'b_hidden': bHidden,
    'ban': ban,
    'name': name,
    'alias': alias,
    'path_word': pathWord,
    'close_comment': closeComment,
    'close_roast': closeRoast,
    'free_type': freeType.toJson(),
    'restrict': restrict.toJson(),
    'reclass': reclass.toJson(),
    'females': females,
    'males': males,
    'clubs': clubs,
    'img_type': imgType,
    'seo_baidu': seoBaidu,
    'region': region.toJson(),
    'status': status.toJson(),
    'author': author.map((a) => a.toJson()).toList(),
    'theme': theme.map((t) => t.toJson()).toList(),
    'parodies': parodies,
    'brief': brief,
    'datetime_updated': datetimeUpdated.toIso8601String(),
    'cover': cover,
    'last_chapter': lastChapter.toJson(),
    'popular': popular,
  };

  factory ComicAllInfoComic.fromJson(Map<String, dynamic> json) {
    return ComicAllInfoComic(
      json['uuid'] ?? '',
      json['b_404'] ?? false,
      json['b_hidden'] ?? false,
      json['ban'] ?? 0,
      json['name'] ?? '',
      json['alias'] ?? '',
      json['path_word'] ?? '',
      json['close_comment'] ?? false,
      json['close_roast'] ?? false,
      FreeType.fromJson(json['free_type']),
      FreeType.fromJson(json['restrict']),
      FreeType.fromJson(json['reclass']),
      json['females'] ?? [],
      json['males'] ?? [],
      json['clubs'] ?? [],
      json['img_type'] ?? 0,
      json['seo_baidu'] ?? '',
      FreeType.fromJson(json['region']),
      FreeType.fromJson(json['status']),
      (json['author'] as List).map((a) => Author.fromJson(a)).toList(),
      (json['theme'] as List).map((t) => Author.fromJson(t)).toList(),
      json['parodies'] ?? [],
      json['brief'] ?? '',
      DateTime.parse(json['datetime_updated']),
      json['cover'] ?? '',
      LastChapter.fromJson(json['last_chapter']),
      json['popular'] ?? 0,
    );
  }
}

class Author {
  String name;
  String pathWord;

  Author(this.name, this.pathWord);

  Map<String, dynamic> toJson() => {'name': name, 'path_word': pathWord};

  factory Author.fromJson(Map<String, dynamic> json) {
    return Author(json['name'] ?? '', json['path_word'] ?? '');
  }
}

class FreeType {
  String display;
  int value;

  FreeType(this.display, this.value);

  Map<String, dynamic> toJson() => {'display': display, 'value': value};

  factory FreeType.fromJson(Map<String, dynamic> json) {
    return FreeType(json['display'] ?? '', json['value'] ?? 0);
  }
}

class LastChapter {
  String uuid;
  String name;

  LastChapter(this.uuid, this.name);

  Map<String, dynamic> toJson() => {'uuid': uuid, 'name': name};

  factory LastChapter.fromJson(Map<String, dynamic> json) {
    return LastChapter(json['uuid'] ?? '', json['name'] ?? '');
  }
}

class Group {
  String pathWord;
  int count;
  String name;
  List<ChapterList> chapterList;

  Group(this.pathWord, this.count, this.name, this.chapterList);

  Map<String, dynamic> toJson() => {
    'path_word': pathWord,
    'count': count,
    'name': name,
    'chapter_list': chapterList.map((chapter) => chapter.toJson()).toList(),
  };

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      json['path_word'] ?? '',
      json['count'] ?? 0,
      json['name'] ?? '',
      (json['chapter_list'] as List)
          .map((chapter) => ChapterList.fromJson(chapter))
          .toList(),
    );
  }
}

class ChapterList {
  ChapterInfo chapterInfo;

  ChapterList(this.chapterInfo);

  Map<String, dynamic> toJson() => {'chapter_info': chapterInfo.toJson()};

  factory ChapterList.fromJson(Map<String, dynamic> json) {
    return ChapterList(ChapterInfo.fromJson(json['chapter_info']));
  }
}

class ChapterInfo {
  bool showApp;
  bool isLock;
  bool isLogin;
  bool isMobileBind;
  bool isVip;
  ChapterInfoComic comic;
  Chapter chapter;
  bool isBanned;

  ChapterInfo(
    this.showApp,
    this.isLock,
    this.isLogin,
    this.isMobileBind,
    this.isVip,
    this.comic,
    this.chapter,
    this.isBanned,
  );

  Map<String, dynamic> toJson() => {
    'show_app': showApp,
    'is_lock': isLock,
    'is_login': isLogin,
    'is_mobile_bind': isMobileBind,
    'is_vip': isVip,
    'comic': comic.toJson(),
    'chapter': chapter.toJson(),
    'is_banned': isBanned,
  };

  factory ChapterInfo.fromJson(Map<String, dynamic> json) {
    return ChapterInfo(
      json['show_app'] ?? false,
      json['is_lock'] ?? false,
      json['is_login'] ?? false,
      json['is_mobile_bind'] ?? false,
      json['is_vip'] ?? false,
      ChapterInfoComic.fromJson(json['comic']),
      Chapter.fromJson(json['chapter']),
      json['is_banned'] ?? false,
    );
  }
}

class Chapter {
  int index;
  String uuid;
  int count;
  int ordered;
  int size;
  String name;
  String comicId;
  String comicPathWord;
  String groupId;
  String groupPathWord;
  int type;
  int imgType;
  String news;
  DateTime datetimeCreated;
  String prev;
  String next;
  List<String> contents;
  bool isLong;

  Chapter(
    this.index,
    this.uuid,
    this.count,
    this.ordered,
    this.size,
    this.name,
    this.comicId,
    this.comicPathWord,
    this.groupId,
    this.groupPathWord,
    this.type,
    this.imgType,
    this.news,
    this.datetimeCreated,
    this.prev,
    this.next,
    this.contents,
    this.isLong,
  );

  Map<String, dynamic> toJson() => {
    'index': index,
    'uuid': uuid,
    'count': count,
    'ordered': ordered,
    'size': size,
    'name': name,
    'comic_id': comicId,
    'comic_path_word': comicPathWord,
    'group_id': groupId,
    'group_path_word': groupPathWord,
    'type': type,
    'img_type': imgType,
    'news': news,
    'datetime_created': datetimeCreated.toIso8601String(),
    'prev': prev,
    'next': next,
    'contents': contents,
    'is_long': isLong,
  };

  factory Chapter.fromJson(Map<String, dynamic> json) {
    return Chapter(
      json['index'] ?? 0,
      json['uuid'] ?? '',
      json['count'] ?? 0,
      json['ordered'] ?? 0,
      json['size'] ?? 0,
      json['name'] ?? '',
      json['comic_id'] ?? '',
      json['comic_path_word'] ?? '',
      json['group_id'] ?? '',
      json['group_path_word'] ?? '',
      json['type'] ?? 0,
      json['img_type'] ?? 0,
      json['news'] ?? '',
      DateTime.parse(json['datetime_created']),
      json['prev'] ?? '',
      json['next'] ?? '',
      (json['contents'] as List).map((content) => content.toString()).toList(),
      json['is_long'] ?? false,
    );
  }
}

class ChapterInfoComic {
  String name;
  String uuid;
  String pathWord;
  FreeType restrict;

  ChapterInfoComic(this.name, this.uuid, this.pathWord, this.restrict);

  Map<String, dynamic> toJson() => {
    'name': name,
    'uuid': uuid,
    'path_word': pathWord,
    'restrict': restrict.toJson(),
  };

  factory ChapterInfoComic.fromJson(Map<String, dynamic> json) {
    return ChapterInfoComic(
      json['name'] ?? '',
      json['uuid'] ?? '',
      json['path_word'] ?? '',
      FreeType.fromJson(json['restrict']),
    );
  }
}
