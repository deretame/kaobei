// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) {
  return _SearchResult.fromJson(json);
}

/// @nodoc
mixin _$SearchResult {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  Results get results => throw _privateConstructorUsedError;

  /// Serializes this SearchResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchResultCopyWith<SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchResultCopyWith<$Res> {
  factory $SearchResultCopyWith(
    SearchResult value,
    $Res Function(SearchResult) then,
  ) = _$SearchResultCopyWithImpl<$Res, SearchResult>;
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$SearchResultCopyWithImpl<$Res, $Val extends SearchResult>
    implements $SearchResultCopyWith<$Res> {
  _$SearchResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchResult
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

  /// Create a copy of SearchResult
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
abstract class _$$SearchResultImplCopyWith<$Res>
    implements $SearchResultCopyWith<$Res> {
  factory _$$SearchResultImplCopyWith(
    _$SearchResultImpl value,
    $Res Function(_$SearchResultImpl) then,
  ) = __$$SearchResultImplCopyWithImpl<$Res>;
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
class __$$SearchResultImplCopyWithImpl<$Res>
    extends _$SearchResultCopyWithImpl<$Res, _$SearchResultImpl>
    implements _$$SearchResultImplCopyWith<$Res> {
  __$$SearchResultImplCopyWithImpl(
    _$SearchResultImpl _value,
    $Res Function(_$SearchResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _$SearchResultImpl(
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
class _$SearchResultImpl implements _SearchResult {
  const _$SearchResultImpl({
    @JsonKey(name: "code") required this.code,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "results") required this.results,
  });

  factory _$SearchResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$SearchResultImplFromJson(json);

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
    return 'SearchResult(code: $code, message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchResultImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, results);

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      __$$SearchResultImplCopyWithImpl<_$SearchResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SearchResultImplToJson(this);
  }
}

abstract class _SearchResult implements SearchResult {
  const factory _SearchResult({
    @JsonKey(name: "code") required final int code,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "results") required final Results results,
  }) = _$SearchResultImpl;

  factory _SearchResult.fromJson(Map<String, dynamic> json) =
      _$SearchResultImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "results")
  Results get results;

  /// Create a copy of SearchResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchResultImplCopyWith<_$SearchResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Results _$ResultsFromJson(Map<String, dynamic> json) {
  return _Results.fromJson(json);
}

/// @nodoc
mixin _$Results {
  @JsonKey(name: "list")
  List<ListElement> get list => throw _privateConstructorUsedError;
  @JsonKey(name: "total")
  int get total => throw _privateConstructorUsedError;
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
    @JsonKey(name: "list") List<ListElement> list,
    @JsonKey(name: "total") int total,
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
    Object? list = null,
    Object? total = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(
      _value.copyWith(
            list:
                null == list
                    ? _value.list
                    : list // ignore: cast_nullable_to_non_nullable
                        as List<ListElement>,
            total:
                null == total
                    ? _value.total
                    : total // ignore: cast_nullable_to_non_nullable
                        as int,
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
    @JsonKey(name: "list") List<ListElement> list,
    @JsonKey(name: "total") int total,
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
    Object? list = null,
    Object? total = null,
    Object? limit = null,
    Object? offset = null,
  }) {
    return _then(
      _$ResultsImpl(
        list:
            null == list
                ? _value._list
                : list // ignore: cast_nullable_to_non_nullable
                    as List<ListElement>,
        total:
            null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
                    as int,
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
    @JsonKey(name: "list") required final List<ListElement> list,
    @JsonKey(name: "total") required this.total,
    @JsonKey(name: "limit") required this.limit,
    @JsonKey(name: "offset") required this.offset,
  }) : _list = list;

  factory _$ResultsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultsImplFromJson(json);

  final List<ListElement> _list;
  @override
  @JsonKey(name: "list")
  List<ListElement> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  @override
  @JsonKey(name: "total")
  final int total;
  @override
  @JsonKey(name: "limit")
  final int limit;
  @override
  @JsonKey(name: "offset")
  final int offset;

  @override
  String toString() {
    return 'Results(list: $list, total: $total, limit: $limit, offset: $offset)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultsImpl &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_list),
    total,
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
    @JsonKey(name: "list") required final List<ListElement> list,
    @JsonKey(name: "total") required final int total,
    @JsonKey(name: "limit") required final int limit,
    @JsonKey(name: "offset") required final int offset,
  }) = _$ResultsImpl;

  factory _Results.fromJson(Map<String, dynamic> json) = _$ResultsImpl.fromJson;

  @override
  @JsonKey(name: "list")
  List<ListElement> get list;
  @override
  @JsonKey(name: "total")
  int get total;
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
  @JsonKey(name: "alias")
  String get alias => throw _privateConstructorUsedError;
  @JsonKey(name: "path_word")
  String get pathWord => throw _privateConstructorUsedError;
  @JsonKey(name: "cover")
  String get cover => throw _privateConstructorUsedError;
  @JsonKey(name: "ban")
  int get ban => throw _privateConstructorUsedError;
  @JsonKey(name: "img_type")
  int get imgType => throw _privateConstructorUsedError;
  @JsonKey(name: "author")
  List<Author> get author => throw _privateConstructorUsedError;
  @JsonKey(name: "popular")
  int get popular => throw _privateConstructorUsedError;

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
    @JsonKey(name: "alias") String alias,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "cover") String cover,
    @JsonKey(name: "ban") int ban,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "author") List<Author> author,
    @JsonKey(name: "popular") int popular,
  });
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
    Object? alias = null,
    Object? pathWord = null,
    Object? cover = null,
    Object? ban = null,
    Object? imgType = null,
    Object? author = null,
    Object? popular = null,
  }) {
    return _then(
      _value.copyWith(
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
            cover:
                null == cover
                    ? _value.cover
                    : cover // ignore: cast_nullable_to_non_nullable
                        as String,
            ban:
                null == ban
                    ? _value.ban
                    : ban // ignore: cast_nullable_to_non_nullable
                        as int,
            imgType:
                null == imgType
                    ? _value.imgType
                    : imgType // ignore: cast_nullable_to_non_nullable
                        as int,
            author:
                null == author
                    ? _value.author
                    : author // ignore: cast_nullable_to_non_nullable
                        as List<Author>,
            popular:
                null == popular
                    ? _value.popular
                    : popular // ignore: cast_nullable_to_non_nullable
                        as int,
          )
          as $Val,
    );
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
    @JsonKey(name: "alias") String alias,
    @JsonKey(name: "path_word") String pathWord,
    @JsonKey(name: "cover") String cover,
    @JsonKey(name: "ban") int ban,
    @JsonKey(name: "img_type") int imgType,
    @JsonKey(name: "author") List<Author> author,
    @JsonKey(name: "popular") int popular,
  });
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
    Object? alias = null,
    Object? pathWord = null,
    Object? cover = null,
    Object? ban = null,
    Object? imgType = null,
    Object? author = null,
    Object? popular = null,
  }) {
    return _then(
      _$ListElementImpl(
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
        cover:
            null == cover
                ? _value.cover
                : cover // ignore: cast_nullable_to_non_nullable
                    as String,
        ban:
            null == ban
                ? _value.ban
                : ban // ignore: cast_nullable_to_non_nullable
                    as int,
        imgType:
            null == imgType
                ? _value.imgType
                : imgType // ignore: cast_nullable_to_non_nullable
                    as int,
        author:
            null == author
                ? _value._author
                : author // ignore: cast_nullable_to_non_nullable
                    as List<Author>,
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
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl({
    @JsonKey(name: "name") required this.name,
    @JsonKey(name: "alias") required this.alias,
    @JsonKey(name: "path_word") required this.pathWord,
    @JsonKey(name: "cover") required this.cover,
    @JsonKey(name: "ban") required this.ban,
    @JsonKey(name: "img_type") required this.imgType,
    @JsonKey(name: "author") required final List<Author> author,
    @JsonKey(name: "popular") required this.popular,
  }) : _author = author;

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

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
  @JsonKey(name: "cover")
  final String cover;
  @override
  @JsonKey(name: "ban")
  final int ban;
  @override
  @JsonKey(name: "img_type")
  final int imgType;
  final List<Author> _author;
  @override
  @JsonKey(name: "author")
  List<Author> get author {
    if (_author is EqualUnmodifiableListView) return _author;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_author);
  }

  @override
  @JsonKey(name: "popular")
  final int popular;

  @override
  String toString() {
    return 'ListElement(name: $name, alias: $alias, pathWord: $pathWord, cover: $cover, ban: $ban, imgType: $imgType, author: $author, popular: $popular)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.ban, ban) || other.ban == ban) &&
            (identical(other.imgType, imgType) || other.imgType == imgType) &&
            const DeepCollectionEquality().equals(other._author, _author) &&
            (identical(other.popular, popular) || other.popular == popular));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    name,
    alias,
    pathWord,
    cover,
    ban,
    imgType,
    const DeepCollectionEquality().hash(_author),
    popular,
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
    @JsonKey(name: "alias") required final String alias,
    @JsonKey(name: "path_word") required final String pathWord,
    @JsonKey(name: "cover") required final String cover,
    @JsonKey(name: "ban") required final int ban,
    @JsonKey(name: "img_type") required final int imgType,
    @JsonKey(name: "author") required final List<Author> author,
    @JsonKey(name: "popular") required final int popular,
  }) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

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
  @JsonKey(name: "cover")
  String get cover;
  @override
  @JsonKey(name: "ban")
  int get ban;
  @override
  @JsonKey(name: "img_type")
  int get imgType;
  @override
  @JsonKey(name: "author")
  List<Author> get author;
  @override
  @JsonKey(name: "popular")
  int get popular;

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
  @JsonKey(name: "alias")
  String? get alias => throw _privateConstructorUsedError;
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
    @JsonKey(name: "alias") String? alias,
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
  $Res call({
    Object? name = null,
    Object? alias = freezed,
    Object? pathWord = null,
  }) {
    return _then(
      _value.copyWith(
            name:
                null == name
                    ? _value.name
                    : name // ignore: cast_nullable_to_non_nullable
                        as String,
            alias:
                freezed == alias
                    ? _value.alias
                    : alias // ignore: cast_nullable_to_non_nullable
                        as String?,
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
    @JsonKey(name: "alias") String? alias,
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
  $Res call({
    Object? name = null,
    Object? alias = freezed,
    Object? pathWord = null,
  }) {
    return _then(
      _$AuthorImpl(
        name:
            null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                    as String,
        alias:
            freezed == alias
                ? _value.alias
                : alias // ignore: cast_nullable_to_non_nullable
                    as String?,
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
    @JsonKey(name: "alias") required this.alias,
    @JsonKey(name: "path_word") required this.pathWord,
  });

  factory _$AuthorImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthorImplFromJson(json);

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "alias")
  final String? alias;
  @override
  @JsonKey(name: "path_word")
  final String pathWord;

  @override
  String toString() {
    return 'Author(name: $name, alias: $alias, pathWord: $pathWord)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.alias, alias) || other.alias == alias) &&
            (identical(other.pathWord, pathWord) ||
                other.pathWord == pathWord));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, alias, pathWord);

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
    @JsonKey(name: "alias") required final String? alias,
    @JsonKey(name: "path_word") required final String pathWord,
  }) = _$AuthorImpl;

  factory _Author.fromJson(Map<String, dynamic> json) = _$AuthorImpl.fromJson;

  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "alias")
  String? get alias;
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
