// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_all_info_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicAllInfoJsonImpl _$$ComicAllInfoJsonImplFromJson(
  Map<String, dynamic> json,
) => _$ComicAllInfoJsonImpl(
  isBanned: json['is_banned'] as bool,
  isLock: json['is_lock'] as bool,
  isLogin: json['is_login'] as bool,
  isMobileBind: json['is_mobile_bind'] as bool,
  isVip: json['is_vip'] as bool,
  comic: ComicAllInfoJsonComic.fromJson(json['comic'] as Map<String, dynamic>),
  popular: (json['popular'] as num).toInt(),
  groups:
      (json['groups'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$ComicAllInfoJsonImplToJson(
  _$ComicAllInfoJsonImpl instance,
) => <String, dynamic>{
  'is_banned': instance.isBanned,
  'is_lock': instance.isLock,
  'is_login': instance.isLogin,
  'is_mobile_bind': instance.isMobileBind,
  'is_vip': instance.isVip,
  'comic': instance.comic,
  'popular': instance.popular,
  'groups': instance.groups,
};

_$ComicAllInfoJsonComicImpl _$$ComicAllInfoJsonComicImplFromJson(
  Map<String, dynamic> json,
) => _$ComicAllInfoJsonComicImpl(
  uuid: json['uuid'] as String,
  b404: json['b_404'] as bool,
  bHidden: json['b_hidden'] as bool,
  ban: (json['ban'] as num).toInt(),
  name: json['name'] as String,
  alias: json['alias'] as String,
  pathWord: json['path_word'] as String,
  closeComment: json['close_comment'] as bool,
  closeRoast: json['close_roast'] as bool,
  freeType: FreeType.fromJson(json['free_type'] as Map<String, dynamic>),
  restrict: FreeType.fromJson(json['restrict'] as Map<String, dynamic>),
  reclass: FreeType.fromJson(json['reclass'] as Map<String, dynamic>),
  females: json['females'] as List<dynamic>,
  males: json['males'] as List<dynamic>,
  clubs: json['clubs'] as List<dynamic>,
  imgType: (json['img_type'] as num).toInt(),
  seoBaidu: json['seo_baidu'] as String,
  region: FreeType.fromJson(json['region'] as Map<String, dynamic>),
  status: FreeType.fromJson(json['status'] as Map<String, dynamic>),
  author:
      (json['author'] as List<dynamic>)
          .map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
  theme:
      (json['theme'] as List<dynamic>)
          .map((e) => Author.fromJson(e as Map<String, dynamic>))
          .toList(),
  parodies: json['parodies'] as List<dynamic>,
  brief: json['brief'] as String,
  datetimeUpdated: DateTime.parse(json['datetime_updated'] as String),
  cover: json['cover'] as String,
  lastChapter: LastChapter.fromJson(
    json['last_chapter'] as Map<String, dynamic>,
  ),
  popular: (json['popular'] as num).toInt(),
);

Map<String, dynamic> _$$ComicAllInfoJsonComicImplToJson(
  _$ComicAllInfoJsonComicImpl instance,
) => <String, dynamic>{
  'uuid': instance.uuid,
  'b_404': instance.b404,
  'b_hidden': instance.bHidden,
  'ban': instance.ban,
  'name': instance.name,
  'alias': instance.alias,
  'path_word': instance.pathWord,
  'close_comment': instance.closeComment,
  'close_roast': instance.closeRoast,
  'free_type': instance.freeType,
  'restrict': instance.restrict,
  'reclass': instance.reclass,
  'females': instance.females,
  'males': instance.males,
  'clubs': instance.clubs,
  'img_type': instance.imgType,
  'seo_baidu': instance.seoBaidu,
  'region': instance.region,
  'status': instance.status,
  'author': instance.author,
  'theme': instance.theme,
  'parodies': instance.parodies,
  'brief': instance.brief,
  'datetime_updated': instance.datetimeUpdated.toIso8601String(),
  'cover': instance.cover,
  'last_chapter': instance.lastChapter,
  'popular': instance.popular,
};

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
  name: json['name'] as String,
  pathWord: json['path_word'] as String,
);

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{'name': instance.name, 'path_word': instance.pathWord};

_$FreeTypeImpl _$$FreeTypeImplFromJson(Map<String, dynamic> json) =>
    _$FreeTypeImpl(
      display: json['display'] as String,
      value: (json['value'] as num).toInt(),
    );

Map<String, dynamic> _$$FreeTypeImplToJson(_$FreeTypeImpl instance) =>
    <String, dynamic>{'display': instance.display, 'value': instance.value};

_$LastChapterImpl _$$LastChapterImplFromJson(Map<String, dynamic> json) =>
    _$LastChapterImpl(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LastChapterImplToJson(_$LastChapterImpl instance) =>
    <String, dynamic>{'uuid': instance.uuid, 'name': instance.name};

_$GroupImpl _$$GroupImplFromJson(Map<String, dynamic> json) => _$GroupImpl(
  pathWord: json['path_word'] as String,
  count: (json['count'] as num).toInt(),
  name: json['name'] as String,
  chapterList:
      (json['chapter_list'] as List<dynamic>)
          .map((e) => ChapterList.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$$GroupImplToJson(_$GroupImpl instance) =>
    <String, dynamic>{
      'path_word': instance.pathWord,
      'count': instance.count,
      'name': instance.name,
      'chapter_list': instance.chapterList,
    };

_$ChapterListImpl _$$ChapterListImplFromJson(Map<String, dynamic> json) =>
    _$ChapterListImpl(
      chapterInfo: ChapterInfo.fromJson(
        json['chapter_info'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$$ChapterListImplToJson(_$ChapterListImpl instance) =>
    <String, dynamic>{'chapter_info': instance.chapterInfo};

_$ChapterInfoImpl _$$ChapterInfoImplFromJson(Map<String, dynamic> json) =>
    _$ChapterInfoImpl(
      showApp: json['show_app'] as bool,
      isLock: json['is_lock'] as bool,
      isLogin: json['is_login'] as bool,
      isMobileBind: json['is_mobile_bind'] as bool,
      isVip: json['is_vip'] as bool,
      comic: ChapterInfoComic.fromJson(json['comic'] as Map<String, dynamic>),
      chapter: Chapter.fromJson(json['chapter'] as Map<String, dynamic>),
      isBanned: json['is_banned'] as bool,
    );

Map<String, dynamic> _$$ChapterInfoImplToJson(_$ChapterInfoImpl instance) =>
    <String, dynamic>{
      'show_app': instance.showApp,
      'is_lock': instance.isLock,
      'is_login': instance.isLogin,
      'is_mobile_bind': instance.isMobileBind,
      'is_vip': instance.isVip,
      'comic': instance.comic,
      'chapter': instance.chapter,
      'is_banned': instance.isBanned,
    };

_$ChapterImpl _$$ChapterImplFromJson(Map<String, dynamic> json) =>
    _$ChapterImpl(
      index: (json['index'] as num).toInt(),
      uuid: json['uuid'] as String,
      count: (json['count'] as num).toInt(),
      ordered: (json['ordered'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      name: json['name'] as String,
      comicId: json['comic_id'] as String,
      comicPathWord: json['comic_path_word'] as String,
      groupId: json['group_id'] as String,
      groupPathWord: json['group_path_word'] as String,
      type: (json['type'] as num).toInt(),
      imgType: (json['img_type'] as num).toInt(),
      news: json['news'] as String,
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      prev: json['prev'] as String,
      next: json['next'] as String,
      contents:
          (json['contents'] as List<dynamic>).map((e) => e as String).toList(),
      isLong: json['is_long'] as bool,
    );

Map<String, dynamic> _$$ChapterImplToJson(_$ChapterImpl instance) =>
    <String, dynamic>{
      'index': instance.index,
      'uuid': instance.uuid,
      'count': instance.count,
      'ordered': instance.ordered,
      'size': instance.size,
      'name': instance.name,
      'comic_id': instance.comicId,
      'comic_path_word': instance.comicPathWord,
      'group_id': instance.groupId,
      'group_path_word': instance.groupPathWord,
      'type': instance.type,
      'img_type': instance.imgType,
      'news': instance.news,
      'datetime_created': instance.datetimeCreated.toIso8601String(),
      'prev': instance.prev,
      'next': instance.next,
      'contents': instance.contents,
      'is_long': instance.isLong,
    };

_$ChapterInfoComicImpl _$$ChapterInfoComicImplFromJson(
  Map<String, dynamic> json,
) => _$ChapterInfoComicImpl(
  name: json['name'] as String,
  uuid: json['uuid'] as String,
  pathWord: json['path_word'] as String,
  restrict: FreeType.fromJson(json['restrict'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ChapterInfoComicImplToJson(
  _$ChapterInfoComicImpl instance,
) => <String, dynamic>{
  'name': instance.name,
  'uuid': instance.uuid,
  'path_word': instance.pathWord,
  'restrict': instance.restrict,
};
