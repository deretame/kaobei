// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_info_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ComicInfoJson _$ComicInfoJsonFromJson(Map<String, dynamic> json) {
  return _ComicInfoJson.fromJson(json);
}

/// @nodoc
mixin _$ComicInfoJson {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  Results get results => throw _privateConstructorUsedError;

  /// Serializes this ComicInfoJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComicInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComicInfoJsonCopyWith<ComicInfoJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicInfoJsonCopyWith<$Res> {
  factory $ComicInfoJsonCopyWith(
    ComicInfoJson value,
    $Res Function(ComicInfoJson) then,
  ) = _$ComicInfoJsonCopyWithImpl<$Res, ComicInfoJson>;
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$ComicInfoJsonCopyWithImpl<$Res, $Val extends ComicInfoJson>
    implements $ComicInfoJsonCopyWith<$Res> {
  _$ComicInfoJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComicInfoJson
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

  /// Create a copy of ComicInfoJson
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
abstract class _$$ComicInfoJsonImplCopyWith<$Res>
    implements $ComicInfoJsonCopyWith<$Res> {
  factory _$$ComicInfoJsonImplCopyWith(
    _$ComicInfoJsonImpl value,
    $Res Function(_$ComicInfoJsonImpl) then,
  ) = __$$ComicInfoJsonImplCopyWithImpl<$Res>;
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
class __$$ComicInfoJsonImplCopyWithImpl<$Res>
    extends _$ComicInfoJsonCopyWithImpl<$Res, _$ComicInfoJsonImpl>
    implements _$$ComicInfoJsonImplCopyWith<$Res> {
  __$$ComicInfoJsonImplCopyWithImpl(
    _$ComicInfoJsonImpl _value,
    $Res Function(_$ComicInfoJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComicInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _$ComicInfoJsonImpl(
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
class _$ComicInfoJsonImpl implements _ComicInfoJson {
  const _$ComicInfoJsonImpl({
    @JsonKey(name: "code") required this.code,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "results") required this.results,
  });

  factory _$ComicInfoJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicInfoJsonImplFromJson(json);

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
    return 'ComicInfoJson(code: $code, message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicInfoJsonImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, results);

  /// Create a copy of ComicInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicInfoJsonImplCopyWith<_$ComicInfoJsonImpl> get copyWith =>
      __$$ComicInfoJsonImplCopyWithImpl<_$ComicInfoJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicInfoJsonImplToJson(this);
  }
}

abstract class _ComicInfoJson implements ComicInfoJson {
  const factory _ComicInfoJson({
    @JsonKey(name: "code") required final int code,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "results") required final Results results,
  }) = _$ComicInfoJsonImpl;

  factory _ComicInfoJson.fromJson(Map<String, dynamic> json) =
      _$ComicInfoJsonImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "results")
  Results get results;

  /// Create a copy of ComicInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComicInfoJsonImplCopyWith<_$ComicInfoJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  @JsonKey(name: "is_banned")
  bool get isBanned => throw _privateConstructorUsedError;
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
  @JsonKey(name: "popular")
  int get popular => throw _privateConstructorUsedError;

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
    @JsonKey(name: "is_banned") bool isBanned,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") Comic comic,
    @JsonKey(name: "popular") int popular,
  });

  $ComicCopyWith<$Res> get comic;
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
    Object? isBanned = null,
    Object? isLock = null,
    Object? isLogin = null,
    Object? isMobileBind = null,
    Object? isVip = null,
    Object? comic = null,
    Object? popular = null,
  }) {
    return _then(
      _value.copyWith(
            isBanned:
                null == isBanned
                    ? _value.isBanned
                    : isBanned // ignore: cast_nullable_to_non_nullable
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
            popular:
                null == popular
                    ? _value.popular
                    : popular // ignore: cast_nullable_to_non_nullable
                        as int,
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
    @JsonKey(name: "is_banned") bool isBanned,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") Comic comic,
    @JsonKey(name: "popular") int popular,
  });

  @override
  $ComicCopyWith<$Res> get comic;
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
    Object? isBanned = null,
    Object? isLock = null,
    Object? isLogin = null,
    Object? isMobileBind = null,
    Object? isVip = null,
    Object? comic = null,
    Object? popular = null,
  }) {
    return _then(
      _$ResultsImpl(
        isBanned:
            null == isBanned
                ? _value.isBanned
                : isBanned // ignore: cast_nullable_to_non_nullable
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
        popular:
            null == popular
                ? _value.popular
                : popular // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl({
    @JsonKey(name: "is_banned") required this.isBanned,
    @JsonKey(name: "is_lock") required this.isLock,
    @JsonKey(name: "is_login") required this.isLogin,
    @JsonKey(name: "is_mobile_bind") required this.isMobileBind,
    @JsonKey(name: "is_vip") required this.isVip,
    @JsonKey(name: "comic") required this.comic,
    @JsonKey(name: "popular") required this.popular,
  });

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  @JsonKey(name: "is_banned")
  final bool isBanned;
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
  @JsonKey(name: "popular")
  final int popular;

  @override
  String toString() {
    return 'Results(isBanned: $isBanned, isLock: $isLock, isLogin: $isLogin, isMobileBind: $isMobileBind, isVip: $isVip, comic: $comic, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.isLock, isLock) || other.isLock == isLock) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.isMobileBind, isMobileBind) ||
                other.isMobileBind == isMobileBind) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.comic, comic) || other.comic == comic) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    isBanned,
    isLock,
    isLogin,
    isMobileBind,
    isVip,
    comic,
    popular,
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
    @JsonKey(name: "is_banned") required final bool isBanned,
    @JsonKey(name: "is_lock") required final bool isLock,
    @JsonKey(name: "is_login") required final bool isLogin,
    @JsonKey(name: "is_mobile_bind") required final bool isMobileBind,
    @JsonKey(name: "is_vip") required final bool isVip,
    @JsonKey(name: "comic") required final Comic comic,
    @JsonKey(name: "popular") required final int popular,
  }) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  @JsonKey(name: "is_banned")
  bool get isBanned;
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
  @JsonKey(name: "popular")
  int get popular;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Comic _$ComicFromJson(Map<String, dynamic> json) {
  return _Comic.fromJson(json);
}

