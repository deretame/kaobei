// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_read_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ComicReadJson _$ComicReadJsonFromJson(Map<String, dynamic> json) {
  return _ComicReadJson.fromJson(json);
}

/// @nodoc
mixin _$ComicReadJson {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  Results get results => throw _privateConstructorUsedError;

  /// Serializes this ComicReadJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComicReadJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComicReadJsonCopyWith<ComicReadJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicReadJsonCopyWith<$Res> {
  factory $ComicReadJsonCopyWith(
    ComicReadJson value,
    $Res Function(ComicReadJson) then,
  ) = _$ComicReadJsonCopyWithImpl<$Res, ComicReadJson>;
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$ComicReadJsonCopyWithImpl<$Res, $Val extends ComicReadJson>
    implements $ComicReadJsonCopyWith<$Res> {
  _$ComicReadJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComicReadJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _value.copyWith(
            code:
                null == code
                    ? _value.code
                    : code // ignore: cast_nullable_to_non_nullable
                        as int,
            message:
                null == message
                    ? _value.message
                    : message // ignore: cast_nullable_to_non_nullable
                        as String,
            results:
                null == results
                    ? _value.results
                    : results // ignore: cast_nullable_to_non_nullable
                        as Results,
          )
          as $Val,
    );
  }

  /// Create a copy of ComicReadJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResultsCopyWith<$Res> get results {
    return $ResultsCopyWith<$Res>(_value.results, (value) {
      return _then(_value.copyWith(results: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComicReadJsonImplCopyWith<$Res>
    implements $ComicReadJsonCopyWith<$Res> {
  factory _$$ComicReadJsonImplCopyWith(
    _$ComicReadJsonImpl value,
    $Res Function(_$ComicReadJsonImpl) then,
  ) = __$$ComicReadJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  @override
  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class __$$ComicReadJsonImplCopyWithImpl<$Res>
    extends _$ComicReadJsonCopyWithImpl<$Res, _$ComicReadJsonImpl>
    implements _$$ComicReadJsonImplCopyWith<$Res> {
  __$$ComicReadJsonImplCopyWithImpl(
    _$ComicReadJsonImpl _value,
    $Res Function(_$ComicReadJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComicReadJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _$ComicReadJsonImpl(
        code:
            null == code
                ? _value.code
                : code // ignore: cast_nullable_to_non_nullable
                    as int,
        message:
            null == message
                ? _value.message
                : message // ignore: cast_nullable_to_non_nullable
                    as String,
        results:
            null == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                    as Results,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicReadJsonImpl implements _ComicReadJson {
  const _$ComicReadJsonImpl({
    @JsonKey(name: "code") required this.code,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "results") required this.results,
  });

  factory _$ComicReadJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicReadJsonImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final int code;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "results")
  final Results results;

  @override
  String toString() {
    return 'ComicReadJson(code: $code, message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicReadJsonImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, results);

  /// Create a copy of ComicReadJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicReadJsonImplCopyWith<_$ComicReadJsonImpl> get copyWith =>
      __$$ComicReadJsonImplCopyWithImpl<_$ComicReadJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicReadJsonImplToJson(this);
  }
}

abstract class _ComicReadJson implements ComicReadJson {
  const factory _ComicReadJson({
    @JsonKey(name: "code") required final int code,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "results") required final Results results,
  }) = _$ComicReadJsonImpl;

  factory _ComicReadJson.fromJson(Map<String, dynamic> json) =
      _$ComicReadJsonImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "results")
  Results get results;

  /// Create a copy of ComicReadJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComicReadJsonImplCopyWith<_$ComicReadJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  @JsonKey(name: "show_app")
  bool get showApp => throw _privateConstructorUsedError;
  @JsonKey(name: "is_lock")
  bool get isLock => throw _privateConstructorUsedError;
  @JsonKey(name: "is_login")
  bool get isLogin => throw _privateConstructorUsedError;
  @JsonKey(name: "is_mobile_bind")
  bool get isMobileBind => throw _privateConstructorUsedError;
  @JsonKey(name: "is_vip")
  bool get isVip => throw _privateConstructorUsedError;
  @JsonKey(name: "comic")
  Comic get comic => throw _privateConstructorUsedError;
  @JsonKey(name: "chapter")
  Chapter get chapter => throw _privateConstructorUsedError;
  @JsonKey(name: "is_banned")
  bool get isBanned => throw _privateConstructorUsedError;

  /// Serializes this Results to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResultsCopyWith<Results> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultsCopyWith<$Res> {
  factory $ResultsCopyWith(Results value, $Res Function(Results) then) =
      _$ResultsCopyWithImpl<$Res, Results>;
  @useResult
  $Res call({
    @JsonKey(name: "show_app") bool showApp,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") Comic comic,
    @JsonKey(name: "chapter") Chapter chapter,
    @JsonKey(name: "is_banned") bool isBanned,
  });

  $ComicCopyWith<$Res> get comic;
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ResultsCopyWithImpl<$Res, $Val extends Results>
    implements $ResultsCopyWith<$Res> {
  _$ResultsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showApp = null,
    Object? isLock = null,
    Object? isLogin = null,
    Object? isMobileBind = null,
    Object? isVip = null,
    Object? comic = null,
    Object? chapter = null,
    Object? isBanned = null,
  }) {
    return _then(
      _value.copyWith(
            showApp:
                null == showApp
                    ? _value.showApp
                    : showApp // ignore: cast_nullable_to_non_nullable
                        as bool,
            isLock:
                null == isLock
                    ? _value.isLock
                    : isLock // ignore: cast_nullable_to_non_nullable
                        as bool,
            isLogin:
                null == isLogin
                    ? _value.isLogin
                    : isLogin // ignore: cast_nullable_to_non_nullable
                        as bool,
            isMobileBind:
                null == isMobileBind
                    ? _value.isMobileBind
                    : isMobileBind // ignore: cast_nullable_to_non_nullable
                        as bool,
            isVip:
                null == isVip
                    ? _value.isVip
                    : isVip // ignore: cast_nullable_to_non_nullable
                        as bool,
            comic:
                null == comic
                    ? _value.comic
                    : comic // ignore: cast_nullable_to_non_nullable
                        as Comic,
            chapter:
                null == chapter
                    ? _value.chapter
                    : chapter // ignore: cast_nullable_to_non_nullable
                        as Chapter,
            isBanned:
                null == isBanned
                    ? _value.isBanned
                    : isBanned // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ComicCopyWith<$Res> get comic {
    return $ComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value) as $Val);
    });
  }

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterCopyWith<$Res> get chapter {
    return $ChapterCopyWith<$Res>(_value.chapter, (value) {
      return _then(_value.copyWith(chapter: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultsImplCopyWith<$Res> implements $ResultsCopyWith<$Res> {
  factory _$$ResultsImplCopyWith(
    _$ResultsImpl value,
    $Res Function(_$ResultsImpl) then,
  ) = __$$ResultsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "show_app") bool showApp,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") Comic comic,
    @JsonKey(name: "chapter") Chapter chapter,
    @JsonKey(name: "is_banned") bool isBanned,
  });

  @override
  $ComicCopyWith<$Res> get comic;
  @override
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ResultsImplCopyWithImpl<$Res>
    extends _$ResultsCopyWithImpl<$Res, _$ResultsImpl>
    implements _$$ResultsImplCopyWith<$Res> {
  __$$ResultsImplCopyWithImpl(
    _$ResultsImpl _value,
    $Res Function(_$ResultsImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showApp = null,
    Object? isLock = null,
    Object? isLogin = null,
    Object? isMobileBind = null,
    Object? isVip = null,
    Object? comic = null,
    Object? chapter = null,
    Object? isBanned = null,
  }) {
    return _then(
      _$ResultsImpl(
        showApp:
            null == showApp
                ? _value.showApp
                : showApp // ignore: cast_nullable_to_non_nullable
                    as bool,
        isLock:
            null == isLock
                ? _value.isLock
                : isLock // ignore: cast_nullable_to_non_nullable
                    as bool,
        isLogin:
            null == isLogin
                ? _value.isLogin
                : isLogin // ignore: cast_nullable_to_non_nullable
                    as bool,
        isMobileBind:
            null == isMobileBind
                ? _value.isMobileBind
                : isMobileBind // ignore: cast_nullable_to_non_nullable
                    as bool,
        isVip:
            null == isVip
                ? _value.isVip
                : isVip // ignore: cast_nullable_to_non_nullable
                    as bool,
        comic:
            null == comic
                ? _value.comic
                : comic // ignore: cast_nullable_to_non_nullable
                    as Comic,
        chapter:
            null == chapter
                ? _value.chapter
                : chapter // ignore: cast_nullable_to_non_nullable
                    as Chapter,
        isBanned:
            null == isBanned
                ? _value.isBanned
                : isBanned // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl({
    @JsonKey(name: "show_app") required this.showApp,
    @JsonKey(name: "is_lock") required this.isLock,
    @JsonKey(name: "is_login") required this.isLogin,
    @JsonKey(name: "is_mobile_bind") required this.isMobileBind,
    @JsonKey(name: "is_vip") required this.isVip,
    @JsonKey(name: "comic") required this.comic,
    @JsonKey(name: "chapter") required this.chapter,
    @JsonKey(name: "is_banned") required this.isBanned,
  });

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  @JsonKey(name: "show_app")
  final bool showApp;
  @override
  @JsonKey(name: "is_lock")
  final bool isLock;
  @override
  @JsonKey(name: "is_login")
  final bool isLogin;
  @override
  @JsonKey(name: "is_mobile_bind")
  final bool isMobileBind;
  @override
  @JsonKey(name: "is_vip")
  final bool isVip;
  @override
  @JsonKey(name: "comic")
  final Comic comic;
  @override
  @JsonKey(name: "chapter")
  final Chapter chapter;
  @override
  @JsonKey(name: "is_banned")
  final bool isBanned;

  @override
  String toString() {
    return 'Results(showApp: $showApp, isLock: $isLock, isLogin: $isLogin, isMobileBind: $isMobileBind, isVip: $isVip, comic: $comic, chapter: $chapter, isBanned: $isBanned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.showApp, showApp) || other.showApp == showApp) &&
            (identical(other.isLock, isLock) || other.isLock == isLock) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.isMobileBind, isMobileBind) ||
                other.isMobileBind == isMobileBind) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.comic, comic) || other.comic == comic) &&
            (identical(other.chapter, chapter) || other.chapter == chapter) &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    showApp,
    isLock,
    isLogin,
    isMobileBind,
    isVip,
    comic,
    chapter,
    isBanned,
  );

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      __$$ResultsImplCopyWithImpl<_$ResultsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultsImplToJson(this);
  }
}

abstract class _Results implements Results {
  const factory _Results({
    @JsonKey(name: "show_app") required final bool showApp,
    @JsonKey(name: "is_lock") required final bool isLock,
    @JsonKey(name: "is_login") required final bool isLogin,
    @JsonKey(name: "is_mobile_bind") required final bool isMobileBind,
    @JsonKey(name: "is_vip") required final bool isVip,
    @JsonKey(name: "comic") required final Comic comic,
    @JsonKey(name: "chapter") required final Chapter chapter,
    @JsonKey(name: "is_banned") required final bool isBanned,
  }) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  @JsonKey(name: "show_app")
  bool get showApp;
  @override
  @JsonKey(name: "is_lock")
  bool get isLock;
  @override
  @JsonKey(name: "is_login")
  bool get isLogin;
  @override
  @JsonKey(name: "is_mobile_bind")
  bool get isMobileBind;
  @override
  @JsonKey(name: "is_vip")
  bool get isVip;
  @override
  @JsonKey(name: "comic")
  Comic get comic;
  @override
  @JsonKey(name: "chapter")
  Chapter get chapter;
  @override
  @JsonKey(name: "is_banned")
  bool get isBanned;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  @JsonKey(name: "index")
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "ordered")
  int get ordered => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int get size => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "comic_id")
  String get comicId => throw _privateConstructorUsedError;
  @JsonKey(name: "comic_path_word")
  String get comicPathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "group_id")
  dynamic get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: "group_path_word")
  String get groupPathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: "img_type")
  int get imgType => throw _privateConstructorUsedError;
  @JsonKey(name: "news")
  String get news => throw _privateConstructorUsedError;
  @JsonKey(name: "datetime_created")
  DateTime get datetimeCreated => throw _privateConstructorUsedError;
  @JsonKey(name: "prev")
  String get prev => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  String get next => throw _privateConstructorUsedError;
  @JsonKey(name: "contents")
  List<Content> get contents => throw _privateConstructorUsedError;
  @JsonKey(name: "words")
  List<int> get words => throw _privateConstructorUsedError;
  @JsonKey(name: "is_long")
  bool get isLong => throw _privateConstructorUsedError;

  /// Serializes this Chapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call({
    @JsonKey(name: "index") int index,
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "count") int count,
    @JsonKey(name: "ordered") int ordered,
    @JsonKey(name: "size") int size,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "comic_id") String comicId,
    @JsonKey(name: "comic_path_word") String comicPathWord,
    @JsonKey(name: "group_id") dynamic groupId,
    @JsonKey(name: "group_path_word") String groupPathWord,
    @JsonKey(name: "type") int type,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "news") String news,
    @JsonKey(name: "datetime_created") DateTime datetimeCreated,
    @JsonKey(name: "prev") String prev,
    @JsonKey(name: "next") String next,
    @JsonKey(name: "contents") List<Content> contents,
    @JsonKey(name: "words") List<int> words,
    @JsonKey(name: "is_long") bool isLong,
  });
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? uuid = null,
    Object? count = null,
    Object? ordered = null,
    Object? size = null,
    Object? name = null,
    Object? comicId = null,
    Object? comicPathWord = null,
    Object? groupId = freezed,
    Object? groupPathWord = null,
    Object? type = null,
    Object? imgType = null,
    Object? news = null,
    Object? datetimeCreated = null,
    Object? prev = null,
    Object? next = null,
    Object? contents = null,
    Object? words = null,
    Object? isLong = null,
  }) {
    return _then(
      _value.copyWith(
            index:
                null == index
                    ? _value.index
                    : index // ignore: cast_nullable_to_non_nullable
                        as int,
            uuid:
                null == uuid
                    ? _value.uuid
                    : uuid // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            ordered:
                null == ordered
                    ? _value.ordered
                    : ordered // ignore: cast_nullable_to_non_nullable
                        as int,
            size:
                null == size
                    ? _value.size
                    : size // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            comicId:
                null == comicId
                    ? _value.comicId
                    : comicId // ignore: cast_nullable_to_non_nullable
                        as String,
            comicPathWord:
                null == comicPathWord
                    ? _value.comicPathWord
                    : comicPathWord // ignore: cast_nullable_to_non_nullable
                        as String,
            groupId:
                freezed == groupId
                    ? _value.groupId
                    : groupId // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            groupPathWord:
                null == groupPathWord
                    ? _value.groupPathWord
                    : groupPathWord // ignore: cast_nullable_to_non_nullable
                        as String,
            type:
                null == type
                    ? _value.type
                    : type // ignore: cast_nullable_to_non_nullable
                        as int,
            imgType:
                null == imgType
                    ? _value.imgType
                    : imgType // ignore: cast_nullable_to_non_nullable
                        as int,
            news:
                null == news
                    ? _value.news
                    : news // ignore: cast_nullable_to_non_nullable
                        as String,
            datetimeCreated:
                null == datetimeCreated
                    ? _value.datetimeCreated
                    : datetimeCreated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            prev:
                null == prev
                    ? _value.prev
                    : prev // ignore: cast_nullable_to_non_nullable
                        as String,
            next:
                null == next
                    ? _value.next
                    : next // ignore: cast_nullable_to_non_nullable
                        as String,
            contents:
                null == contents
                    ? _value.contents
                    : contents // ignore: cast_nullable_to_non_nullable
                        as List<Content>,
            words:
                null == words
                    ? _value.words
                    : words // ignore: cast_nullable_to_non_nullable
                        as List<int>,
            isLong:
                null == isLong
                    ? _value.isLong
                    : isLong // ignore: cast_nullable_to_non_nullable
                        as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChapterImplCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$ChapterImplCopyWith(
    _$ChapterImpl value,
    $Res Function(_$ChapterImpl) then,
  ) = __$$ChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "index") int index,
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "count") int count,
    @JsonKey(name: "ordered") int ordered,
    @JsonKey(name: "size") int size,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "comic_id") String comicId,
    @JsonKey(name: "comic_path_word") String comicPathWord,
    @JsonKey(name: "group_id") dynamic groupId,
    @JsonKey(name: "group_path_word") String groupPathWord,
    @JsonKey(name: "type") int type,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "news") String news,
    @JsonKey(name: "datetime_created") DateTime datetimeCreated,
    @JsonKey(name: "prev") String prev,
    @JsonKey(name: "next") String next,
    @JsonKey(name: "contents") List<Content> contents,
    @JsonKey(name: "words") List<int> words,
    @JsonKey(name: "is_long") bool isLong,
  });
}

