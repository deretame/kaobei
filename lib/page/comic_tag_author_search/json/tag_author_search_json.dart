// To parse this JSON data, do
//
//     final tagAuthorSearchJson = tagAuthorSearchJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'tag_author_search_json.freezed.dart';
part 'tag_author_search_json.g.dart';

TagAuthorSearchJson tagAuthorSearchJsonFromJson(String str) =>
    TagAuthorSearchJson.fromJson(json.decode(str));

String tagAuthorSearchJsonToJson(TagAuthorSearchJson data) =>
    json.encode(data.toJson());

@freezed
class TagAuthorSearchJson with _$TagAuthorSearchJson {
  const factory TagAuthorSearchJson({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _TagAuthorSearchJson;

  factory TagAuthorSearchJson.fromJson(Map<String, dynamic> json) =>
      _$TagAuthorSearchJsonFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    @JsonKey(name: "total") required int total,
    @JsonKey(name: "list") required List<ListElement> list,
    @JsonKey(name: "limit") required int limit,
    @JsonKey(name: "offset") required int offset,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class ListElement with _$ListElement {
  const factory ListElement({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "path_word") required String pathWord,
    @JsonKey(name: "free_type") required FreeType freeType,
    @JsonKey(name: "females") required List<dynamic> females,
    @JsonKey(name: "males") required List<dynamic> males,
    @JsonKey(name: "author") required List<Author> author,
    @JsonKey(name: "theme") required List<dynamic> theme,
    @JsonKey(name: "cover") required String cover,
    @JsonKey(name: "popular") required int popular,
    @JsonKey(name: "datetime_updated") required String datetimeUpdated,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "path_word") required String pathWord,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}

@freezed
class FreeType with _$FreeType {
  const factory FreeType({
    @JsonKey(name: "display") required String display,
    @JsonKey(name: "value") required int value,
  }) = _FreeType;

  factory FreeType.fromJson(Map<String, dynamic> json) =>
      _$FreeTypeFromJson(json);
}