/// @nodoc
mixin _$Comic {
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "b_404")
  bool get b404 => throw _privateConstructorUsedError;
  @JsonKey(name: "b_hidden")
  bool get bHidden => throw _privateConstructorUsedError;
  @JsonKey(name: "ban")
  int get ban => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "alias")
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "close_comment")
  bool get closeComment => throw _privateConstructorUsedError;
  @JsonKey(name: "close_roast")
  bool get closeRoast => throw _privateConstructorUsedError;
  @JsonKey(name: "free_type")
  FreeType get freeType => throw _privateConstructorUsedError;
  @JsonKey(name: "restrict")
  FreeType get restrict => throw _privateConstructorUsedError;
  @JsonKey(name: "reclass")
  FreeType get reclass => throw _privateConstructorUsedError;
  @JsonKey(name: "females")
  List<dynamic> get females => throw _privateConstructorUsedError;
  @JsonKey(name: "males")
  List<dynamic> get males => throw _privateConstructorUsedError;
  @JsonKey(name: "clubs")
  List<dynamic> get clubs => throw _privateConstructorUsedError;
  @JsonKey(name: "img_type")
  int get imgType => throw _privateConstructorUsedError;
  @JsonKey(name: "seo_baidu")
  String get seoBaidu => throw _privateConstructorUsedError;
  @JsonKey(name: "region")
  FreeType get region => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  FreeType get status => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  List<Author> get author => throw _privateConstructorUsedError;
  @JsonKey(name: "theme")
  List<Author> get theme => throw _privateConstructorUsedError;
  @JsonKey(name: "parodies")
  List<dynamic> get parodies => throw _privateConstructorUsedError;
  @JsonKey(name: "brief")
  String get brief => throw _privateConstructorUsedError;
  @JsonKey(name: "datetime_updated")
  DateTime get datetimeUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "last_chapter")
  LastChapter get lastChapter => throw _privateConstructorUsedError;
  @JsonKey(name: "popular")
  int get popular => throw _privateConstructorUsedError;

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
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "b_404") bool b404,
    @JsonKey(name: "b_hidden") bool bHidden,
    @JsonKey(name: "ban") int ban,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "alias") String alias,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "close_comment") bool closeComment,
    @JsonKey(name: "close_roast") bool closeRoast,
    @JsonKey(name: "free_type") FreeType freeType,
    @JsonKey(name: "restrict") FreeType restrict,
    @JsonKey(name: "reclass") FreeType reclass,
    @JsonKey(name: "females") List<dynamic> females,
    @JsonKey(name: "males") List<dynamic> males,
    @JsonKey(name: "clubs") List<dynamic> clubs,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "seo_baidu") String seoBaidu,
    @JsonKey(name: "region") FreeType region,
    @JsonKey(name: "status") FreeType status,
    @JsonKey(name: "author") List<Author> author,
    @JsonKey(name: "theme") List<Author> theme,
    @JsonKey(name: "parodies") List<dynamic> parodies,
    @JsonKey(name: "brief") String brief,
    @JsonKey(name: "datetime_updated") DateTime datetimeUpdated,
    @JsonKey(name: "cover") String cover,
    @JsonKey(name: "last_chapter") LastChapter lastChapter,
    @JsonKey(name: "popular") int popular,
  });

  $FreeTypeCopyWith<$Res> get freeType;
  $FreeTypeCopyWith<$Res> get restrict;
  $FreeTypeCopyWith<$Res> get reclass;
  $FreeTypeCopyWith<$Res> get region;
  $FreeTypeCopyWith<$Res> get status;
  $LastChapterCopyWith<$Res> get lastChapter;
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
    Object? uuid = null,
    Object? b404 = null,
    Object? bHidden = null,
    Object? ban = null,
    Object? name = null,
    Object? alias = null,
    Object? pathWord = null,
    Object? closeComment = null,
    Object? closeRoast = null,
    Object? freeType = null,
    Object? restrict = null,
    Object? reclass = null,
    Object? females = null,
    Object? males = null,
    Object? clubs = null,
    Object? imgType = null,
    Object? seoBaidu = null,
    Object? region = null,
    Object? status = null,
    Object? author = null,
    Object? theme = null,
    Object? parodies = null,
    Object? brief = null,
    Object? datetimeUpdated = null,
    Object? cover = null,
    Object? lastChapter = null,
    Object? popular = null,
  }) {
    return _then(
      _value.copyWith(
            uuid:
                null == uuid
                    ? _value.uuid
                    : uuid // ignore: cast_nullable_to_non_nullable
                        as String,
            b404:
                null == b404
                    ? _value.b404
                    : b404 // ignore: cast_nullable_to_non_nullable
                        as bool,
            bHidden:
                null == bHidden
                    ? _value.bHidden
                    : bHidden // ignore: cast_nullable_to_non_nullable
                        as bool,
            ban:
                null == ban
                    ? _value.ban
                    : ban // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            alias:
                null == alias
                    ? _value.alias
                    : alias // ignore: cast_nullable_to_non_nullable
                        as String,
            pathWord:
                null == pathWord
                    ? _value.pathWord
                    : pathWord // ignore: cast_nullable_to_non_nullable
                        as String,
            closeComment:
                null == closeComment
                    ? _value.closeComment
                    : closeComment // ignore: cast_nullable_to_non_nullable
                        as bool,
            closeRoast:
                null == closeRoast
                    ? _value.closeRoast
                    : closeRoast // ignore: cast_nullable_to_non_nullable
                        as bool,
            freeType:
                null == freeType
                    ? _value.freeType
                    : freeType // ignore: cast_nullable_to_non_nullable
                        as FreeType,
            restrict:
                null == restrict
                    ? _value.restrict
                    : restrict // ignore: cast_nullable_to_non_nullable
                        as FreeType,
            reclass:
                null == reclass
                    ? _value.reclass
                    : reclass // ignore: cast_nullable_to_non_nullable
                        as FreeType,
            females:
                null == females
                    ? _value.females
                    : females // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            males:
                null == males
                    ? _value.males
                    : males // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            clubs:
                null == clubs
                    ? _value.clubs
                    : clubs // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            imgType:
                null == imgType
                    ? _value.imgType
                    : imgType // ignore: cast_nullable_to_non_nullable
                        as int,
            seoBaidu:
                null == seoBaidu
                    ? _value.seoBaidu
                    : seoBaidu // ignore: cast_nullable_to_non_nullable
                        as String,
            region:
                null == region
                    ? _value.region
                    : region // ignore: cast_nullable_to_non_nullable
                        as FreeType,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as FreeType,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as List<Author>,
            theme:
                null == theme
                    ? _value.theme
                    : theme // ignore: cast_nullable_to_non_nullable
                        as List<Author>,
            parodies:
                null == parodies
                    ? _value.parodies
                    : parodies // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            brief:
                null == brief
                    ? _value.brief
                    : brief // ignore: cast_nullable_to_non_nullable
                        as String,
            datetimeUpdated:
                null == datetimeUpdated
                    ? _value.datetimeUpdated
                    : datetimeUpdated // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            cover:
                null == cover
                    ? _value.cover
                    : cover // ignore: cast_nullable_to_non_nullable
                        as String,
            lastChapter:
                null == lastChapter
                    ? _value.lastChapter
                    : lastChapter // ignore: cast_nullable_to_non_nullable
                        as LastChapter,
            popular:
                null == popular
                    ? _value.popular
                    : popular // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get freeType {
    return $FreeTypeCopyWith<$Res>(_value.freeType, (value) {
      return _then(_value.copyWith(freeType: value) as $Val);
    });
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get restrict {
    return $FreeTypeCopyWith<$Res>(_value.restrict, (value) {
      return _then(_value.copyWith(restrict: value) as $Val);
    });
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get reclass {
    return $FreeTypeCopyWith<$Res>(_value.reclass, (value) {
      return _then(_value.copyWith(reclass: value) as $Val);
    });
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get region {
    return $FreeTypeCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get status {
    return $FreeTypeCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastChapterCopyWith<$Res> get lastChapter {
    return $LastChapterCopyWith<$Res>(_value.lastChapter, (value) {
      return _then(_value.copyWith(lastChapter: value) as $Val);
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
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "b_404") bool b404,
    @JsonKey(name: "b_hidden") bool bHidden,
    @JsonKey(name: "ban") int ban,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "alias") String alias,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "close_comment") bool closeComment,
    @JsonKey(name: "close_roast") bool closeRoast,
    @JsonKey(name: "free_type") FreeType freeType,
    @JsonKey(name: "restrict") FreeType restrict,
    @JsonKey(name: "reclass") FreeType reclass,
    @JsonKey(name: "females") List<dynamic> females,
    @JsonKey(name: "males") List<dynamic> males,
    @JsonKey(name: "clubs") List<dynamic> clubs,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "seo_baidu") String seoBaidu,
    @JsonKey(name: "region") FreeType region,
    @JsonKey(name: "status") FreeType status,
    @JsonKey(name: "author") List<Author> author,
    @JsonKey(name: "theme") List<Author> theme,
    @JsonKey(name: "parodies") List<dynamic> parodies,
    @JsonKey(name: "brief") String brief,
    @JsonKey(name: "datetime_updated") DateTime datetimeUpdated,
    @JsonKey(name: "cover") String cover,
    @JsonKey(name: "last_chapter") LastChapter lastChapter,
    @JsonKey(name: "popular") int popular,
  });

  @override
  $FreeTypeCopyWith<$Res> get freeType;
  @override
  $FreeTypeCopyWith<$Res> get restrict;
  @override
  $FreeTypeCopyWith<$Res> get reclass;
  @override
  $FreeTypeCopyWith<$Res> get region;
  @override
  $FreeTypeCopyWith<$Res> get status;
  @override
  $LastChapterCopyWith<$Res> get lastChapter;
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
    Object? uuid = null,
    Object? b404 = null,
    Object? bHidden = null,
    Object? ban = null,
    Object? name = null,
    Object? alias = null,
    Object? pathWord = null,
    Object? closeComment = null,
    Object? closeRoast = null,
    Object? freeType = null,
    Object? restrict = null,
    Object? reclass = null,
    Object? females = null,
    Object? males = null,
    Object? clubs = null,
    Object? imgType = null,
    Object? seoBaidu = null,
    Object? region = null,
    Object? status = null,
    Object? author = null,
    Object? theme = null,
    Object? parodies = null,
    Object? brief = null,
    Object? datetimeUpdated = null,
    Object? cover = null,
    Object? lastChapter = null,
    Object? popular = null,
  }) {
    return _then(
      _$ComicImpl(
        uuid:
            null == uuid
                ? _value.uuid
                : uuid // ignore: cast_nullable_to_non_nullable
                    as String,
        b404:
            null == b404
                ? _value.b404
                : b404 // ignore: cast_nullable_to_non_nullable
                    as bool,
        bHidden:
            null == bHidden
                ? _value.bHidden
                : bHidden // ignore: cast_nullable_to_non_nullable
                    as bool,
        ban:
            null == ban
                ? _value.ban
                : ban // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        alias:
            null == alias
                ? _value.alias
                : alias // ignore: cast_nullable_to_non_nullable
                    as String,
        pathWord:
            null == pathWord
                ? _value.pathWord
                : pathWord // ignore: cast_nullable_to_non_nullable
                    as String,
        closeComment:
            null == closeComment
                ? _value.closeComment
                : closeComment // ignore: cast_nullable_to_non_nullable
                    as bool,
        closeRoast:
            null == closeRoast
                ? _value.closeRoast
                : closeRoast // ignore: cast_nullable_to_non_nullable
                    as bool,
        freeType:
            null == freeType
                ? _value.freeType
                : freeType // ignore: cast_nullable_to_non_nullable
                    as FreeType,
        restrict:
            null == restrict
                ? _value.restrict
                : restrict // ignore: cast_nullable_to_non_nullable
                    as FreeType,
        reclass:
            null == reclass
                ? _value.reclass
                : reclass // ignore: cast_nullable_to_non_nullable
                    as FreeType,
        females:
            null == females
                ? _value._females
                : females // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        males:
            null == males
                ? _value._males
                : males // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        clubs:
            null == clubs
                ? _value._clubs
                : clubs // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        imgType:
            null == imgType
                ? _value.imgType
                : imgType // ignore: cast_nullable_to_non_nullable
                    as int,
        seoBaidu:
            null == seoBaidu
                ? _value.seoBaidu
                : seoBaidu // ignore: cast_nullable_to_non_nullable
                    as String,
        region:
            null == region
                ? _value.region
                : region // ignore: cast_nullable_to_non_nullable
                    as FreeType,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as FreeType,
        author:
            null == author
                ? _value._author
                : author // ignore: cast_nullable_to_non_nullable
                    as List<Author>,
        theme:
            null == theme
                ? _value._theme
                : theme // ignore: cast_nullable_to_non_nullable
                    as List<Author>,
        parodies:
            null == parodies
                ? _value._parodies
                : parodies // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        brief:
            null == brief
                ? _value.brief
                : brief // ignore: cast_nullable_to_non_nullable
                    as String,
        datetimeUpdated:
            null == datetimeUpdated
                ? _value.datetimeUpdated
                : datetimeUpdated // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        cover:
            null == cover
                ? _value.cover
                : cover // ignore: cast_nullable_to_non_nullable
                    as String,
        lastChapter:
            null == lastChapter
                ? _value.lastChapter
                : lastChapter // ignore: cast_nullable_to_non_nullable
                    as LastChapter,
        popular:
            null == popular
                ? _value.popular
                : popular // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicImpl implements _Comic {
  const _$ComicImpl({
    @JsonKey(name: "uuid") required this.uuid,
    @JsonKey(name: "b_404") required this.b404,
    @JsonKey(name: "b_hidden") required this.bHidden,
    @JsonKey(name: "ban") required this.ban,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "alias") required this.alias,
    @JsonKey(name: "path_word") required this.pathWord,
    @JsonKey(name: "close_comment") required this.closeComment,
    @JsonKey(name: "close_roast") required this.closeRoast,
    @JsonKey(name: "free_type") required this.freeType,
    @JsonKey(name: "restrict") required this.restrict,
    @JsonKey(name: "reclass") required this.reclass,
    @JsonKey(name: "females") required final List<dynamic> females,
    @JsonKey(name: "males") required final List<dynamic> males,
    @JsonKey(name: "clubs") required final List<dynamic> clubs,
    @JsonKey(name: "img_type") required this.imgType,
    @JsonKey(name: "seo_baidu") required this.seoBaidu,
    @JsonKey(name: "region") required this.region,
    @JsonKey(name: "status") required this.status,
    @JsonKey(name: "author") required final List<Author> author,
    @JsonKey(name: "theme") required final List<Author> theme,
    @JsonKey(name: "parodies") required final List<dynamic> parodies,
    @JsonKey(name: "brief") required this.brief,
    @JsonKey(name: "datetime_updated") required this.datetimeUpdated,
    @JsonKey(name: "cover") required this.cover,
    @JsonKey(name: "last_chapter") required this.lastChapter,
    @JsonKey(name: "popular") required this.popular,
  }) : _females = females,
       _males = males,
       _clubs = clubs,
       _author = author,
       _theme = theme,
       _parodies = parodies;

  factory _$ComicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final String uuid;
  @override
  @JsonKey(name: "b_404")
  final bool b404;
  @override
  @JsonKey(name: "b_hidden")
  final bool bHidden;
  @override
  @JsonKey(name: "ban")
  final int ban;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "alias")
  final String alias;
  @override
  @JsonKey(name: "path_word")
  final String pathWord;
  @override
  @JsonKey(name: "close_comment")
  final bool closeComment;
  @override
  @JsonKey(name: "close_roast")
  final bool closeRoast;
  @override
  @JsonKey(name: "free_type")
  final FreeType freeType;
  @override
  @JsonKey(name: "restrict")
  final FreeType restrict;
  @override
  @JsonKey(name: "reclass")
  final FreeType reclass;
  final List<dynamic> _females;
  @override
  @JsonKey(name: "females")
  List<dynamic> get females {
    if (_females is EqualUnmodifiableListView) return _females;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_females);
  }

  final List<dynamic> _males;
  @override
  @JsonKey(name: "males")
  List<dynamic> get males {
    if (_males is EqualUnmodifiableListView) return _males;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_males);
  }

  final List<dynamic> _clubs;
  @override
  @JsonKey(name: "clubs")
  List<dynamic> get clubs {
    if (_clubs is EqualUnmodifiableListView) return _clubs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_clubs);
  }

  @override
  @JsonKey(name: "img_type")
  final int imgType;
  @override
  @JsonKey(name: "seo_baidu")
  final String seoBaidu;
  @override
  @JsonKey(name: "region")
  final FreeType region;
  @override
  @JsonKey(name: "status")
  final FreeType status;
  final List<Author> _author;
  @override
  @JsonKey(name: "author")
  List<Author> get author {
    if (_author is EqualUnmodifiableListView) return _author;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_author);
  }

  final List<Author> _theme;
  @override
  @JsonKey(name: "theme")
  List<Author> get theme {
    if (_theme is EqualUnmodifiableListView) return _theme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_theme);
  }

  final List<dynamic> _parodies;
  @override
  @JsonKey(name: "parodies")
  List<dynamic> get parodies {
    if (_parodies is EqualUnmodifiableListView) return _parodies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parodies);
  }

  @override
  @JsonKey(name: "brief")
  final String brief;
  @override
  @JsonKey(name: "datetime_updated")
  final DateTime datetimeUpdated;
  @override
  @JsonKey(name: "cover")
  final String cover;
  @override
  @JsonKey(name: "last_chapter")
  final LastChapter lastChapter;
  @override
  @JsonKey(name: "popular")
  final int popular;

  @override
  String toString() {
    return 'Comic(uuid: $uuid, b404: $b404, bHidden: $bHidden, ban: $ban, name: $name, alias: $alias, pathWord: $pathWord, closeComment: $closeComment, closeRoast: $closeRoast, freeType: $freeType, restrict: $restrict, reclass: $reclass, females: $females, males: $males, clubs: $clubs, imgType: $imgType, seoBaidu: $seoBaidu, region: $region, status: $status, author: $author, theme: $theme, parodies: $parodies, brief: $brief, datetimeUpdated: $datetimeUpdated, cover: $cover, lastChapter: $lastChapter, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.b404, b404) || other.b404 == b404) &&
            (identical(other.bHidden, bHidden) || other.bHidden == bHidden) &&
            (identical(other.ban, ban) || other.ban == ban) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord) &&
            (identical(other.closeComment, closeComment) ||
                other.closeComment == closeComment) &&
            (identical(other.closeRoast, closeRoast) ||
                other.closeRoast == closeRoast) &&
            (identical(other.freeType, freeType) ||
                other.freeType == freeType) &&
            (identical(other.restrict, restrict) ||
                other.restrict == restrict) &&
            (identical(other.reclass, reclass) || other.reclass == reclass) &&
            const DeepCollectionEquality().equals(other._females, _females) &&
            const DeepCollectionEquality().equals(other._males, _males) &&
            const DeepCollectionEquality().equals(other._clubs, _clubs) &&
            (identical(other.imgType, imgType) || other.imgType == imgType) &&
            (identical(other.seoBaidu, seoBaidu) ||
                other.seoBaidu == seoBaidu) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other._theme, _theme) &&
            const DeepCollectionEquality().equals(other._parodies, _parodies) &&
            (identical(other.brief, brief) || other.brief == brief) &&
            (identical(other.datetimeUpdated, datetimeUpdated) ||
                other.datetimeUpdated == datetimeUpdated) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.lastChapter, lastChapter) ||
                other.lastChapter == lastChapter) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    uuid,
    b404,
    bHidden,
    ban,
    name,
    alias,
    pathWord,
    closeComment,
    closeRoast,
    freeType,
    restrict,
    reclass,
    const DeepCollectionEquality().hash(_females),
    const DeepCollectionEquality().hash(_males),
    const DeepCollectionEquality().hash(_clubs),
    imgType,
    seoBaidu,
    region,
    status,
    const DeepCollectionEquality().hash(_author),
    const DeepCollectionEquality().hash(_theme),
    const DeepCollectionEquality().hash(_parodies),
    brief,
    datetimeUpdated,
    cover,
    lastChapter,
    popular,
  ]);

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
    @JsonKey(name: "uuid") required final String uuid,
    @JsonKey(name: "b_404") required final bool b404,
    @JsonKey(name: "b_hidden") required final bool bHidden,
    @JsonKey(name: "ban") required final int ban,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "alias") required final String alias,
    @JsonKey(name: "path_word") required final String pathWord,
    @JsonKey(name: "close_comment") required final bool closeComment,
    @JsonKey(name: "close_roast") required final bool closeRoast,
    @JsonKey(name: "free_type") required final FreeType freeType,
    @JsonKey(name: "restrict") required final FreeType restrict,
    @JsonKey(name: "reclass") required final FreeType reclass,
    @JsonKey(name: "females") required final List<dynamic> females,
    @JsonKey(name: "males") required final List<dynamic> males,
    @JsonKey(name: "clubs") required final List<dynamic> clubs,
    @JsonKey(name: "img_type") required final int imgType,
    @JsonKey(name: "seo_baidu") required final String seoBaidu,
    @JsonKey(name: "region") required final FreeType region,
    @JsonKey(name: "status") required final FreeType status,
    @JsonKey(name: "author") required final List<Author> author,
    @JsonKey(name: "theme") required final List<Author> theme,
    @JsonKey(name: "parodies") required final List<dynamic> parodies,
    @JsonKey(name: "brief") required final String brief,
    @JsonKey(name: "datetime_updated") required final DateTime datetimeUpdated,
    @JsonKey(name: "cover") required final String cover,
    @JsonKey(name: "last_chapter") required final LastChapter lastChapter,
    @JsonKey(name: "popular") required final int popular,
  }) = _$ComicImpl;

  factory _Comic.fromJson(Map<String, dynamic> json) = _$ComicImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "b_404")
  bool get b404;
  @override
  @JsonKey(name: "b_hidden")
  bool get bHidden;
  @override
  @JsonKey(name: "ban")
  int get ban;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "alias")
  String get alias;
  @override
  @JsonKey(name: "path_word")
  String get pathWord;
  @override
  @JsonKey(name: "close_comment")
  bool get closeComment;
  @override
  @JsonKey(name: "close_roast")
  bool get closeRoast;
  @override
  @JsonKey(name: "free_type")
  FreeType get freeType;
  @override
  @JsonKey(name: "restrict")
  FreeType get restrict;
  @override
  @JsonKey(name: "reclass")
  FreeType get reclass;
  @override
  @JsonKey(name: "females")
  List<dynamic> get females;
  @override
  @JsonKey(name: "males")
  List<dynamic> get males;
  @override
  @JsonKey(name: "clubs")
  List<dynamic> get clubs;
  @override
  @JsonKey(name: "img_type")
  int get imgType;
  @override
  @JsonKey(name: "seo_baidu")
  String get seoBaidu;
  @override
  @JsonKey(name: "region")
  FreeType get region;
  @override
  @JsonKey(name: "status")
  FreeType get status;
  @override
  @JsonKey(name: "author")
  List<Author> get author;
  @override
  @JsonKey(name: "theme")
  List<Author> get theme;
  @override
  @JsonKey(name: "parodies")
  List<dynamic> get parodies;
  @override
  @JsonKey(name: "brief")
  String get brief;
  @override
  @JsonKey(name: "datetime_updated")
  DateTime get datetimeUpdated;
  @override
  @JsonKey(name: "cover")
  String get cover;
  @override
  @JsonKey(name: "last_chapter")
  LastChapter get lastChapter;
  @override
  @JsonKey(name: "popular")
  int get popular;

  /// Create a copy of Comic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComicImplCopyWith<_$ComicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Author _$AuthorFromJson(Map<String, dynamic> json) {
  return _Author.fromJson(json);
}