/// @nodoc
class __$$ChapterImplCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$ChapterImpl>
    implements _$$ChapterImplCopyWith<$Res> {
  __$$ChapterImplCopyWithImpl(
    _$ChapterImpl _value,
    $Res Function(_$ChapterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? uuid = null,
    Object? count = null,
    Object? ordered = null,
    Object? size = null,
    Object? name = null,
    Object? comicId = null,
    Object? comicPathWord = null,
    Object? groupId = freezed,
    Object? groupPathWord = null,
    Object? type = null,
    Object? imgType = null,
    Object? news = null,
    Object? datetimeCreated = null,
    Object? prev = null,
    Object? next = null,
    Object? contents = null,
    Object? words = null,
    Object? isLong = null,
  }) {
    return _then(
      _$ChapterImpl(
        index:
            null == index
                ? _value.index
                : index // ignore: cast_nullable_to_non_nullable
                    as int,
        uuid:
            null == uuid
                ? _value.uuid
                : uuid // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        ordered:
            null == ordered
                ? _value.ordered
                : ordered // ignore: cast_nullable_to_non_nullable
                    as int,
        size:
            null == size
                ? _value.size
                : size // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        comicId:
            null == comicId
                ? _value.comicId
                : comicId // ignore: cast_nullable_to_non_nullable
                    as String,
        comicPathWord:
            null == comicPathWord
                ? _value.comicPathWord
                : comicPathWord // ignore: cast_nullable_to_non_nullable
                    as String,
        groupId:
            freezed == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        groupPathWord:
            null == groupPathWord
                ? _value.groupPathWord
                : groupPathWord // ignore: cast_nullable_to_non_nullable
                    as String,
        type:
            null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                    as int,
        imgType:
            null == imgType
                ? _value.imgType
                : imgType // ignore: cast_nullable_to_non_nullable
                    as int,
        news:
            null == news
                ? _value.news
                : news // ignore: cast_nullable_to_non_nullable
                    as String,
        datetimeCreated:
            null == datetimeCreated
                ? _value.datetimeCreated
                : datetimeCreated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        prev:
            null == prev
                ? _value.prev
                : prev // ignore: cast_nullable_to_non_nullable
                    as String,
        next:
            null == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                    as String,
        contents:
            null == contents
                ? _value._contents
                : contents // ignore: cast_nullable_to_non_nullable
                    as List<Content>,
        words:
            null == words
                ? _value._words
                : words // ignore: cast_nullable_to_non_nullable
                    as List<int>,
        isLong:
            null == isLong
                ? _value.isLong
                : isLong // ignore: cast_nullable_to_non_nullable
                    as bool,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterImpl implements _Chapter {
  const _$ChapterImpl({
    @JsonKey(name: "index") required this.index,
    @JsonKey(name: "uuid") required this.uuid,
    @JsonKey(name: "count") required this.count,
    @JsonKey(name: "ordered") required this.ordered,
    @JsonKey(name: "size") required this.size,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "comic_id") required this.comicId,
    @JsonKey(name: "comic_path_word") required this.comicPathWord,
    @JsonKey(name: "group_id") required this.groupId,
    @JsonKey(name: "group_path_word") required this.groupPathWord,
    @JsonKey(name: "type") required this.type,
    @JsonKey(name: "img_type") required this.imgType,
    @JsonKey(name: "news") required this.news,
    @JsonKey(name: "datetime_created") required this.datetimeCreated,
    @JsonKey(name: "prev") required this.prev,
    @JsonKey(name: "next") required this.next,
    @JsonKey(name: "contents") required final List<Content> contents,
    @JsonKey(name: "words") required final List<int> words,
    @JsonKey(name: "is_long") required this.isLong,
  }) : _contents = contents,
       _words = words;

  factory _$ChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterImplFromJson(json);

  @override
  @JsonKey(name: "index")
  final int index;
  @override
  @JsonKey(name: "uuid")
  final String uuid;
  @override
  @JsonKey(name: "count")
  final int count;
  @override
  @JsonKey(name: "ordered")
  final int ordered;
  @override
  @JsonKey(name: "size")
  final int size;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "comic_id")
  final String comicId;
  @override
  @JsonKey(name: "comic_path_word")
  final String comicPathWord;
  @override
  @JsonKey(name: "group_id")
  final dynamic groupId;
  @override
  @JsonKey(name: "group_path_word")
  final String groupPathWord;
  @override
  @JsonKey(name: "type")
  final int type;
  @override
  @JsonKey(name: "img_type")
  final int imgType;
  @override
  @JsonKey(name: "news")
  final String news;
  @override
  @JsonKey(name: "datetime_created")
  final DateTime datetimeCreated;
  @override
  @JsonKey(name: "prev")
  final String prev;
  @override
  @JsonKey(name: "next")
  final String next;
  final List<Content> _contents;
  @override
  @JsonKey(name: "contents")
  List<Content> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  final List<int> _words;
  @override
  @JsonKey(name: "words")
  List<int> get words {
    if (_words is EqualUnmodifiableListView) return _words;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_words);
  }

  @override
  @JsonKey(name: "is_long")
  final bool isLong;

  @override
  String toString() {
    return 'Chapter(index: $index, uuid: $uuid, count: $count, ordered: $ordered, size: $size, name: $name, comicId: $comicId, comicPathWord: $comicPathWord, groupId: $groupId, groupPathWord: $groupPathWord, type: $type, imgType: $imgType, news: $news, datetimeCreated: $datetimeCreated, prev: $prev, next: $next, contents: $contents, words: $words, isLong: $isLong)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterImpl &&
            (identical(other.index, index) || other.index == index) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.ordered, ordered) || other.ordered == ordered) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.comicId, comicId) || other.comicId == comicId) &&
            (identical(other.comicPathWord, comicPathWord) ||
                other.comicPathWord == comicPathWord) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            (identical(other.groupPathWord, groupPathWord) ||
                other.groupPathWord == groupPathWord) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.imgType, imgType) || other.imgType == imgType) &&
            (identical(other.news, news) || other.news == news) &&
            (identical(other.datetimeCreated, datetimeCreated) ||
                other.datetimeCreated == datetimeCreated) &&
            (identical(other.prev, prev) || other.prev == prev) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            const DeepCollectionEquality().equals(other._words, _words) &&
            (identical(other.isLong, isLong) || other.isLong == isLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    index,
    uuid,
    count,
    ordered,
    size,
    name,
    comicId,
    comicPathWord,
    const DeepCollectionEquality().hash(groupId),
    groupPathWord,
    type,
    imgType,
    news,
    datetimeCreated,
    prev,
    next,
    const DeepCollectionEquality().hash(_contents),
    const DeepCollectionEquality().hash(_words),
    isLong,
  ]);

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      __$$ChapterImplCopyWithImpl<_$ChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterImplToJson(this);
  }
}

