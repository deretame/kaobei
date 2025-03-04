// To parse this JSON data, do
//
//     final comicAllInfoJson = comicAllInfoJsonFromJson(jsonString);

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'comic_all_info_json.freezed.dart';
part 'comic_all_info_json.g.dart';

ComicAllInfoJson comicAllInfoJsonFromJson(String str) =>
    ComicAllInfoJson.fromJson(json.decode(str));

String comicAllInfoJsonToJson(ComicAllInfoJson data) =>
    json.encode(data.toJson());

@freezed
class ComicAllInfoJson with _$ComicAllInfoJson {
  const factory ComicAllInfoJson({
    @JsonKey(name: "is_banned") required bool isBanned,
    @JsonKey(name: "is_lock") required bool isLock,
    @JsonKey(name: "is_login") required bool isLogin,
    @JsonKey(name: "is_mobile_bind") required bool isMobileBind,
    @JsonKey(name: "is_vip") required bool isVip,
    @JsonKey(name: "comic") required ComicAllInfoJsonComic comic,
    @JsonKey(name: "popular") required int popular,
    @JsonKey(name: "groups") required List<Group> groups,
  }) = _ComicAllInfoJson;

  factory ComicAllInfoJson.fromJson(Map<String, dynamic> json) =>
      _$ComicAllInfoJsonFromJson(json);
}

@freezed
class ComicAllInfoJsonComic with _$ComicAllInfoJsonComic {
  const factory ComicAllInfoJsonComic({
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
  }) = _ComicAllInfoJsonComic;

  factory ComicAllInfoJsonComic.fromJson(Map<String, dynamic> json) =>
      _$ComicAllInfoJsonComicFromJson(json);
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

@freezed
class Group with _$Group {
  const factory Group({
    @JsonKey(name: "path_word") required String pathWord,
    @JsonKey(name: "count") required int count,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "chapter_list") required List<ChapterList> chapterList,
  }) = _Group;

  factory Group.fromJson(Map<String, dynamic> json) => _$GroupFromJson(json);
}

@freezed
class ChapterList with _$ChapterList {
  const factory ChapterList({
    @JsonKey(name: "chapter_info") required ChapterInfo chapterInfo,
  }) = _ChapterList;

  factory ChapterList.fromJson(Map<String, dynamic> json) =>
      _$ChapterListFromJson(json);
}

@freezed
class ChapterInfo with _$ChapterInfo {
  const factory ChapterInfo({
    @JsonKey(name: "show_app") required bool showApp,
    @JsonKey(name: "is_lock") required bool isLock,
    @JsonKey(name: "is_login") required bool isLogin,
    @JsonKey(name: "is_mobile_bind") required bool isMobileBind,
    @JsonKey(name: "is_vip") required bool isVip,
    @JsonKey(name: "comic") required ChapterInfoComic comic,
    @JsonKey(name: "chapter") required Chapter chapter,
    @JsonKey(name: "is_banned") required bool isBanned,
  }) = _ChapterInfo;

  factory ChapterInfo.fromJson(Map<String, dynamic> json) =>
      _$ChapterInfoFromJson(json);
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
    @JsonKey(name: "group_id") required String groupId,
    @JsonKey(name: "group_path_word") required String groupPathWord,
    @JsonKey(name: "type") required int type,
    @JsonKey(name: "img_type") required int imgType,
    @JsonKey(name: "news") required String news,
    @JsonKey(name: "datetime_created") required DateTime datetimeCreated,
    @JsonKey(name: "prev") required String prev,
    @JsonKey(name: "next") required String next,
    @JsonKey(name: "contents") required List<String> contents,
    @JsonKey(name: "is_long") required bool isLong,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}

@freezed
class ChapterInfoComic with _$ChapterInfoComic {
  const factory ChapterInfoComic({
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "uuid") required String uuid,
    @JsonKey(name: "path_word") required String pathWord,
    @JsonKey(name: "restrict") required FreeType restrict,
  }) = _ChapterInfoComic;

  factory ChapterInfoComic.fromJson(Map<String, dynamic> json) =>
      _$ChapterInfoComicFromJson(json);
}
