// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tag_author_search_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TagAuthorSearchJson _$TagAuthorSearchJsonFromJson(Map<String, dynamic> json) {
  return _TagAuthorSearchJson.fromJson(json);
}

/// @nodoc
mixin _$TagAuthorSearchJson {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  Results get results => throw _privateConstructorUsedError;

  /// Serializes this TagAuthorSearchJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TagAuthorSearchJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TagAuthorSearchJsonCopyWith<TagAuthorSearchJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TagAuthorSearchJsonCopyWith<$Res> {
  factory $TagAuthorSearchJsonCopyWith(
    TagAuthorSearchJson value,
    $Res Function(TagAuthorSearchJson) then,
  ) = _$TagAuthorSearchJsonCopyWithImpl<$Res, TagAuthorSearchJson>;
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$TagAuthorSearchJsonCopyWithImpl<$Res, $Val extends TagAuthorSearchJson>
    implements $TagAuthorSearchJsonCopyWith<$Res> {
  _$TagAuthorSearchJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TagAuthorSearchJson
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

  /// Create a copy of TagAuthorSearchJson
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
abstract class _$$TagAuthorSearchJsonImplCopyWith<$Res>
    implements $TagAuthorSearchJsonCopyWith<$Res> {
  factory _$$TagAuthorSearchJsonImplCopyWith(
    _$TagAuthorSearchJsonImpl value,
    $Res Function(_$TagAuthorSearchJsonImpl) then,
  ) = __$$TagAuthorSearchJsonImplCopyWithImpl<$Res>;
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
class __$$TagAuthorSearchJsonImplCopyWithImpl<$Res>
    extends _$TagAuthorSearchJsonCopyWithImpl<$Res, _$TagAuthorSearchJsonImpl>
    implements _$$TagAuthorSearchJsonImplCopyWith<$Res> {
  __$$TagAuthorSearchJsonImplCopyWithImpl(
    _$TagAuthorSearchJsonImpl _value,
    $Res Function(_$TagAuthorSearchJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of TagAuthorSearchJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _$TagAuthorSearchJsonImpl(
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
class _$TagAuthorSearchJsonImpl implements _TagAuthorSearchJson {
  const _$TagAuthorSearchJsonImpl({
    @JsonKey(name: "code") required this.code,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "results") required this.results,
  });

  factory _$TagAuthorSearchJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$TagAuthorSearchJsonImplFromJson(json);

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
    return 'TagAuthorSearchJson(code: $code, message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TagAuthorSearchJsonImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, results);

  /// Create a copy of TagAuthorSearchJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TagAuthorSearchJsonImplCopyWith<_$TagAuthorSearchJsonImpl> get copyWith =>
      __$$TagAuthorSearchJsonImplCopyWithImpl<_$TagAuthorSearchJsonImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$TagAuthorSearchJsonImplToJson(this);
  }
}

abstract class _TagAuthorSearchJson implements TagAuthorSearchJson {
  const factory _TagAuthorSearchJson({
    @JsonKey(name: "code") required final int code,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "results") required final Results results,
  }) = _$TagAuthorSearchJsonImpl;

  factory _TagAuthorSearchJson.fromJson(Map<String, dynamic> json) =
      _$TagAuthorSearchJsonImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "results")
  Results get results;

  /// Create a copy of TagAuthorSearchJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TagAuthorSearchJsonImplCopyWith<_$TagAuthorSearchJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
  @JsonKey(name: "list")
  List<ListElement> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "limit")
  int get limit => throw _privateConstructorUsedError;
  @JsonKey(name: "offset")
  int get offset => throw _privateConstructorUsedError;

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
    @JsonKey(name: "total") int total,
    @JsonKey(name: "list") List<ListElement> list,
    @JsonKey(name: "limit") int limit,
    @JsonKey(name: "offset") int offset,
  });
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
    Object? total = null,
    Object? list = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(
      _value.copyWith(
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
            list:
                null == list
                    ? _value.list
                    : list // ignore: cast_nullable_to_non_nullable
                        as List<ListElement>,
            limit:
                null == limit
                    ? _value.limit
                    : limit // ignore: cast_nullable_to_non_nullable
                        as int,
            offset:
                null == offset
                    ? _value.offset
                    : offset // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
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
    @JsonKey(name: "total") int total,
    @JsonKey(name: "list") List<ListElement> list,
    @JsonKey(name: "limit") int limit,
    @JsonKey(name: "offset") int offset,
  });
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
    Object? total = null,
    Object? list = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(
      _$ResultsImpl(
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
        list:
            null == list
                ? _value._list
                : list // ignore: cast_nullable_to_non_nullable
                    as List<ListElement>,
        limit:
            null == limit
                ? _value.limit
                : limit // ignore: cast_nullable_to_non_nullable
                    as int,
        offset:
            null == offset
                ? _value.offset
                : offset // ignore: cast_nullable_to_non_nullable
                    as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultsImpl implements _Results {
  const _$ResultsImpl({
    @JsonKey(name: "total") required this.total,
    @JsonKey(name: "list") required final List<ListElement> list,
    @JsonKey(name: "limit") required this.limit,
    @JsonKey(name: "offset") required this.offset,
  }) : _list = list;

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  @override
  @JsonKey(name: "total")
  final int total;
  final List<ListElement> _list;
  @override
  @JsonKey(name: "list")
  List<ListElement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "limit")
  final int limit;
  @override
  @JsonKey(name: "offset")
  final int offset;

  @override
  String toString() {
    return 'Results(total: $total, list: $list, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    total,
    const DeepCollectionEquality().hash(_list),
    limit,
    offset,
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
    @JsonKey(name: "total") required final int total,
    @JsonKey(name: "list") required final List<ListElement> list,
    @JsonKey(name: "limit") required final int limit,
    @JsonKey(name: "offset") required final int offset,
  }) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  @JsonKey(name: "total")
  int get total;
  @override
  @JsonKey(name: "list")
  List<ListElement> get list;
  @override
  @JsonKey(name: "limit")
  int get limit;
  @override
  @JsonKey(name: "offset")
  int get offset;

  /// Create a copy of Results
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResultsImplCopyWith<_$ResultsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListElement _$ListElementFromJson(Map<String, dynamic> json) {
  return _ListElement.fromJson(json);
}

/// @nodoc
mixin _$ListElement {
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "free_type")
  FreeType get freeType => throw _privateConstructorUsedError;
  @JsonKey(name: "females")
  List<dynamic> get females => throw _privateConstructorUsedError;
  @JsonKey(name: "males")
  List<dynamic> get males => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  List<Author> get author => throw _privateConstructorUsedError;
  @JsonKey(name: "theme")
  List<dynamic> get theme => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "popular")
  int get popular => throw _privateConstructorUsedError;
  @JsonKey(name: "datetime_updated")
  String get datetimeUpdated => throw _privateConstructorUsedError;

  /// Serializes this ListElement to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListElementCopyWith<ListElement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListElementCopyWith<$Res> {
  factory $ListElementCopyWith(
    ListElement value,
    $Res Function(ListElement) then,
  ) = _$ListElementCopyWithImpl<$Res, ListElement>;
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "free_type") FreeType freeType,
    @JsonKey(name: "females") List<dynamic> females,
    @JsonKey(name: "males") List<dynamic> males,
    @JsonKey(name: "author") List<Author> author,
    @JsonKey(name: "theme") List<dynamic> theme,
    @JsonKey(name: "cover") String cover,
    @JsonKey(name: "popular") int popular,
    @JsonKey(name: "datetime_updated") String datetimeUpdated,
  });

  $FreeTypeCopyWith<$Res> get freeType;
}