abstract class _Chapter implements Chapter {
  const factory _Chapter({
    @JsonKey(name: "index") required final int index,
    @JsonKey(name: "uuid") required final String uuid,
    @JsonKey(name: "count") required final int count,
    @JsonKey(name: "ordered") required final int ordered,
    @JsonKey(name: "size") required final int size,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "comic_id") required final String comicId,
    @JsonKey(name: "comic_path_word") required final String comicPathWord,
    @JsonKey(name: "group_id") required final dynamic groupId,
    @JsonKey(name: "group_path_word") required final String groupPathWord,
    @JsonKey(name: "type") required final int type,
    @JsonKey(name: "img_type") required final int imgType,
    @JsonKey(name: "news") required final String news,
    @JsonKey(name: "datetime_created") required final DateTime datetimeCreated,
    @JsonKey(name: "prev") required final String prev,
    @JsonKey(name: "next") required final String next,
    @JsonKey(name: "contents") required final List<Content> contents,
    @JsonKey(name: "words") required final List<int> words,
    @JsonKey(name: "is_long") required final bool isLong,
  }) = _$ChapterImpl;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$ChapterImpl.fromJson;

  @override
  @JsonKey(name: "index")
  int get index;
  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(name: "ordered")
  int get ordered;
  @override
  @JsonKey(name: "size")
  int get size;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "comic_id")
  String get comicId;
  @override
  @JsonKey(name: "comic_path_word")
  String get comicPathWord;
  @override
  @JsonKey(name: "group_id")
  dynamic get groupId;
  @override
  @JsonKey(name: "group_path_word")
  String get groupPathWord;
  @override
  @JsonKey(name: "type")
  int get type;
  @override
  @JsonKey(name: "img_type")
  int get imgType;
  @override
  @JsonKey(name: "news")
  String get news;
  @override
  @JsonKey(name: "datetime_created")
  DateTime get datetimeCreated;
  @override
  @JsonKey(name: "prev")
  String get prev;
  @override
  @JsonKey(name: "next")
  String get next;
  @override
  @JsonKey(name: "contents")
  List<Content> get contents;
  @override
  @JsonKey(name: "words")
  List<int> get words;
  @override
  @JsonKey(name: "is_long")
  bool get isLong;

  /// Create a copy of Chapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterImplCopyWith<_$ChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Content _$ContentFromJson(Map<String, dynamic> json) {
  return _Content.fromJson(json);
}

