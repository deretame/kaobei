// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:kaobei/mobx/string_store.dart' as _i17;
import 'package:kaobei/network/http/http_require.dart' as _i18;
import 'package:kaobei/page/bookshelf/view/bookshelf_page.dart' as _i1;
import 'package:kaobei/page/chapter_comment/view/chapter_comment.dart' as _i2;
import 'package:kaobei/page/comic/view/comic_page.dart' as _i4;
import 'package:kaobei/page/comic_info/comic_info.dart' as _i15;
import 'package:kaobei/page/comic_info/json/info/comic_info_json.dart' as _i16;
import 'package:kaobei/page/comic_info/models/comic_info.dart' as _i20;
import 'package:kaobei/page/comic_info/view/comic_info.dart' as _i3;
import 'package:kaobei/page/comic_read/view/comic_read.dart' as _i5;
import 'package:kaobei/page/comic_tag_author_search/view/comic_tag_author_search.dart'
    as _i12;
import 'package:kaobei/page/comment/json/comment_json.dart' as _i19;
import 'package:kaobei/page/comment/view/comment.dart' as _i7;
import 'package:kaobei/page/comment/view/comment_children.dart' as _i6;
import 'package:kaobei/page/download/download.dart' as _i8;
import 'package:kaobei/page/more/view/more_page.dart' as _i9;
import 'package:kaobei/page/navigation_bar.dart' as _i10;
import 'package:kaobei/page/search_result/view/search_result.dart' as _i11;

/// generated route for
/// [_i1.BookShelfPage]
class BookShelfRoute extends _i13.PageRouteInfo<void> {
  const BookShelfRoute({List<_i13.PageRouteInfo>? children})
    : super(BookShelfRoute.name, initialChildren: children);

  static const String name = 'BookShelfRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.BookShelfPage();
    },
  );
}

/// generated route for
/// [_i2.ChapterCommentPage]
class ChapterCommentRoute extends _i13.PageRouteInfo<ChapterCommentRouteArgs> {
  ChapterCommentRoute({
    _i14.Key? key,
    required String chapterId,
    required String chapterName,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         ChapterCommentRoute.name,
         args: ChapterCommentRouteArgs(
           key: key,
           chapterId: chapterId,
           chapterName: chapterName,
         ),
         initialChildren: children,
       );

  static const String name = 'ChapterCommentRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChapterCommentRouteArgs>();
      return _i2.ChapterCommentPage(
        key: args.key,
        chapterId: args.chapterId,
        chapterName: args.chapterName,
      );
    },
  );
}

class ChapterCommentRouteArgs {
  const ChapterCommentRouteArgs({
    this.key,
    required this.chapterId,
    required this.chapterName,
  });

  final _i14.Key? key;

  final String chapterId;

  final String chapterName;

  @override
  String toString() {
    return 'ChapterCommentRouteArgs{key: $key, chapterId: $chapterId, chapterName: $chapterName}';
  }
}

