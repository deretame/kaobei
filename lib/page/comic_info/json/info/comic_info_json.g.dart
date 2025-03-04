// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comic_info_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ComicInfoJsonImpl _$$ComicInfoJsonImplFromJson(Map<String, dynamic> json) =>
    _$ComicInfoJsonImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      results: Results.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ComicInfoJsonImplToJson(_$ComicInfoJsonImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      isBanned: json['is_banned'] as bool,
      isLock: json['is_lock'] as bool,
      isLogin: json['is_login'] as bool,
      isMobileBind: json['is_mobile_bind'] as bool,
      isVip: json['is_vip'] as bool,
      comic: Comic.fromJson(json['comic'] as Map<String, dynamic>),
      popular: (json['popular'] as num).toInt(),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'is_banned': instance.isBanned,
      'is_lock': instance.isLock,
      'is_login': instance.isLogin,
      'is_mobile_bind': instance.isMobileBind,
      'is_vip': instance.isVip,
      'comic': instance.comic,
      'popular': instance.popular,
    };

_$ComicImpl _$$ComicImplFromJson(Map<String, dynamic> json) => _$ComicImpl(
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

Map<String, dynamic> _$$ComicImplToJson(_$ComicImpl instance) =>
    <String, dynamic>{
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