/// @nodoc
mixin _$Author {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;

  /// Serializes this Author to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthorCopyWith<Author> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthorCopyWith<$Res> {
  factory $AuthorCopyWith(Author value, $Res Function(Author) then) =
      _$AuthorCopyWithImpl<$Res, Author>;
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "path_word") String pathWord,
  });
}

/// @nodoc
class _$AuthorCopyWithImpl<$Res, $Val extends Author>
    implements $AuthorCopyWith<$Res> {
  _$AuthorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? pathWord = null}) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            pathWord:
                null == pathWord
                    ? _value.pathWord
                    : pathWord // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$AuthorImplCopyWith<$Res> implements $AuthorCopyWith<$Res> {
  factory _$$AuthorImplCopyWith(
    _$AuthorImpl value,
    $Res Function(_$AuthorImpl) then,
  ) = __$$AuthorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "path_word") String pathWord,
  });
}

/// @nodoc
class __$$AuthorImplCopyWithImpl<$Res>
    extends _$AuthorCopyWithImpl<$Res, _$AuthorImpl>
    implements _$$AuthorImplCopyWith<$Res> {
  __$$AuthorImplCopyWithImpl(
    _$AuthorImpl _value,
    $Res Function(_$AuthorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? pathWord = null}) {
    return _then(
      _$AuthorImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        pathWord:
            null == pathWord
                ? _value.pathWord
                : pathWord // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthorImpl implements _Author {
  const _$AuthorImpl({
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "path_word") required this.pathWord,
  });

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "path_word")
  final String pathWord;

  @override
  String toString() {
    return 'Author(name: $name, pathWord: $pathWord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, pathWord);

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      __$$AuthorImplCopyWithImpl<_$AuthorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthorImplToJson(this);
  }
}

