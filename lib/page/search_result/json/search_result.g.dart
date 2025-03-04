// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SearchResultImpl _$$SearchResultImplFromJson(Map<String, dynamic> json) =>
    _$SearchResultImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      results: Results.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SearchResultImplToJson(_$SearchResultImpl instance) =>
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
      name: json['name'] as String,
      alias: json['alias'] as String,
      pathWord: json['path_word'] as String,
      cover: json['cover'] as String,
      ban: (json['ban'] as num).toInt(),
      imgType: (json['img_type'] as num).toInt(),
      author:
          (json['author'] as List<dynamic>)
              .map((e) => Author.fromJson(e as Map<String, dynamic>))
              .toList(),
      popular: (json['popular'] as num).toInt(),
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'alias': instance.alias,
      'path_word': instance.pathWord,
      'cover': instance.cover,
      'ban': instance.ban,
      'img_type': instance.imgType,
      'author': instance.author,
      'popular': instance.popular,
    };

_$AuthorImpl _$$AuthorImplFromJson(Map<String, dynamic> json) => _$AuthorImpl(
  name: json['name'] as String,
  alias: json['alias'] as String?,
  pathWord: json['path_word'] as String,
);

Map<String, dynamic> _$$AuthorImplToJson(_$AuthorImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'alias': instance.alias,
      'path_word': instance.pathWord,
    };
