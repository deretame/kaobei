// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tag_author_search_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TagAuthorSearchJsonImpl _$$TagAuthorSearchJsonImplFromJson(
  Map<String, dynamic> json,
) => _$TagAuthorSearchJsonImpl(
  code: (json['code'] as num).toInt(),
  message: json['message'] as String,
  results: Results.fromJson(json['results'] as Map<String, dynamic>),
);

Map<String, dynamic> _$$TagAuthorSearchJsonImplToJson(
  _$TagAuthorSearchJsonImpl instance,
) => <String, dynamic>{
  'code': instance.code,
  'message': instance.message,
  'results': instance.results,
};

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      total: (json['total'] as num).toInt(),
      list:
          (json['list'] as List<dynamic>)
              .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
              .toList(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      name: json['name'] as String,
      pathWord: json['path_word'] as String,
      freeType: FreeType.fromJson(json['free_type'] as Map<String, dynamic>),
      females: json['females'] as List<dynamic>,
      males: json['males'] as List<dynamic>,
      author:
          (json['author'] as List<dynamic>)
              .map((e) => Author.fromJson(e as Map<String, dynamic>))
              .toList(),
      theme: json['theme'] as List<dynamic>,
      cover: json['cover'] as String,
      popular: (json['popular'] as num).toInt(),
      datetimeUpdated: json['datetime_updated'] as String,
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path_word': instance.pathWord,
      'free_type': instance.freeType,
      'females': instance.females,
      'males': instance.males,
      'author': instance.author,
      'theme': instance.theme,
      'cover': instance.cover,
      'popular': instance.popular,
      'datetime_updated': instance.datetimeUpdated,
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