/// @nodoc
class _$ListElementCopyWithImpl<$Res, $Val extends ListElement>
    implements $ListElementCopyWith<$Res> {
  _$ListElementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pathWord = null,
    Object? freeType = null,
    Object? females = null,
    Object? males = null,
    Object? author = null,
    Object? theme = null,
    Object? cover = null,
    Object? popular = null,
    Object? datetimeUpdated = null,
  }) {
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
            freeType:
                null == freeType
                    ? _value.freeType
                    : freeType // ignore: cast_nullable_to_non_nullable
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
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as List<Author>,
            theme:
                null == theme
                    ? _value.theme
                    : theme // ignore: cast_nullable_to_non_nullable
                        as List<dynamic>,
            cover:
                null == cover
                    ? _value.cover
                    : cover // ignore: cast_nullable_to_non_nullable
                        as String,
            popular:
                null == popular
                    ? _value.popular
                    : popular // ignore: cast_nullable_to_non_nullable
                        as int,
            datetimeUpdated:
                null == datetimeUpdated
                    ? _value.datetimeUpdated
                    : datetimeUpdated // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FreeTypeCopyWith<$Res> get freeType {
    return $FreeTypeCopyWith<$Res>(_value.freeType, (value) {
      return _then(_value.copyWith(freeType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ListElementImplCopyWith<$Res>
    implements $ListElementCopyWith<$Res> {
  factory _$$ListElementImplCopyWith(
    _$ListElementImpl value,
    $Res Function(_$ListElementImpl) then,
  ) = __$$ListElementImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: "name") String name,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "free_type") FreeType freeType,
    @JsonKey(name: "females") List<dynamic> females,
    @JsonKey(name: "males") List<dynamic> males,
    @JsonKey(name: "author") List<Author> author,
    @JsonKey(name: "theme") List<dynamic> theme,
    @JsonKey(name: "cover") String cover,
    @JsonKey(name: "popular") int popular,
    @JsonKey(name: "datetime_updated") String datetimeUpdated,
  });

  @override
  $FreeTypeCopyWith<$Res> get freeType;
}

/// @nodoc
class __$$ListElementImplCopyWithImpl<$Res>
    extends _$ListElementCopyWithImpl<$Res, _$ListElementImpl>
    implements _$$ListElementImplCopyWith<$Res> {
  __$$ListElementImplCopyWithImpl(
    _$ListElementImpl _value,
    $Res Function(_$ListElementImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? pathWord = null,
    Object? freeType = null,
    Object? females = null,
    Object? males = null,
    Object? author = null,
    Object? theme = null,
    Object? cover = null,
    Object? popular = null,
    Object? datetimeUpdated = null,
  }) {
    return _then(
      _$ListElementImpl(
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
        freeType:
            null == freeType
                ? _value.freeType
                : freeType // ignore: cast_nullable_to_non_nullable
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
        author:
            null == author
                ? _value._author
                : author // ignore: cast_nullable_to_non_nullable
                    as List<Author>,
        theme:
            null == theme
                ? _value._theme
                : theme // ignore: cast_nullable_to_non_nullable
                    as List<dynamic>,
        cover:
            null == cover
                ? _value.cover
                : cover // ignore: cast_nullable_to_non_nullable
                    as String,
        popular:
            null == popular
                ? _value.popular
                : popular // ignore: cast_nullable_to_non_nullable
                    as int,
        datetimeUpdated:
            null == datetimeUpdated
                ? _value.datetimeUpdated
                : datetimeUpdated // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl({
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "path_word") required this.pathWord,
    @JsonKey(name: "free_type") required this.freeType,
    @JsonKey(name: "females") required final List<dynamic> females,
    @JsonKey(name: "males") required final List<dynamic> males,
    @JsonKey(name: "author") required final List<Author> author,
    @JsonKey(name: "theme") required final List<dynamic> theme,
    @JsonKey(name: "cover") required this.cover,
    @JsonKey(name: "popular") required this.popular,
    @JsonKey(name: "datetime_updated") required this.datetimeUpdated,
  }) : _females = females,
       _males = males,
       _author = author,
       _theme = theme;

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "path_word")
  final String pathWord;
  @override
  @JsonKey(name: "free_type")
  final FreeType freeType;
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

  final List<Author> _author;
  @override
  @JsonKey(name: "author")
  List<Author> get author {
    if (_author is EqualUnmodifiableListView) return _author;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_author);
  }

  final List<dynamic> _theme;
  @override
  @JsonKey(name: "theme")
  List<dynamic> get theme {
    if (_theme is EqualUnmodifiableListView) return _theme;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_theme);
  }

  @override
  @JsonKey(name: "cover")
  final String cover;
  @override
  @JsonKey(name: "popular")
  final int popular;
  @override
  @JsonKey(name: "datetime_updated")
  final String datetimeUpdated;

  @override
  String toString() {
    return 'ListElement(name: $name, pathWord: $pathWord, freeType: $freeType, females: $females, males: $males, author: $author, theme: $theme, cover: $cover, popular: $popular, datetimeUpdated: $datetimeUpdated)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord) &&
            (identical(other.freeType, freeType) ||
                other.freeType == freeType) &&
            const DeepCollectionEquality().equals(other._females, _females) &&
            const DeepCollectionEquality().equals(other._males, _males) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            const DeepCollectionEquality().equals(other._theme, _theme) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.popular, popular) || other.popular == popular) &&
            (identical(other.datetimeUpdated, datetimeUpdated) ||
                other.datetimeUpdated == datetimeUpdated));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    pathWord,
    freeType,
    const DeepCollectionEquality().hash(_females),
    const DeepCollectionEquality().hash(_males),
    const DeepCollectionEquality().hash(_author),
    const DeepCollectionEquality().hash(_theme),
    cover,
    popular,
    datetimeUpdated,
  );

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      __$$ListElementImplCopyWithImpl<_$ListElementImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListElementImplToJson(this);
  }
}

