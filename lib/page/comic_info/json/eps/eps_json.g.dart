// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'eps_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EpsJsonImpl _$$EpsJsonImplFromJson(Map<String, dynamic> json) =>
    _$EpsJsonImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      results: Results.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EpsJsonImplToJson(_$EpsJsonImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      list:
          (json['list'] as List<dynamic>)
              .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
              .toList(),
      total: (json['total'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'list': instance.list,
      'total': instance.total,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
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
      prev: json['prev'] as String?,
      next: json['next'] as String,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
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
    };
