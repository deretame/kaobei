// To parse this JSON data, do
//
//     final chapterCommentsJson = chapterCommentsJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'chapter_comments_json.freezed.dart';
part 'chapter_comments_json.g.dart';

ChapterCommentsJson chapterCommentsJsonFromJson(String str) =>
    ChapterCommentsJson.fromJson(json.decode(str));

String chapterCommentsJsonToJson(ChapterCommentsJson data) =>
    json.encode(data.toJson());

@freezed
class ChapterCommentsJson with _$ChapterCommentsJson {
  const factory ChapterCommentsJson({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _ChapterCommentsJson;

  factory ChapterCommentsJson.fromJson(Map<String, dynamic> json) =>
      _$ChapterCommentsJsonFromJson(json);
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
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "create_at") required String createAt,
    @JsonKey(name: "user_id") required String userId,
    @JsonKey(name: "user_name") required String userName,
    @JsonKey(name: "user_avatar") required String userAvatar,
    @JsonKey(name: "comment") required String comment,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}