abstract class _ListElement implements ListElement {
  const factory _ListElement({
    @JsonKey(name: "name") required final String name,
    @JsonKey(name: "path_word") required final String pathWord,
    @JsonKey(name: "free_type") required final FreeType freeType,
    @JsonKey(name: "females") required final List<dynamic> females,
    @JsonKey(name: "males") required final List<dynamic> males,
    @JsonKey(name: "author") required final List<Author> author,
    @JsonKey(name: "theme") required final List<dynamic> theme,
    @JsonKey(name: "cover") required final String cover,
    @JsonKey(name: "popular") required final int popular,
    @JsonKey(name: "datetime_updated") required final String datetimeUpdated,
  }) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "path_word")
  String get pathWord;
  @override
  @JsonKey(name: "free_type")
  FreeType get freeType;
  @override
  @JsonKey(name: "females")
  List<dynamic> get females;
  @override
  @JsonKey(name: "males")
  List<dynamic> get males;
  @override
  @JsonKey(name: "author")
  List<Author> get author;
  @override
  @JsonKey(name: "theme")
  List<dynamic> get theme;
  @override
  @JsonKey(name: "cover")
  String get cover;
  @override
  @JsonKey(name: "popular")
  int get popular;
  @override
  @JsonKey(name: "datetime_updated")
  String get datetimeUpdated;

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
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