/// @nodoc
mixin _$Content {
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;

  /// Serializes this Content to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCopyWith<Content> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCopyWith<$Res> {
  factory $ContentCopyWith(Content value, $Res Function(Content) then) =
      _$ContentCopyWithImpl<$Res, Content>;
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class _$ContentCopyWithImpl<$Res, $Val extends Content>
    implements $ContentCopyWith<$Res> {
  _$ContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _value.copyWith(
            url:
                null == url
                    ? _value.url
                    : url // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ContentImplCopyWith<$Res> implements $ContentCopyWith<$Res> {
  factory _$$ContentImplCopyWith(
    _$ContentImpl value,
    $Res Function(_$ContentImpl) then,
  ) = __$$ContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "url") String url});
}

/// @nodoc
class __$$ContentImplCopyWithImpl<$Res>
    extends _$ContentCopyWithImpl<$Res, _$ContentImpl>
    implements _$$ContentImplCopyWith<$Res> {
  __$$ContentImplCopyWithImpl(
    _$ContentImpl _value,
    $Res Function(_$ContentImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? url = null}) {
    return _then(
      _$ContentImpl(
        url:
            null == url
                ? _value.url
                : url // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentImpl implements _Content {
  const _$ContentImpl({@JsonKey(name: "url") required this.url});

  factory _$ContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentImplFromJson(json);

  @override
  @JsonKey(name: "url")
  final String url;

  @override
  String toString() {
    return 'Content(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      __$$ContentImplCopyWithImpl<_$ContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentImplToJson(this);
  }
}

abstract class _Content implements Content {
  const factory _Content({@JsonKey(name: "url") required final String url}) =
      _$ContentImpl;

  factory _Content.fromJson(Map<String, dynamic> json) = _$ContentImpl.fromJson;

  @override
  @JsonKey(name: "url")
  String get url;

  /// Create a copy of Content
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentImplCopyWith<_$ContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
mixin _$Comic {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "restrict")
  Restrict get restrict => throw _privateConstructorUsedError;

  /// Serializes this Comic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComicCopyWith<Comic> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicCopyWith<$Res> {
  factory $ComicCopyWith(Comic value, $Res Function(Comic) then) =
      _$ComicCopyWithImpl<$Res, Comic>;
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "restrict") Restrict restrict,
  });

  $RestrictCopyWith<$Res> get restrict;
}

