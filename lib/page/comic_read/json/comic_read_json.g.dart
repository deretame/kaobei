// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_read_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicReadJsonImpl _$$ComicReadJsonImplFromJson(Map<String, dynamic> json) =>
    _$ComicReadJsonImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      results: Results.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ComicReadJsonImplToJson(_$ComicReadJsonImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      showApp: json['show_app'] as bool,
      isLock: json['is_lock'] as bool,
      isLogin: json['is_login'] as bool,
      isMobileBind: json['is_mobile_bind'] as bool,
      isVip: json['is_vip'] as bool,
      comic: Comic.fromJson(json['comic'] as Map<String, dynamic>),
      chapter: Chapter.fromJson(json['chapter'] as Map<String, dynamic>),
      isBanned: json['is_banned'] as bool,
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
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
      groupId: json['group_id'],
      groupPathWord: json['group_path_word'] as String,
      type: (json['type'] as num).toInt(),
      imgType: (json['img_type'] as num).toInt(),
      news: json['news'] as String,
      datetimeCreated: DateTime.parse(json['datetime_created'] as String),
      prev: json['prev'] as String,
      next: json['next'] as String,
      contents:
          (json['contents'] as List<dynamic>)
              .map((e) => Content.fromJson(e as Map<String, dynamic>))
              .toList(),
      words:
          (json['words'] as List<dynamic>)
              .map((e) => (e as num).toInt())
              .toList(),
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
      'words': instance.words,
      'is_long': instance.isLong,
    };

_$ContentImpl _$$ContentImplFromJson(Map<String, dynamic> json) =>
    _$ContentImpl(url: json['url'] as String);

Map<String, dynamic> _$$ContentImplToJson(_$ContentImpl instance) =>
    <String, dynamic>{'url': instance.url};

_$ComicImpl _$$ComicImplFromJson(Map<String, dynamic> json) => _$ComicImpl(
  name: json['name'] as String,
  uuid: json['uuid'] as String,
  pathWord: json['path_word'] as String,
  restrict: Restrict.fromJson(json['restrict'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$ComicImplToJson(_$ComicImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'uuid': instance.uuid,
      'path_word': instance.pathWord,
      'restrict': instance.restrict,
    };

_$RestrictImpl _$$RestrictImplFromJson(Map<String, dynamic> json) =>
    _$RestrictImpl(
      value: (json['value'] as num).toInt(),
      display: json['display'] as String,
    );

Map<String, dynamic> _$$RestrictImplToJson(_$RestrictImpl instance) =>
    <String, dynamic>{'value': instance.value, 'display': instance.display};
