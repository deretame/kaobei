// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;
import 'package:kaobei/mobx/string_store.dart' as _i14;
import 'package:kaobei/network/http/http_require.dart' as _i16;
import 'package:kaobei/page/bookshelf/view/bookshelf_page.dart' as _i1;
import 'package:kaobei/page/comic/view/comic_page.dart' as _i3;
import 'package:kaobei/page/comic_info/comic_info.dart' as _i12;
import 'package:kaobei/page/comic_info/json/info/comic_info_json.dart' as _i13;
import 'package:kaobei/page/comic_info/models/comic_info.dart' as _i15;
import 'package:kaobei/page/comic_info/view/comic_info.dart' as _i2;
import 'package:kaobei/page/comic_read/view/comic_read.dart' as _i4;
import 'package:kaobei/page/comic_tag_author_search/view/comic_tag_author_search.dart'
    as _i9;
import 'package:kaobei/page/download/download.dart' as _i5;
import 'package:kaobei/page/more/view/more_page.dart' as _i6;
import 'package:kaobei/page/navigation_bar.dart' as _i7;
import 'package:kaobei/page/search_result/view/search_result.dart' as _i8;

/// generated route for
/// [_i1.BookShelf]
class BookShelf extends _i10.PageRouteInfo<BookShelfArgs> {
  BookShelf({
    _i11.Key? key,
    required _i11.ScrollController collectScrollController,
    required _i11.ScrollController historyScrollController,
    required _i11.ScrollController downloadScrollController,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         BookShelf.name,
         args: BookShelfArgs(
           key: key,
           collectScrollController: collectScrollController,
           historyScrollController: historyScrollController,
           downloadScrollController: downloadScrollController,
         ),
         initialChildren: children,
       );

  static const String name = 'BookShelf';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BookShelfArgs>();
      return _i1.BookShelf(
        key: args.key,
        collectScrollController: args.collectScrollController,
        historyScrollController: args.historyScrollController,
        downloadScrollController: args.downloadScrollController,
      );
    },
  );
}

class BookShelfArgs {
  const BookShelfArgs({
    this.key,
    required this.collectScrollController,
    required this.historyScrollController,
    required this.downloadScrollController,
  });

  final _i11.Key? key;

  final _i11.ScrollController collectScrollController;

  final _i11.ScrollController historyScrollController;

  final _i11.ScrollController downloadScrollController;

  @override
  String toString() {
    return 'BookShelfArgs{key: $key, collectScrollController: $collectScrollController, historyScrollController: $historyScrollController, downloadScrollController: $downloadScrollController}';
  }
}

/// generated route for
/// [_i2.ComicInfoPage]
class ComicInfoRoute extends _i10.PageRouteInfo<ComicInfoRouteArgs> {
  ComicInfoRoute({
    _i11.Key? key,
    required String comicId,
    _i12.ComicReadType? comicReadType,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         ComicInfoRoute.name,
         args: ComicInfoRouteArgs(
           key: key,
           comicId: comicId,
           comicReadType: comicReadType,
         ),
         initialChildren: children,
       );

  static const String name = 'ComicInfoRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ComicInfoRouteArgs>();
      return _i2.ComicInfoPage(
        key: args.key,
        comicId: args.comicId,
        comicReadType: args.comicReadType,
      );
    },
  );
}

class ComicInfoRouteArgs {
  const ComicInfoRouteArgs({
    this.key,
    required this.comicId,
    this.comicReadType,
  });

  final _i11.Key? key;

  final String comicId;

  final _i12.ComicReadType? comicReadType;

  @override
  String toString() {
    return 'ComicInfoRouteArgs{key: $key, comicId: $comicId, comicReadType: $comicReadType}';
  }
}

/// generated route for
/// [_i3.ComicPage]
class ComicRoute extends _i10.PageRouteInfo<void> {
  const ComicRoute({List<_i10.PageRouteInfo>? children})
    : super(ComicRoute.name, initialChildren: children);

  static const String name = 'ComicRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i3.ComicPage();
    },
  );
}

/// generated route for
/// [_i4.ComicReadPage]
class ComicReadRoute extends _i10.PageRouteInfo<ComicReadRouteArgs> {
  ComicReadRoute({
    _i11.Key? key,
    required String chapterId,
    required _i13.ComicInfoJson comicInfo,
    required _i14.StringStore stringStore,
    _i15.ComicReadType? comicReadType,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         ComicReadRoute.name,
         args: ComicReadRouteArgs(
           key: key,
           chapterId: chapterId,
           comicInfo: comicInfo,
           stringStore: stringStore,
           comicReadType: comicReadType,
         ),
         initialChildren: children,
       );

  static const String name = 'ComicReadRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ComicReadRouteArgs>();
      return _i4.ComicReadPage(
        key: args.key,
        chapterId: args.chapterId,
        comicInfo: args.comicInfo,
        stringStore: args.stringStore,
        comicReadType: args.comicReadType,
      );
    },
  );
}