/// @nodoc
class _$ComicCopyWithImpl<$Res, $Val extends Comic>
    implements $ComicCopyWith<$Res> {
  _$ComicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
    Object? pathWord = null,
    Object? restrict = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            uuid:
                null == uuid
                    ? _value.uuid
                    : uuid // ignore: cast_nullable_to_non_nullable
                        as String,
            pathWord:
                null == pathWord
                    ? _value.pathWord
                    : pathWord // ignore: cast_nullable_to_non_nullable
                        as String,
            restrict:
                null == restrict
                    ? _value.restrict
                    : restrict // ignore: cast_nullable_to_non_nullable
                        as Restrict,
          )
          as $Val,
    );
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RestrictCopyWith<$Res> get restrict {
    return $RestrictCopyWith<$Res>(_value.restrict, (value) {
      return _then(_value.copyWith(restrict: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComicImplCopyWith<$Res> implements $ComicCopyWith<$Res> {
  factory _$$ComicImplCopyWith(
    _$ComicImpl value,
    $Res Function(_$ComicImpl) then,
  ) = __$$ComicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "restrict") Restrict restrict,
  });

  @override
  $RestrictCopyWith<$Res> get restrict;
}

/// @nodoc
class __$$ComicImplCopyWithImpl<$Res>
    extends _$ComicCopyWithImpl<$Res, _$ComicImpl>
    implements _$$ComicImplCopyWith<$Res> {
  __$$ComicImplCopyWithImpl(
    _$ComicImpl _value,
    $Res Function(_$ComicImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? uuid = null,
    Object? pathWord = null,
    Object? restrict = null,
  }) {
    return _then(
      _$ComicImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        uuid:
            null == uuid
                ? _value.uuid
                : uuid // ignore: cast_nullable_to_non_nullable
                    as String,
        pathWord:
            null == pathWord
                ? _value.pathWord
                : pathWord // ignore: cast_nullable_to_non_nullable
                    as String,
        restrict:
            null == restrict
                ? _value.restrict
                : restrict // ignore: cast_nullable_to_non_nullable
                    as Restrict,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicImpl implements _Comic {
  const _$ComicImpl({
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "uuid") required this.uuid,
    @JsonKey(name: "path_word") required this.pathWord,
    @JsonKey(name: "restrict") required this.restrict,
  });

  factory _$ComicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "uuid")
  final String uuid;
  @override
  @JsonKey(name: "path_word")
  final String pathWord;
  @override
  @JsonKey(name: "restrict")
  final Restrict restrict;

  @override
  String toString() {
    return 'Comic(name: $name, uuid: $uuid, pathWord: $pathWord, restrict: $restrict)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord) &&
            (identical(other.restrict, restrict) ||
                other.restrict == restrict));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, uuid, pathWord, restrict);

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicImplCopyWith<_$ComicImpl> get copyWith =>
      __$$ComicImplCopyWithImpl<_$ComicImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicImplToJson(this);
  }
}

abstract class _Comic implements Comic {
  const factory _Comic({
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "uuid") required final String uuid,
    @JsonKey(name: "path_word") required final String pathWord,
    @JsonKey(name: "restrict") required final Restrict restrict,
  }) = _$ComicImpl;

  factory _Comic.fromJson(Map<String, dynamic> json) = _$ComicImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "path_word")
  String get pathWord;
  @override
  @JsonKey(name: "restrict")
  Restrict get restrict;

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComicImplCopyWith<_$ComicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Restrict _$RestrictFromJson(Map<String, dynamic> json) {
  return _Restrict.fromJson(json);
}

