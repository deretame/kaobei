// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comic_all_info_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ComicAllInfoJson _$ComicAllInfoJsonFromJson(Map<String, dynamic> json) {
  return _ComicAllInfoJson.fromJson(json);
}

/// @nodoc
mixin _$ComicAllInfoJson {
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
  ComicAllInfoJsonComic get comic => throw _privateConstructorUsedError;
  @JsonKey(name: "popular")
  int get popular => throw _privateConstructorUsedError;
  @JsonKey(name: "groups")
  List<Group> get groups => throw _privateConstructorUsedError;

  /// Serializes this ComicAllInfoJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComicAllInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComicAllInfoJsonCopyWith<ComicAllInfoJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicAllInfoJsonCopyWith<$Res> {
  factory $ComicAllInfoJsonCopyWith(
    ComicAllInfoJson value,
    $Res Function(ComicAllInfoJson) then,
  ) = _$ComicAllInfoJsonCopyWithImpl<$Res, ComicAllInfoJson>;
  @useResult
  $Res call({
    @JsonKey(name: "is_banned") bool isBanned,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") ComicAllInfoJsonComic comic,
    @JsonKey(name: "popular") int popular,
    @JsonKey(name: "groups") List<Group> groups,
  });

  $ComicAllInfoJsonComicCopyWith<$Res> get comic;
}

/// @nodoc
class _$ComicAllInfoJsonCopyWithImpl<$Res, $Val extends ComicAllInfoJson>
    implements $ComicAllInfoJsonCopyWith<$Res> {
  _$ComicAllInfoJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComicAllInfoJson
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
    Object? groups = null,
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
                        as ComicAllInfoJsonComic,
            popular:
                null == popular
                    ? _value.popular
                    : popular // ignore: cast_nullable_to_non_nullable
                        as int,
            groups:
                null == groups
                    ? _value.groups
                    : groups // ignore: cast_nullable_to_non_nullable
                        as List<Group>,
          )
          as $Val,
    );
  }

  /// Create a copy of ComicAllInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ComicAllInfoJsonComicCopyWith<$Res> get comic {
    return $ComicAllInfoJsonComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ComicAllInfoJsonImplCopyWith<$Res>
    implements $ComicAllInfoJsonCopyWith<$Res> {
  factory _$$ComicAllInfoJsonImplCopyWith(
    _$ComicAllInfoJsonImpl value,
    $Res Function(_$ComicAllInfoJsonImpl) then,
  ) = __$$ComicAllInfoJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "is_banned") bool isBanned,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") ComicAllInfoJsonComic comic,
    @JsonKey(name: "popular") int popular,
    @JsonKey(name: "groups") List<Group> groups,
  });

  @override
  $ComicAllInfoJsonComicCopyWith<$Res> get comic;
}

