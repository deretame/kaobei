// To parse this JSON data, do
//
//     final epsJson = epsJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'eps_json.freezed.dart';
part 'eps_json.g.dart';

EpsJson epsJsonFromJson(String str) => EpsJson.fromJson(json.decode(str));

String epsJsonToJson(EpsJson data) => json.encode(data.toJson());

@freezed
class EpsJson with _$EpsJson {
  const factory EpsJson({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _EpsJson;

  factory EpsJson.fromJson(Map<String, dynamic> json) =>
      _$EpsJsonFromJson(json);
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
    @JsonKey(name: "index") required int index,
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "count") required int count,
    @JsonKey(name: "ordered") required int ordered,
    @JsonKey(name: "size") required int size,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "comic_id") required String comicId,
    @JsonKey(name: "comic_path_word") required String comicPathWord,
    @JsonKey(name: "group_id") required dynamic groupId,
    @JsonKey(name: "group_path_word") required String groupPathWord,
    @JsonKey(name: "type") required int type,
    @JsonKey(name: "img_type") required int imgType,
    @JsonKey(name: "news") required String news,
    @JsonKey(name: "datetime_created") required DateTime datetimeCreated,
    @JsonKey(name: "prev") required String? prev,
    @JsonKey(name: "next") required String next,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}
