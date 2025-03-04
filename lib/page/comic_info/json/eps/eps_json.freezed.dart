// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'eps_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

EpsJson _$EpsJsonFromJson(Map<String, dynamic> json) {
  return _EpsJson.fromJson(json);
}

/// @nodoc
mixin _$EpsJson {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  Results get results => throw _privateConstructorUsedError;

  /// Serializes this EpsJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EpsJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EpsJsonCopyWith<EpsJson> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EpsJsonCopyWith<$Res> {
  factory $EpsJsonCopyWith(EpsJson value, $Res Function(EpsJson) then) =
      _$EpsJsonCopyWithImpl<$Res, EpsJson>;
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$EpsJsonCopyWithImpl<$Res, $Val extends EpsJson>
    implements $EpsJsonCopyWith<$Res> {
  _$EpsJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EpsJson
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

  /// Create a copy of EpsJson
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
abstract class _$$EpsJsonImplCopyWith<$Res> implements $EpsJsonCopyWith<$Res> {
  factory _$$EpsJsonImplCopyWith(
    _$EpsJsonImpl value,
    $Res Function(_$EpsJsonImpl) then,
  ) = __$$EpsJsonImplCopyWithImpl<$Res>;
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
class __$$EpsJsonImplCopyWithImpl<$Res>
    extends _$EpsJsonCopyWithImpl<$Res, _$EpsJsonImpl>
    implements _$$EpsJsonImplCopyWith<$Res> {
  __$$EpsJsonImplCopyWithImpl(
    _$EpsJsonImpl _value,
    $Res Function(_$EpsJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EpsJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _$EpsJsonImpl(
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
class _$EpsJsonImpl implements _EpsJson {
  const _$EpsJsonImpl({
    @JsonKey(name: "code") required this.code,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "results") required this.results,
  });

  factory _$EpsJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$EpsJsonImplFromJson(json);

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
    return 'EpsJson(code: $code, message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EpsJsonImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, results);

  /// Create a copy of EpsJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EpsJsonImplCopyWith<_$EpsJsonImpl> get copyWith =>
      __$$EpsJsonImplCopyWithImpl<_$EpsJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EpsJsonImplToJson(this);
  }
}

abstract class _EpsJson implements EpsJson {
  const factory _EpsJson({
    @JsonKey(name: "code") required final int code,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "results") required final Results results,
  }) = _$EpsJsonImpl;

  factory _EpsJson.fromJson(Map<String, dynamic> json) = _$EpsJsonImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "results")
  Results get results;

  /// Create a copy of EpsJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EpsJsonImplCopyWith<_$EpsJsonImpl> get copyWith =>
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
  String? get prev => throw _privateConstructorUsedError;
  @JsonKey(name: "next")
  String get next => throw _privateConstructorUsedError;

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
    @JsonKey(name: "prev") String? prev,
    @JsonKey(name: "next") String next,
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
    Object? prev = freezed,
    Object? next = null,
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
                freezed == prev
                    ? _value.prev
                    : prev // ignore: cast_nullable_to_non_nullable
                        as String?,
            next:
                null == next
                    ? _value.next
                    : next // ignore: cast_nullable_to_non_nullable
                        as String,
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
    @JsonKey(name: "prev") String? prev,
    @JsonKey(name: "next") String next,
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
    Object? prev = freezed,
    Object? next = null,
  }) {
    return _then(
      _$ListElementImpl(
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
            freezed == prev
                ? _value.prev
                : prev // ignore: cast_nullable_to_non_nullable
                    as String?,
        next:
            null == next
                ? _value.next
                : next // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl({
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
  });

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

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
  final String? prev;
  @override
  @JsonKey(name: "next")
  final String next;

  @override
  String toString() {
    return 'ListElement(index: $index, uuid: $uuid, count: $count, ordered: $ordered, size: $size, name: $name, comicId: $comicId, comicPathWord: $comicPathWord, groupId: $groupId, groupPathWord: $groupPathWord, type: $type, imgType: $imgType, news: $news, datetimeCreated: $datetimeCreated, prev: $prev, next: $next)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
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
            (identical(other.next, next) || other.next == next));
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
    const DeepCollectionEquality().hash(groupId),
    groupPathWord,
    type,
    imgType,
    news,
    datetimeCreated,
    prev,
    next,
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
    @JsonKey(name: "prev") required final String? prev,
    @JsonKey(name: "next") required final String next,
  }) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

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
  String? get prev;
  @override
  @JsonKey(name: "next")
  String get next;

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
