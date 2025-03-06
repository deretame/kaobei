// To parse this JSON data, do
//
//     final commentJson = commentJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment_json.freezed.dart';
part 'comment_json.g.dart';

CommentJson commentJsonFromJson(String str) =>
    CommentJson.fromJson(json.decode(str));

String commentJsonToJson(CommentJson data) => json.encode(data.toJson());

@freezed
class CommentJson with _$CommentJson {
  const factory CommentJson({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _CommentJson;

  factory CommentJson.fromJson(Map<String, dynamic> json) =>
      _$CommentJsonFromJson(json);
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
    @JsonKey(name: "count") required int count,
    @JsonKey(name: "parent_id") required dynamic parentId,
    @JsonKey(name: "parent_user_id") required dynamic parentUserId,
    @JsonKey(name: "parent_user_name") required dynamic parentUserName,
  }) = _ListElement;

  factory ListElement.fromJson(Map<String, dynamic> json) =>
      _$ListElementFromJson(json);
}
