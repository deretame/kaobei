// To parse this JSON data, do
//
//     final comicInfoJson = comicInfoJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_info_json.freezed.dart';
part 'comic_info_json.g.dart';

ComicInfoJson comicInfoJsonFromJson(String str) =>
    ComicInfoJson.fromJson(json.decode(str));

String comicInfoJsonToJson(ComicInfoJson data) => json.encode(data.toJson());

@freezed
class ComicInfoJson with _$ComicInfoJson {
  const factory ComicInfoJson({
    @JsonKey(name: "code") required int code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "results") required Results results,
  }) = _ComicInfoJson;

  factory ComicInfoJson.fromJson(Map<String, dynamic> json) =>
      _$ComicInfoJsonFromJson(json);
}

@freezed
class Results with _$Results {
  const factory Results({
    @JsonKey(name: "is_banned") required bool isBanned,
    @JsonKey(name: "is_lock") required bool isLock,
    @JsonKey(name: "is_login") required bool isLogin,
    @JsonKey(name: "is_mobile_bind") required bool isMobileBind,
    @JsonKey(name: "is_vip") required bool isVip,
    @JsonKey(name: "comic") required Comic comic,
    @JsonKey(name: "popular") required int popular,
  }) = _Results;

  factory Results.fromJson(Map<String, dynamic> json) =>
      _$ResultsFromJson(json);
}

@freezed
class Comic with _$Comic {
  const factory Comic({
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "b_404") required bool b404,
    @JsonKey(name: "b_hidden") required bool bHidden,
    @JsonKey(name: "ban") required int ban,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "alias") required String alias,
    @JsonKey(name: "path_word") required String pathWord,
    @JsonKey(name: "close_comment") required bool closeComment,
    @JsonKey(name: "close_roast") required bool closeRoast,
    @JsonKey(name: "free_type") required FreeType freeType,
    @JsonKey(name: "restrict") required FreeType restrict,
    @JsonKey(name: "reclass") required FreeType reclass,
    @JsonKey(name: "females") required List<dynamic> females,
    @JsonKey(name: "males") required List<dynamic> males,
    @JsonKey(name: "clubs") required List<dynamic> clubs,
    @JsonKey(name: "img_type") required int imgType,
    @JsonKey(name: "seo_baidu") required String seoBaidu,
    @JsonKey(name: "region") required FreeType region,
    @JsonKey(name: "status") required FreeType status,
    @JsonKey(name: "author") required List<Author> author,
    @JsonKey(name: "theme") required List<Author> theme,
    @JsonKey(name: "parodies") required List<dynamic> parodies,
    @JsonKey(name: "brief") required String brief,
    @JsonKey(name: "datetime_updated") required DateTime datetimeUpdated,
    @JsonKey(name: "cover") required String cover,
    @JsonKey(name: "last_chapter") required LastChapter lastChapter,
    @JsonKey(name: "popular") required int popular,
  }) = _Comic;

  factory Comic.fromJson(Map<String, dynamic> json) => _$ComicFromJson(json);
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

@freezed
class LastChapter with _$LastChapter {
  const factory LastChapter({
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "name") required String name,
  }) = _LastChapter;

  factory LastChapter.fromJson(Map<String, dynamic> json) =>
      _$LastChapterFromJson(json);
}