abstract class _Author implements Author {
  const factory _Author({
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "path_word") required final String pathWord,
  }) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "path_word")
  String get pathWord;

  /// Create a copy of Author
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthorImplCopyWith<_$AuthorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FreeType _$FreeTypeFromJson(Map<String, dynamic> json) {
  return _FreeType.fromJson(json);
}

/// @nodoc
mixin _$FreeType {
  @JsonKey(name: "display")
  String get display => throw _privateConstructorUsedError;
  @JsonKey(name: "value")
  int get value => throw _privateConstructorUsedError;

  /// Serializes this FreeType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FreeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FreeTypeCopyWith<FreeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreeTypeCopyWith<$Res> {
  factory $FreeTypeCopyWith(FreeType value, $Res Function(FreeType) then) =
      _$FreeTypeCopyWithImpl<$Res, FreeType>;
  @useResult
  $Res call({
    @JsonKey(name: "display") String display,
    @JsonKey(name: "value") int value,
  });
}

/// @nodoc
class _$FreeTypeCopyWithImpl<$Res, $Val extends FreeType>
    implements $FreeTypeCopyWith<$Res> {
  _$FreeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FreeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? display = null, Object? value = null}) {
    return _then(
      _value.copyWith(
            display:
                null == display
                    ? _value.display
                    : display // ignore: cast_nullable_to_non_nullable
                        as String,
            value:
                null == value
                    ? _value.value
                    : value // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FreeTypeImplCopyWith<$Res>
    implements $FreeTypeCopyWith<$Res> {
  factory _$$FreeTypeImplCopyWith(
    _$FreeTypeImpl value,
    $Res Function(_$FreeTypeImpl) then,
  ) = __$$FreeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "display") String display,
    @JsonKey(name: "value") int value,
  });
}