class ComicReadRouteArgs {
  const ComicReadRouteArgs({
    this.key,
    required this.chapterId,
    required this.comicInfo,
    required this.stringStore,
    this.comicReadType,
  });

  final _i11.Key? key;

  final String chapterId;

  final _i13.ComicInfoJson comicInfo;

  final _i14.StringStore stringStore;

  final _i15.ComicReadType? comicReadType;

  @override
  String toString() {
    return 'ComicReadRouteArgs{key: $key, chapterId: $chapterId, comicInfo: $comicInfo, stringStore: $stringStore, comicReadType: $comicReadType}';
  }
}

/// generated route for
/// [_i5.DownloadPage]
class DownloadRoute extends _i10.PageRouteInfo<DownloadRouteArgs> {
  DownloadRoute({
    _i11.Key? key,
    required _i15.ComicInfo comicInfo,
    required String comicInfoJsonStr,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         DownloadRoute.name,
         args: DownloadRouteArgs(
           key: key,
           comicInfo: comicInfo,
           comicInfoJsonStr: comicInfoJsonStr,
         ),
         initialChildren: children,
       );

  static const String name = 'DownloadRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DownloadRouteArgs>();
      return _i5.DownloadPage(
        key: args.key,
        comicInfo: args.comicInfo,
        comicInfoJsonStr: args.comicInfoJsonStr,
      );
    },
  );
}

class DownloadRouteArgs {
  const DownloadRouteArgs({
    this.key,
    required this.comicInfo,
    required this.comicInfoJsonStr,
  });

  final _i11.Key? key;

  final _i15.ComicInfo comicInfo;

  final String comicInfoJsonStr;

  @override
  String toString() {
    return 'DownloadRouteArgs{key: $key, comicInfo: $comicInfo, comicInfoJsonStr: $comicInfoJsonStr}';
  }
}

/// generated route for
/// [_i6.MorePage]
class MoreRoute extends _i10.PageRouteInfo<void> {
  const MoreRoute({List<_i10.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i6.MorePage();
    },
  );
}

/// generated route for
/// [_i7.NavigationBarPage]
class NavigationBarRoute extends _i10.PageRouteInfo<void> {
  const NavigationBarRoute({List<_i10.PageRouteInfo>? children})
    : super(NavigationBarRoute.name, initialChildren: children);

  static const String name = 'NavigationBarRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i7.NavigationBarPage();
    },
  );
}

/// generated route for
/// [_i8.SearchResultPage]
class SearchResultRoute extends _i10.PageRouteInfo<void> {
  const SearchResultRoute({List<_i10.PageRouteInfo>? children})
    : super(SearchResultRoute.name, initialChildren: children);

  static const String name = 'SearchResultRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      return const _i8.SearchResultPage();
    },
  );
}

/// generated route for
/// [_i9.TagAuthorSearchPage]
class TagAuthorSearchRoute
    extends _i10.PageRouteInfo<TagAuthorSearchRouteArgs> {
  TagAuthorSearchRoute({
    _i11.Key? key,
    required String name,
    required String pathWord,
    required _i16.QType qType,
    List<_i10.PageRouteInfo>? children,
  }) : super(
         TagAuthorSearchRoute.name,
         args: TagAuthorSearchRouteArgs(
           key: key,
           name: name,
           pathWord: pathWord,
           qType: qType,
         ),
         initialChildren: children,
       );

  static const String name = 'TagAuthorSearchRoute';

  static _i10.PageInfo page = _i10.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TagAuthorSearchRouteArgs>();
      return _i9.TagAuthorSearchPage(
        key: args.key,
        name: args.name,
        pathWord: args.pathWord,
        qType: args.qType,
      );
    },
  );
}

class TagAuthorSearchRouteArgs {
  const TagAuthorSearchRouteArgs({
    this.key,
    required this.name,
    required this.pathWord,
    required this.qType,
  });

  final _i11.Key? key;

  final String name;

  final String pathWord;

  final _i16.QType qType;

  @override
  String toString() {
    return 'TagAuthorSearchRouteArgs{key: $key, name: $name, pathWord: $pathWord, qType: $qType}';
  }
}