/// @nodoc
class __$$ComicAllInfoJsonImplCopyWithImpl<$Res>
    extends _$ComicAllInfoJsonCopyWithImpl<$Res, _$ComicAllInfoJsonImpl>
    implements _$$ComicAllInfoJsonImplCopyWith<$Res> {
  __$$ComicAllInfoJsonImplCopyWithImpl(
    _$ComicAllInfoJsonImpl _value,
    $Res Function(_$ComicAllInfoJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComicAllInfoJson
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
    Object? groups = null,
  }) {
    return _then(
      _$ComicAllInfoJsonImpl(
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
                    as ComicAllInfoJsonComic,
        popular:
            null == popular
                ? _value.popular
                : popular // ignore: cast_nullable_to_non_nullable
                    as int,
        groups:
            null == groups
                ? _value._groups
                : groups // ignore: cast_nullable_to_non_nullable
                    as List<Group>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ComicAllInfoJsonImpl implements _ComicAllInfoJson {
  const _$ComicAllInfoJsonImpl({
    @JsonKey(name: "is_banned") required this.isBanned,
    @JsonKey(name: "is_lock") required this.isLock,
    @JsonKey(name: "is_login") required this.isLogin,
    @JsonKey(name: "is_mobile_bind") required this.isMobileBind,
    @JsonKey(name: "is_vip") required this.isVip,
    @JsonKey(name: "comic") required this.comic,
    @JsonKey(name: "popular") required this.popular,
    @JsonKey(name: "groups") required final List<Group> groups,
  }) : _groups = groups;

  factory _$ComicAllInfoJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicAllInfoJsonImplFromJson(json);

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
  final ComicAllInfoJsonComic comic;
  @override
  @JsonKey(name: "popular")
  final int popular;
  final List<Group> _groups;
  @override
  @JsonKey(name: "groups")
  List<Group> get groups {
    if (_groups is EqualUnmodifiableListView) return _groups;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  @override
  String toString() {
    return 'ComicAllInfoJson(isBanned: $isBanned, isLock: $isLock, isLogin: $isLogin, isMobileBind: $isMobileBind, isVip: $isVip, comic: $comic, popular: $popular, groups: $groups)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicAllInfoJsonImpl &&
            (identical(other.isBanned, isBanned) ||
                other.isBanned == isBanned) &&
            (identical(other.isLock, isLock) || other.isLock == isLock) &&
            (identical(other.isLogin, isLogin) || other.isLogin == isLogin) &&
            (identical(other.isMobileBind, isMobileBind) ||
                other.isMobileBind == isMobileBind) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.comic, comic) || other.comic == comic) &&
            (identical(other.popular, popular) || other.popular == popular) &&
            const DeepCollectionEquality().equals(other._groups, _groups));
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
    const DeepCollectionEquality().hash(_groups),
  );

  /// Create a copy of ComicAllInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicAllInfoJsonImplCopyWith<_$ComicAllInfoJsonImpl> get copyWith =>
      __$$ComicAllInfoJsonImplCopyWithImpl<_$ComicAllInfoJsonImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicAllInfoJsonImplToJson(this);
  }
}

abstract class _ComicAllInfoJson implements ComicAllInfoJson {
  const factory _ComicAllInfoJson({
    @JsonKey(name: "is_banned") required final bool isBanned,
    @JsonKey(name: "is_lock") required final bool isLock,
    @JsonKey(name: "is_login") required final bool isLogin,
    @JsonKey(name: "is_mobile_bind") required final bool isMobileBind,
    @JsonKey(name: "is_vip") required final bool isVip,
    @JsonKey(name: "comic") required final ComicAllInfoJsonComic comic,
    @JsonKey(name: "popular") required final int popular,
    @JsonKey(name: "groups") required final List<Group> groups,
  }) = _$ComicAllInfoJsonImpl;

  factory _ComicAllInfoJson.fromJson(Map<String, dynamic> json) =
      _$ComicAllInfoJsonImpl.fromJson;

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
  ComicAllInfoJsonComic get comic;
  @override
  @JsonKey(name: "popular")
  int get popular;
  @override
  @JsonKey(name: "groups")
  List<Group> get groups;

  /// Create a copy of ComicAllInfoJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComicAllInfoJsonImplCopyWith<_$ComicAllInfoJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ComicAllInfoJsonComic _$ComicAllInfoJsonComicFromJson(
  Map<String, dynamic> json,
) {
  return _ComicAllInfoJsonComic.fromJson(json);
}

/// @nodoc
mixin _$ComicAllInfoJsonComic {
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

  /// Serializes this ComicAllInfoJsonComic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComicAllInfoJsonComicCopyWith<ComicAllInfoJsonComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComicAllInfoJsonComicCopyWith<$Res> {
  factory $ComicAllInfoJsonComicCopyWith(
    ComicAllInfoJsonComic value,
    $Res Function(ComicAllInfoJsonComic) then,
  ) = _$ComicAllInfoJsonComicCopyWithImpl<$Res, ComicAllInfoJsonComic>;
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
class _$ComicAllInfoJsonComicCopyWithImpl<
  $Res,
  $Val extends ComicAllInfoJsonComic
>
    implements $ComicAllInfoJsonComicCopyWith<$Res> {
  _$ComicAllInfoJsonComicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComicAllInfoJsonComic
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

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get freeType {
    return $FreeTypeCopyWith<$Res>(_value.freeType, (value) {
      return _then(_value.copyWith(freeType: value) as $Val);
    });
  }

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get restrict {
    return $FreeTypeCopyWith<$Res>(_value.restrict, (value) {
      return _then(_value.copyWith(restrict: value) as $Val);
    });
  }

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get reclass {
    return $FreeTypeCopyWith<$Res>(_value.reclass, (value) {
      return _then(_value.copyWith(reclass: value) as $Val);
    });
  }

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get region {
    return $FreeTypeCopyWith<$Res>(_value.region, (value) {
      return _then(_value.copyWith(region: value) as $Val);
    });
  }

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get status {
    return $FreeTypeCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  /// Create a copy of ComicAllInfoJsonComic
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
abstract class _$$ComicAllInfoJsonComicImplCopyWith<$Res>
    implements $ComicAllInfoJsonComicCopyWith<$Res> {
  factory _$$ComicAllInfoJsonComicImplCopyWith(
    _$ComicAllInfoJsonComicImpl value,
    $Res Function(_$ComicAllInfoJsonComicImpl) then,
  ) = __$$ComicAllInfoJsonComicImplCopyWithImpl<$Res>;
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
class __$$ComicAllInfoJsonComicImplCopyWithImpl<$Res>
    extends
        _$ComicAllInfoJsonComicCopyWithImpl<$Res, _$ComicAllInfoJsonComicImpl>
    implements _$$ComicAllInfoJsonComicImplCopyWith<$Res> {
  __$$ComicAllInfoJsonComicImplCopyWithImpl(
    _$ComicAllInfoJsonComicImpl _value,
    $Res Function(_$ComicAllInfoJsonComicImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ComicAllInfoJsonComic
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
      _$ComicAllInfoJsonComicImpl(
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
class _$ComicAllInfoJsonComicImpl implements _ComicAllInfoJsonComic {
  const _$ComicAllInfoJsonComicImpl({
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

  factory _$ComicAllInfoJsonComicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ComicAllInfoJsonComicImplFromJson(json);

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
    return 'ComicAllInfoJsonComic(uuid: $uuid, b404: $b404, bHidden: $bHidden, ban: $ban, name: $name, alias: $alias, pathWord: $pathWord, closeComment: $closeComment, closeRoast: $closeRoast, freeType: $freeType, restrict: $restrict, reclass: $reclass, females: $females, males: $males, clubs: $clubs, imgType: $imgType, seoBaidu: $seoBaidu, region: $region, status: $status, author: $author, theme: $theme, parodies: $parodies, brief: $brief, datetimeUpdated: $datetimeUpdated, cover: $cover, lastChapter: $lastChapter, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComicAllInfoJsonComicImpl &&
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

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComicAllInfoJsonComicImplCopyWith<_$ComicAllInfoJsonComicImpl>
  get copyWith =>
      __$$ComicAllInfoJsonComicImplCopyWithImpl<_$ComicAllInfoJsonComicImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ComicAllInfoJsonComicImplToJson(this);
  }
}

abstract class _ComicAllInfoJsonComic implements ComicAllInfoJsonComic {
  const factory _ComicAllInfoJsonComic({
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
  }) = _$ComicAllInfoJsonComicImpl;

  factory _ComicAllInfoJsonComic.fromJson(Map<String, dynamic> json) =
      _$ComicAllInfoJsonComicImpl.fromJson;

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

  /// Create a copy of ComicAllInfoJsonComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComicAllInfoJsonComicImplCopyWith<_$ComicAllInfoJsonComicImpl>
  get copyWith => throw _privateConstructorUsedError;
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

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
mixin _$Group {
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "chapter_list")
  List<ChapterList> get chapterList => throw _privateConstructorUsedError;

  /// Serializes this Group to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res, Group>;
  @useResult
  $Res call({
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "count") int count,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "chapter_list") List<ChapterList> chapterList,
  });
}

/// @nodoc
class _$GroupCopyWithImpl<$Res, $Val extends Group>
    implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathWord = null,
    Object? count = null,
    Object? name = null,
    Object? chapterList = null,
  }) {
    return _then(
      _value.copyWith(
            pathWord:
                null == pathWord
                    ? _value.pathWord
                    : pathWord // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            chapterList:
                null == chapterList
                    ? _value.chapterList
                    : chapterList // ignore: cast_nullable_to_non_nullable
                        as List<ChapterList>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$GroupImplCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$$GroupImplCopyWith(
    _$GroupImpl value,
    $Res Function(_$GroupImpl) then,
  ) = __$$GroupImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "count") int count,
    @JsonKey(name: "name") String name,
    @JsonKey(name: "chapter_list") List<ChapterList> chapterList,
  });
}

/// @nodoc
class __$$GroupImplCopyWithImpl<$Res>
    extends _$GroupCopyWithImpl<$Res, _$GroupImpl>
    implements _$$GroupImplCopyWith<$Res> {
  __$$GroupImplCopyWithImpl(
    _$GroupImpl _value,
    $Res Function(_$GroupImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pathWord = null,
    Object? count = null,
    Object? name = null,
    Object? chapterList = null,
  }) {
    return _then(
      _$GroupImpl(
        pathWord:
            null == pathWord
                ? _value.pathWord
                : pathWord // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        chapterList:
            null == chapterList
                ? _value._chapterList
                : chapterList // ignore: cast_nullable_to_non_nullable
                    as List<ChapterList>,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$GroupImpl implements _Group {
  const _$GroupImpl({
    @JsonKey(name: "path_word") required this.pathWord,
    @JsonKey(name: "count") required this.count,
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "chapter_list") required final List<ChapterList> chapterList,
  }) : _chapterList = chapterList;

  factory _$GroupImpl.fromJson(Map<String, dynamic> json) =>
      _$$GroupImplFromJson(json);

  @override
  @JsonKey(name: "path_word")
  final String pathWord;
  @override
  @JsonKey(name: "count")
  final int count;
  @override
  @JsonKey(name: "name")
  final String name;
  final List<ChapterList> _chapterList;
  @override
  @JsonKey(name: "chapter_list")
  List<ChapterList> get chapterList {
    if (_chapterList is EqualUnmodifiableListView) return _chapterList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chapterList);
  }

  @override
  String toString() {
    return 'Group(pathWord: $pathWord, count: $count, name: $name, chapterList: $chapterList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GroupImpl &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(
              other._chapterList,
              _chapterList,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    pathWord,
    count,
    name,
    const DeepCollectionEquality().hash(_chapterList),
  );

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      __$$GroupImplCopyWithImpl<_$GroupImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GroupImplToJson(this);
  }
}

abstract class _Group implements Group {
  const factory _Group({
    @JsonKey(name: "path_word") required final String pathWord,
    @JsonKey(name: "count") required final int count,
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "chapter_list") required final List<ChapterList> chapterList,
  }) = _$GroupImpl;

  factory _Group.fromJson(Map<String, dynamic> json) = _$GroupImpl.fromJson;

  @override
  @JsonKey(name: "path_word")
  String get pathWord;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "chapter_list")
  List<ChapterList> get chapterList;

  /// Create a copy of Group
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GroupImplCopyWith<_$GroupImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterList _$ChapterListFromJson(Map<String, dynamic> json) {
  return _ChapterList.fromJson(json);
}

/// @nodoc
mixin _$ChapterList {
  @JsonKey(name: "chapter_info")
  ChapterInfo get chapterInfo => throw _privateConstructorUsedError;

  /// Serializes this ChapterList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterListCopyWith<ChapterList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterListCopyWith<$Res> {
  factory $ChapterListCopyWith(
    ChapterList value,
    $Res Function(ChapterList) then,
  ) = _$ChapterListCopyWithImpl<$Res, ChapterList>;
  @useResult
  $Res call({@JsonKey(name: "chapter_info") ChapterInfo chapterInfo});

  $ChapterInfoCopyWith<$Res> get chapterInfo;
}

/// @nodoc
class _$ChapterListCopyWithImpl<$Res, $Val extends ChapterList>
    implements $ChapterListCopyWith<$Res> {
  _$ChapterListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chapterInfo = null}) {
    return _then(
      _value.copyWith(
            chapterInfo:
                null == chapterInfo
                    ? _value.chapterInfo
                    : chapterInfo // ignore: cast_nullable_to_non_nullable
                        as ChapterInfo,
          )
          as $Val,
    );
  }

  /// Create a copy of ChapterList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoCopyWith<$Res> get chapterInfo {
    return $ChapterInfoCopyWith<$Res>(_value.chapterInfo, (value) {
      return _then(_value.copyWith(chapterInfo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterListImplCopyWith<$Res>
    implements $ChapterListCopyWith<$Res> {
  factory _$$ChapterListImplCopyWith(
    _$ChapterListImpl value,
    $Res Function(_$ChapterListImpl) then,
  ) = __$$ChapterListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "chapter_info") ChapterInfo chapterInfo});

  @override
  $ChapterInfoCopyWith<$Res> get chapterInfo;
}

/// @nodoc
class __$$ChapterListImplCopyWithImpl<$Res>
    extends _$ChapterListCopyWithImpl<$Res, _$ChapterListImpl>
    implements _$$ChapterListImplCopyWith<$Res> {
  __$$ChapterListImplCopyWithImpl(
    _$ChapterListImpl _value,
    $Res Function(_$ChapterListImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? chapterInfo = null}) {
    return _then(
      _$ChapterListImpl(
        chapterInfo:
            null == chapterInfo
                ? _value.chapterInfo
                : chapterInfo // ignore: cast_nullable_to_non_nullable
                    as ChapterInfo,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterListImpl implements _ChapterList {
  const _$ChapterListImpl({
    @JsonKey(name: "chapter_info") required this.chapterInfo,
  });

  factory _$ChapterListImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterListImplFromJson(json);

  @override
  @JsonKey(name: "chapter_info")
  final ChapterInfo chapterInfo;

  @override
  String toString() {
    return 'ChapterList(chapterInfo: $chapterInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterListImpl &&
            (identical(other.chapterInfo, chapterInfo) ||
                other.chapterInfo == chapterInfo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, chapterInfo);

  /// Create a copy of ChapterList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterListImplCopyWith<_$ChapterListImpl> get copyWith =>
      __$$ChapterListImplCopyWithImpl<_$ChapterListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterListImplToJson(this);
  }
}

abstract class _ChapterList implements ChapterList {
  const factory _ChapterList({
    @JsonKey(name: "chapter_info") required final ChapterInfo chapterInfo,
  }) = _$ChapterListImpl;

  factory _ChapterList.fromJson(Map<String, dynamic> json) =
      _$ChapterListImpl.fromJson;

  @override
  @JsonKey(name: "chapter_info")
  ChapterInfo get chapterInfo;

  /// Create a copy of ChapterList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterListImplCopyWith<_$ChapterListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ChapterInfo _$ChapterInfoFromJson(Map<String, dynamic> json) {
  return _ChapterInfo.fromJson(json);
}

/// @nodoc
mixin _$ChapterInfo {
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
  ChapterInfoComic get comic => throw _privateConstructorUsedError;
  @JsonKey(name: "chapter")
  Chapter get chapter => throw _privateConstructorUsedError;
  @JsonKey(name: "is_banned")
  bool get isBanned => throw _privateConstructorUsedError;

  /// Serializes this ChapterInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterInfoCopyWith<ChapterInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterInfoCopyWith<$Res> {
  factory $ChapterInfoCopyWith(
    ChapterInfo value,
    $Res Function(ChapterInfo) then,
  ) = _$ChapterInfoCopyWithImpl<$Res, ChapterInfo>;
  @useResult
  $Res call({
    @JsonKey(name: "show_app") bool showApp,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") ChapterInfoComic comic,
    @JsonKey(name: "chapter") Chapter chapter,
    @JsonKey(name: "is_banned") bool isBanned,
  });

  $ChapterInfoComicCopyWith<$Res> get comic;
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class _$ChapterInfoCopyWithImpl<$Res, $Val extends ChapterInfo>
    implements $ChapterInfoCopyWith<$Res> {
  _$ChapterInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterInfo
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
                        as ChapterInfoComic,
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

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChapterInfoComicCopyWith<$Res> get comic {
    return $ChapterInfoComicCopyWith<$Res>(_value.comic, (value) {
      return _then(_value.copyWith(comic: value) as $Val);
    });
  }

  /// Create a copy of ChapterInfo
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
abstract class _$$ChapterInfoImplCopyWith<$Res>
    implements $ChapterInfoCopyWith<$Res> {
  factory _$$ChapterInfoImplCopyWith(
    _$ChapterInfoImpl value,
    $Res Function(_$ChapterInfoImpl) then,
  ) = __$$ChapterInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "show_app") bool showApp,
    @JsonKey(name: "is_lock") bool isLock,
    @JsonKey(name: "is_login") bool isLogin,
    @JsonKey(name: "is_mobile_bind") bool isMobileBind,
    @JsonKey(name: "is_vip") bool isVip,
    @JsonKey(name: "comic") ChapterInfoComic comic,
    @JsonKey(name: "chapter") Chapter chapter,
    @JsonKey(name: "is_banned") bool isBanned,
  });

  @override
  $ChapterInfoComicCopyWith<$Res> get comic;
  @override
  $ChapterCopyWith<$Res> get chapter;
}

/// @nodoc
class __$$ChapterInfoImplCopyWithImpl<$Res>
    extends _$ChapterInfoCopyWithImpl<$Res, _$ChapterInfoImpl>
    implements _$$ChapterInfoImplCopyWith<$Res> {
  __$$ChapterInfoImplCopyWithImpl(
    _$ChapterInfoImpl _value,
    $Res Function(_$ChapterInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterInfo
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
      _$ChapterInfoImpl(
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
                    as ChapterInfoComic,
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
class _$ChapterInfoImpl implements _ChapterInfo {
  const _$ChapterInfoImpl({
    @JsonKey(name: "show_app") required this.showApp,
    @JsonKey(name: "is_lock") required this.isLock,
    @JsonKey(name: "is_login") required this.isLogin,
    @JsonKey(name: "is_mobile_bind") required this.isMobileBind,
    @JsonKey(name: "is_vip") required this.isVip,
    @JsonKey(name: "comic") required this.comic,
    @JsonKey(name: "chapter") required this.chapter,
    @JsonKey(name: "is_banned") required this.isBanned,
  });

  factory _$ChapterInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterInfoImplFromJson(json);

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
  final ChapterInfoComic comic;
  @override
  @JsonKey(name: "chapter")
  final Chapter chapter;
  @override
  @JsonKey(name: "is_banned")
  final bool isBanned;

  @override
  String toString() {
    return 'ChapterInfo(showApp: $showApp, isLock: $isLock, isLogin: $isLogin, isMobileBind: $isMobileBind, isVip: $isVip, comic: $comic, chapter: $chapter, isBanned: $isBanned)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterInfoImpl &&
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

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterInfoImplCopyWith<_$ChapterInfoImpl> get copyWith =>
      __$$ChapterInfoImplCopyWithImpl<_$ChapterInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterInfoImplToJson(this);
  }
}

abstract class _ChapterInfo implements ChapterInfo {
  const factory _ChapterInfo({
    @JsonKey(name: "show_app") required final bool showApp,
    @JsonKey(name: "is_lock") required final bool isLock,
    @JsonKey(name: "is_login") required final bool isLogin,
    @JsonKey(name: "is_mobile_bind") required final bool isMobileBind,
    @JsonKey(name: "is_vip") required final bool isVip,
    @JsonKey(name: "comic") required final ChapterInfoComic comic,
    @JsonKey(name: "chapter") required final Chapter chapter,
    @JsonKey(name: "is_banned") required final bool isBanned,
  }) = _$ChapterInfoImpl;

  factory _ChapterInfo.fromJson(Map<String, dynamic> json) =
      _$ChapterInfoImpl.fromJson;

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
  ChapterInfoComic get comic;
  @override
  @JsonKey(name: "chapter")
  Chapter get chapter;
  @override
  @JsonKey(name: "is_banned")
  bool get isBanned;

  /// Create a copy of ChapterInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterInfoImplCopyWith<_$ChapterInfoImpl> get copyWith =>
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
  String get groupId => throw _privateConstructorUsedError;
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
  List<String> get contents => throw _privateConstructorUsedError;
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
    @JsonKey(name: "group_id") String groupId,
    @JsonKey(name: "group_path_word") String groupPathWord,
    @JsonKey(name: "type") int type,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "news") String news,
    @JsonKey(name: "datetime_created") DateTime datetimeCreated,
    @JsonKey(name: "prev") String prev,
    @JsonKey(name: "next") String next,
    @JsonKey(name: "contents") List<String> contents,
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
    Object? groupId = null,
    Object? groupPathWord = null,
    Object? type = null,
    Object? imgType = null,
    Object? news = null,
    Object? datetimeCreated = null,
    Object? prev = null,
    Object? next = null,
    Object? contents = null,
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
                null == groupId
                    ? _value.groupId
                    : groupId // ignore: cast_nullable_to_non_nullable
                        as String,
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
                        as List<String>,
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
    @JsonKey(name: "group_id") String groupId,
    @JsonKey(name: "group_path_word") String groupPathWord,
    @JsonKey(name: "type") int type,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "news") String news,
    @JsonKey(name: "datetime_created") DateTime datetimeCreated,
    @JsonKey(name: "prev") String prev,
    @JsonKey(name: "next") String next,
    @JsonKey(name: "contents") List<String> contents,
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
    Object? groupId = null,
    Object? groupPathWord = null,
    Object? type = null,
    Object? imgType = null,
    Object? news = null,
    Object? datetimeCreated = null,
    Object? prev = null,
    Object? next = null,
    Object? contents = null,
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
            null == groupId
                ? _value.groupId
                : groupId // ignore: cast_nullable_to_non_nullable
                    as String,
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
                    as List<String>,
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
    @JsonKey(name: "contents") required final List<String> contents,
    @JsonKey(name: "is_long") required this.isLong,
  }) : _contents = contents;

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
  final String groupId;
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
  final List<String> _contents;
  @override
  @JsonKey(name: "contents")
  List<String> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey(name: "is_long")
  final bool isLong;

  @override
  String toString() {
    return 'Chapter(index: $index, uuid: $uuid, count: $count, ordered: $ordered, size: $size, name: $name, comicId: $comicId, comicPathWord: $comicPathWord, groupId: $groupId, groupPathWord: $groupPathWord, type: $type, imgType: $imgType, news: $news, datetimeCreated: $datetimeCreated, prev: $prev, next: $next, contents: $contents, isLong: $isLong)';
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
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
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
            (identical(other.isLong, isLong) || other.isLong == isLong));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    index,
    uuid,
    count,
    ordered,
    size,
    name,
    comicId,
    comicPathWord,
    groupId,
    groupPathWord,
    type,
    imgType,
    news,
    datetimeCreated,
    prev,
    next,
    const DeepCollectionEquality().hash(_contents),
    isLong,
  );

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
    @JsonKey(name: "group_id") required final String groupId,
    @JsonKey(name: "group_path_word") required final String groupPathWord,
    @JsonKey(name: "type") required final int type,
    @JsonKey(name: "img_type") required final int imgType,
    @JsonKey(name: "news") required final String news,
    @JsonKey(name: "datetime_created") required final DateTime datetimeCreated,
    @JsonKey(name: "prev") required final String prev,
    @JsonKey(name: "next") required final String next,
    @JsonKey(name: "contents") required final List<String> contents,
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
  String get groupId;
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
  List<String> get contents;
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

ChapterInfoComic _$ChapterInfoComicFromJson(Map<String, dynamic> json) {
  return _ChapterInfoComic.fromJson(json);
}

/// @nodoc
mixin _$ChapterInfoComic {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "uuid")
  String get uuid => throw _privateConstructorUsedError;
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "restrict")
  FreeType get restrict => throw _privateConstructorUsedError;

  /// Serializes this ChapterInfoComic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChapterInfoComic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChapterInfoComicCopyWith<ChapterInfoComic> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterInfoComicCopyWith<$Res> {
  factory $ChapterInfoComicCopyWith(
    ChapterInfoComic value,
    $Res Function(ChapterInfoComic) then,
  ) = _$ChapterInfoComicCopyWithImpl<$Res, ChapterInfoComic>;
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "restrict") FreeType restrict,
  });

  $FreeTypeCopyWith<$Res> get restrict;
}

/// @nodoc
class _$ChapterInfoComicCopyWithImpl<$Res, $Val extends ChapterInfoComic>
    implements $ChapterInfoComicCopyWith<$Res> {
  _$ChapterInfoComicCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChapterInfoComic
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
                        as FreeType,
          )
          as $Val,
    );
  }

  /// Create a copy of ChapterInfoComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get restrict {
    return $FreeTypeCopyWith<$Res>(_value.restrict, (value) {
      return _then(_value.copyWith(restrict: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChapterInfoComicImplCopyWith<$Res>
    implements $ChapterInfoComicCopyWith<$Res> {
  factory _$$ChapterInfoComicImplCopyWith(
    _$ChapterInfoComicImpl value,
    $Res Function(_$ChapterInfoComicImpl) then,
  ) = __$$ChapterInfoComicImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "uuid") String uuid,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "restrict") FreeType restrict,
  });

  @override
  $FreeTypeCopyWith<$Res> get restrict;
}

/// @nodoc
class __$$ChapterInfoComicImplCopyWithImpl<$Res>
    extends _$ChapterInfoComicCopyWithImpl<$Res, _$ChapterInfoComicImpl>
    implements _$$ChapterInfoComicImplCopyWith<$Res> {
  __$$ChapterInfoComicImplCopyWithImpl(
    _$ChapterInfoComicImpl _value,
    $Res Function(_$ChapterInfoComicImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChapterInfoComic
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
      _$ChapterInfoComicImpl(
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
                    as FreeType,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ChapterInfoComicImpl implements _ChapterInfoComic {
  const _$ChapterInfoComicImpl({
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "uuid") required this.uuid,
    @JsonKey(name: "path_word") required this.pathWord,
    @JsonKey(name: "restrict") required this.restrict,
  });

  factory _$ChapterInfoComicImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChapterInfoComicImplFromJson(json);

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
  final FreeType restrict;

  @override
  String toString() {
    return 'ChapterInfoComic(name: $name, uuid: $uuid, pathWord: $pathWord, restrict: $restrict)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChapterInfoComicImpl &&
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

  /// Create a copy of ChapterInfoComic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChapterInfoComicImplCopyWith<_$ChapterInfoComicImpl> get copyWith =>
      __$$ChapterInfoComicImplCopyWithImpl<_$ChapterInfoComicImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$ChapterInfoComicImplToJson(this);
  }
}

abstract class _ChapterInfoComic implements ChapterInfoComic {
  const factory _ChapterInfoComic({
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "uuid") required final String uuid,
    @JsonKey(name: "path_word") required final String pathWord,
    @JsonKey(name: "restrict") required final FreeType restrict,
  }) = _$ChapterInfoComicImpl;

  factory _ChapterInfoComic.fromJson(Map<String, dynamic> json) =
      _$ChapterInfoComicImpl.fromJson;

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
  FreeType get restrict;

  /// Create a copy of ChapterInfoComic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChapterInfoComicImplCopyWith<_$ChapterInfoComicImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