/// @nodoc
mixin _$Restrict {
  @JsonKey(name: "value")
  int get value => throw _privateConstructorUsedError;
  @JsonKey(name: "display")
  String get display => throw _privateConstructorUsedError;

  /// Serializes this Restrict to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Restrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RestrictCopyWith<Restrict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestrictCopyWith<$Res> {
  factory $RestrictCopyWith(Restrict value, $Res Function(Restrict) then) =
      _$RestrictCopyWithImpl<$Res, Restrict>;
  @useResult
  $Res call({
    @JsonKey(name: "value") int value,
    @JsonKey(name: "display") String display,
  });
}

/// @nodoc
class _$RestrictCopyWithImpl<$Res, $Val extends Restrict>
    implements $RestrictCopyWith<$Res> {
  _$RestrictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Restrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? display = null}) {
    return _then(
      _value.copyWith(
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as int,
            display:
                null == display
                    ? _value.display
                    : display // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$RestrictImplCopyWith<$Res>
    implements $RestrictCopyWith<$Res> {
  factory _$$RestrictImplCopyWith(
    _$RestrictImpl value,
    $Res Function(_$RestrictImpl) then,
  ) = __$$RestrictImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "value") int value,
    @JsonKey(name: "display") String display,
  });
}

/// @nodoc
class __$$RestrictImplCopyWithImpl<$Res>
    extends _$RestrictCopyWithImpl<$Res, _$RestrictImpl>
    implements _$$RestrictImplCopyWith<$Res> {
  __$$RestrictImplCopyWithImpl(
    _$RestrictImpl _value,
    $Res Function(_$RestrictImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Restrict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? value = null, Object? display = null}) {
    return _then(
      _$RestrictImpl(
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as int,
        display:
            null == display
                ? _value.display
                : display // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$RestrictImpl implements _Restrict {
  const _$RestrictImpl({
    @JsonKey(name: "value") required this.value,
    @JsonKey(name: "display") required this.display,
  });

  factory _$RestrictImpl.fromJson(Map<String, dynamic> json) =>
      _$$RestrictImplFromJson(json);

  @override
  @JsonKey(name: "value")
  final int value;
  @override
  @JsonKey(name: "display")
  final String display;

  @override
  String toString() {
    return 'Restrict(value: $value, display: $display)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RestrictImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.display, display) || other.display == display));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value, display);

  /// Create a copy of Restrict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RestrictImplCopyWith<_$RestrictImpl> get copyWith =>
      __$$RestrictImplCopyWithImpl<_$RestrictImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RestrictImplToJson(this);
  }
}

abstract class _Restrict implements Restrict {
  const factory _Restrict({
    @JsonKey(name: "value") required final int value,
    @JsonKey(name: "display") required final String display,
  }) = _$RestrictImpl;

  factory _Restrict.fromJson(Map<String, dynamic> json) =
      _$RestrictImpl.fromJson;

  @override
  @JsonKey(name: "value")
  int get value;
  @override
  @JsonKey(name: "display")
  String get display;

  /// Create a copy of Restrict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RestrictImplCopyWith<_$RestrictImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