/// @nodoc
class __$$FreeTypeImplCopyWithImpl<$Res>
    extends _$FreeTypeCopyWithImpl<$Res, _$FreeTypeImpl>
    implements _$$FreeTypeImplCopyWith<$Res> {
  __$$FreeTypeImplCopyWithImpl(
    _$FreeTypeImpl _value,
    $Res Function(_$FreeTypeImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FreeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? display = null, Object? value = null}) {
    return _then(
      _$FreeTypeImpl(
        display:
            null == display
                ? _value.display
                : display // ignore: cast_nullable_to_non_nullable
                    as String,
        value:
            null == value
                ? _value.value
                : value // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$FreeTypeImpl implements _FreeType {
  const _$FreeTypeImpl({
    @JsonKey(name: "display") required this.display,
    @JsonKey(name: "value") required this.value,
  });

  factory _$FreeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreeTypeImplFromJson(json);

  @override
  @JsonKey(name: "display")
  final String display;
  @override
  @JsonKey(name: "value")
  final int value;

  @override
  String toString() {
    return 'FreeType(display: $display, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreeTypeImpl &&
            (identical(other.display, display) || other.display == display) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, display, value);

  /// Create a copy of FreeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FreeTypeImplCopyWith<_$FreeTypeImpl> get copyWith =>
      __$$FreeTypeImplCopyWithImpl<_$FreeTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreeTypeImplToJson(this);
  }
}

abstract class _FreeType implements FreeType {
  const factory _FreeType({
    @JsonKey(name: "display") required final String display,
    @JsonKey(name: "value") required final int value,
  }) = _$FreeTypeImpl;

  factory _FreeType.fromJson(Map<String, dynamic> json) =
      _$FreeTypeImpl.fromJson;

  @override
  @JsonKey(name: "display")
  String get display;
  @override
  @JsonKey(name: "value")
  int get value;

  /// Create a copy of FreeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FreeTypeImplCopyWith<_$FreeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LastChapter _$LastChapterFromJson(Map<String, dynamic> json) {
  return _LastChapter.fromJson(json);
}

/// @nodoc
mixin _$LastChapter {
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LastChapter to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LastChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LastChapterCopyWith<LastChapter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LastChapterCopyWith<$Res> {
  factory $LastChapterCopyWith(
    LastChapter value,
    $Res Function(LastChapter) then,
  ) = _$LastChapterCopyWithImpl<$Res, LastChapter>;
  @useResult
  $Res call({
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "name") String name,
  });
}

/// @nodoc
class _$LastChapterCopyWithImpl<$Res, $Val extends LastChapter>
    implements $LastChapterCopyWith<$Res> {
  _$LastChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LastChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uuid = null, Object? name = null}) {
    return _then(
      _value.copyWith(
            uuid:
                null == uuid
                    ? _value.uuid
                    : uuid // ignore: cast_nullable_to_non_nullable
                        as String,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LastChapterImplCopyWith<$Res>
    implements $LastChapterCopyWith<$Res> {
  factory _$$LastChapterImplCopyWith(
    _$LastChapterImpl value,
    $Res Function(_$LastChapterImpl) then,
  ) = __$$LastChapterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "name") String name,
  });
}

/// @nodoc
class __$$LastChapterImplCopyWithImpl<$Res>
    extends _$LastChapterCopyWithImpl<$Res, _$LastChapterImpl>
    implements _$$LastChapterImplCopyWith<$Res> {
  __$$LastChapterImplCopyWithImpl(
    _$LastChapterImpl _value,
    $Res Function(_$LastChapterImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LastChapter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? uuid = null, Object? name = null}) {
    return _then(
      _$LastChapterImpl(
        uuid:
            null == uuid
                ? _value.uuid
                : uuid // ignore: cast_nullable_to_non_nullable
                    as String,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LastChapterImpl implements _LastChapter {
  const _$LastChapterImpl({
    @JsonKey(name: "uuid") required this.uuid,
    @JsonKey(name: "name") required this.name,
  });

  factory _$LastChapterImpl.fromJson(Map<String, dynamic> json) =>
      _$$LastChapterImplFromJson(json);

  @override
  @JsonKey(name: "uuid")
  final String uuid;
  @override
  @JsonKey(name: "name")
  final String name;

  @override
  String toString() {
    return 'LastChapter(uuid: $uuid, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LastChapterImpl &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uuid, name);

  /// Create a copy of LastChapter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LastChapterImplCopyWith<_$LastChapterImpl> get copyWith =>
      __$$LastChapterImplCopyWithImpl<_$LastChapterImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LastChapterImplToJson(this);
  }
}

abstract class _LastChapter implements LastChapter {
  const factory _LastChapter({
    @JsonKey(name: "uuid") required final String uuid,
    @JsonKey(name: "name") required final String name,
  }) = _$LastChapterImpl;

  factory _LastChapter.fromJson(Map<String, dynamic> json) =
      _$LastChapterImpl.fromJson;

  @override
  @JsonKey(name: "uuid")
  String get uuid;
  @override
  @JsonKey(name: "name")
  String get name;

  /// Create a copy of LastChapter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LastChapterImplCopyWith<_$LastChapterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
