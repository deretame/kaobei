// To parse this JSON data, do
//
//     final comicReadJson = comicReadJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_read_json.freezed.dart';
part 'comic_read_json.g.dart';

ComicReadJson comicReadJsonFromJson(String str) =>
    ComicReadJson.fromJson(json.decode(str));

String comicReadJsonToJson(ComicReadJson data) => json.encode(data.toJson());

@freezed
class ComicReadJson with _$ComicReadJson {
  const factory ComicReadJson({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _ComicReadJson;

  factory ComicReadJson.fromJson(Map<String, dynamic> json) =>
      _$ComicReadJsonFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    @JsonKey(name: "show_app") required bool showApp,
    @JsonKey(name: "is_lock") required bool isLock,
    @JsonKey(name: "is_login") required bool isLogin,
    @JsonKey(name: "is_mobile_bind") required bool isMobileBind,
    @JsonKey(name: "is_vip") required bool isVip,
    @JsonKey(name: "comic") required Comic comic,
    @JsonKey(name: "chapter") required Chapter chapter,
    @JsonKey(name: "is_banned") required bool isBanned,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class Chapter with _$Chapter {
  const factory Chapter({
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
    @JsonKey(name: "prev") required String prev,
    @JsonKey(name: "next") required String next,
    @JsonKey(name: "contents") required List<Content> contents,
    @JsonKey(name: "words") required List<int> words,
    @JsonKey(name: "is_long") required bool isLong,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
class Content with _$Content {
  const factory Content({@JsonKey(name: "url") required String url}) = _Content;

  factory Content.fromJson(Map<String, dynamic> json) =>
      _$ContentFromJson(json);
}

@freezed
class Comic with _$Comic {
  const factory Comic({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "path_word") required String pathWord,
    @JsonKey(name: "restrict") required Restrict restrict,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
}

@freezed
class Restrict with _$Restrict {
  const factory Restrict({
    @JsonKey(name: "value") required int value,
    @JsonKey(name: "display") required String display,
  }) = _Restrict;

  factory Restrict.fromJson(Map<String, dynamic> json) =>
      _$RestrictFromJson(json);
}
