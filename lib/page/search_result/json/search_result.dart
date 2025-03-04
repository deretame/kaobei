// To parse this JSON data, do
//
//     final searchResult = searchResultFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_result.freezed.dart';
part 'search_result.g.dart';

SearchResult searchResultFromJson(String str) =>
    SearchResult.fromJson(json.decode(str));

String searchResultToJson(SearchResult data) => json.encode(data.toJson());

@freezed
class SearchResult with _$SearchResult {
  const factory SearchResult({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _SearchResult;

  factory SearchResult.fromJson(Map<String, dynamic> json) =>
      _$SearchResultFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    @JsonKey(name: "list") required List<ListElement> list,
    @JsonKey(name: "total") required int total,
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
    @JsonKey(name: "alias") required String alias,
    @JsonKey(name: "path_word") required String pathWord,
    @JsonKey(name: "cover") required String cover,
    @JsonKey(name: "ban") required int ban,
    @JsonKey(name: "img_type") required int imgType,
    @JsonKey(name: "author") required List<Author> author,
    @JsonKey(name: "popular") required int popular,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}

@freezed
class Author with _$Author {
  const factory Author({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "alias") required String? alias,
    @JsonKey(name: "path_word") required String pathWord,
  }) = _Author;

  factory Author.fromJson(Map<String, dynamic> json) => _$AuthorFromJson(json);
}