/// generated route for
/// [_i3.ComicInfoPage]
class ComicInfoRoute extends _i13.PageRouteInfo<ComicInfoRouteArgs> {
  ComicInfoRoute({
    _i14.Key? key,
    required String comicId,
    _i15.ComicReadType? comicReadType,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ComicInfoRouteArgs>();
      return _i3.ComicInfoPage(
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

  final _i14.Key? key;

  final String comicId;

  final _i15.ComicReadType? comicReadType;

  @override
  String toString() {
    return 'ComicInfoRouteArgs{key: $key, comicId: $comicId, comicReadType: $comicReadType}';
  }
}

/// generated route for
/// [_i4.ComicPage]
class ComicRoute extends _i13.PageRouteInfo<void> {
  const ComicRoute({List<_i13.PageRouteInfo>? children})
    : super(ComicRoute.name, initialChildren: children);

  static const String name = 'ComicRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.ComicPage();
    },
  );
}

/// generated route for
/// [_i5.ComicReadPage]
class ComicReadRoute extends _i13.PageRouteInfo<ComicReadRouteArgs> {
  ComicReadRoute({
    _i14.Key? key,
    required String chapterId,
    required _i16.ComicInfoJson comicInfo,
    required _i17.StringStore stringStore,
    _i15.ComicReadType? comicReadType,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ComicReadRouteArgs>();
      return _i5.ComicReadPage(
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

  final _i14.Key? key;

  final String chapterId;

  final _i16.ComicInfoJson comicInfo;

  final _i17.StringStore stringStore;

  final _i15.ComicReadType? comicReadType;

  @override
  String toString() {
    return 'ComicReadRouteArgs{key: $key, chapterId: $chapterId, comicInfo: $comicInfo, stringStore: $stringStore, comicReadType: $comicReadType}';
  }
}

/// generated route for
/// [_i6.CommentChildrenPage]
class CommentChildrenRoute
    extends _i13.PageRouteInfo<CommentChildrenRouteArgs> {
  CommentChildrenRoute({
    _i14.Key? key,
    required _i18.SearchType type,
    required String comicName,
    required String comicId,
    required String parentId,
    required _i19.ListElement parentComment,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         CommentChildrenRoute.name,
         args: CommentChildrenRouteArgs(
           key: key,
           type: type,
           comicName: comicName,
           comicId: comicId,
           parentId: parentId,
           parentComment: parentComment,
         ),
         initialChildren: children,
       );

  static const String name = 'CommentChildrenRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommentChildrenRouteArgs>();
      return _i6.CommentChildrenPage(
        key: args.key,
        type: args.type,
        comicName: args.comicName,
        comicId: args.comicId,
        parentId: args.parentId,
        parentComment: args.parentComment,
      );
    },
  );
}

class CommentChildrenRouteArgs {
  const CommentChildrenRouteArgs({
    this.key,
    required this.type,
    required this.comicName,
    required this.comicId,
    required this.parentId,
    required this.parentComment,
  });

  final _i14.Key? key;

  final _i18.SearchType type;

  final String comicName;

  final String comicId;

  final String parentId;

  final _i19.ListElement parentComment;

  @override
  String toString() {
    return 'CommentChildrenRouteArgs{key: $key, type: $type, comicName: $comicName, comicId: $comicId, parentId: $parentId, parentComment: $parentComment}';
  }
}

/// generated route for
/// [_i7.CommentPage]
class CommentRoute extends _i13.PageRouteInfo<CommentRouteArgs> {
  CommentRoute({
    _i14.Key? key,
    required _i18.SearchType type,
    required String comicName,
    required String comicId,
    List<_i13.PageRouteInfo>? children,
  }) : super(
         CommentRoute.name,
         args: CommentRouteArgs(
           key: key,
           type: type,
           comicName: comicName,
           comicId: comicId,
         ),
         initialChildren: children,
       );

  static const String name = 'CommentRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CommentRouteArgs>();
      return _i7.CommentPage(
        key: args.key,
        type: args.type,
        comicName: args.comicName,
        comicId: args.comicId,
      );
    },
  );
}

class CommentRouteArgs {
  const CommentRouteArgs({
    this.key,
    required this.type,
    required this.comicName,
    required this.comicId,
  });

  final _i14.Key? key;

  final _i18.SearchType type;

  final String comicName;

  final String comicId;

  @override
  String toString() {
    return 'CommentRouteArgs{key: $key, type: $type, comicName: $comicName, comicId: $comicId}';
  }
}

/// generated route for
/// [_i8.DownloadPage]
class DownloadRoute extends _i13.PageRouteInfo<DownloadRouteArgs> {
  DownloadRoute({
    _i14.Key? key,
    required _i20.ComicInfo comicInfo,
    required String comicInfoJsonStr,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<DownloadRouteArgs>();
      return _i8.DownloadPage(
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

  final _i14.Key? key;

  final _i20.ComicInfo comicInfo;

  final String comicInfoJsonStr;

  @override
  String toString() {
    return 'DownloadRouteArgs{key: $key, comicInfo: $comicInfo, comicInfoJsonStr: $comicInfoJsonStr}';
  }
}

/// generated route for
/// [_i9.MorePage]
class MoreRoute extends _i13.PageRouteInfo<void> {
  const MoreRoute({List<_i13.PageRouteInfo>? children})
    : super(MoreRoute.name, initialChildren: children);

  static const String name = 'MoreRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.MorePage();
    },
  );
}

/// generated route for
/// [_i10.NavigationBarPage]
class NavigationBarRoute extends _i13.PageRouteInfo<void> {
  const NavigationBarRoute({List<_i13.PageRouteInfo>? children})
    : super(NavigationBarRoute.name, initialChildren: children);

  static const String name = 'NavigationBarRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i10.NavigationBarPage();
    },
  );
}

/// generated route for
/// [_i11.SearchResultPage]
class SearchResultRoute extends _i13.PageRouteInfo<void> {
  const SearchResultRoute({List<_i13.PageRouteInfo>? children})
    : super(SearchResultRoute.name, initialChildren: children);

  static const String name = 'SearchResultRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i11.SearchResultPage();
    },
  );
}

/// generated route for
/// [_i12.TagAuthorSearchPage]
class TagAuthorSearchRoute
    extends _i13.PageRouteInfo<TagAuthorSearchRouteArgs> {
  TagAuthorSearchRoute({
    _i14.Key? key,
    required String name,
    required String pathWord,
    required _i18.QType qType,
    List<_i13.PageRouteInfo>? children,
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

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<TagAuthorSearchRouteArgs>();
      return _i12.TagAuthorSearchPage(
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

  final _i14.Key? key;

  final String name;

  final String pathWord;

  final _i18.QType qType;

  @override
  String toString() {
    return 'TagAuthorSearchRouteArgs{key: $key, name: $name, pathWord: $pathWord, qType: $qType}';
  }
}
