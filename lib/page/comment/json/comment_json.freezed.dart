// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CommentJson _$CommentJsonFromJson(Map<String, dynamic> json) {
  return _CommentJson.fromJson(json);
}

/// @nodoc
mixin _$CommentJson {
  @JsonKey(name: "code")
  int get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  Results get results => throw _privateConstructorUsedError;

  /// Serializes this CommentJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CommentJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommentJsonCopyWith<CommentJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentJsonCopyWith<$Res> {
  factory $CommentJsonCopyWith(
    CommentJson value,
    $Res Function(CommentJson) then,
  ) = _$CommentJsonCopyWithImpl<$Res, CommentJson>;
  @useResult
  $Res call({
    @JsonKey(name: "code") int code,
    @JsonKey(name: "message") String message,
    @JsonKey(name: "results") Results results,
  });

  $ResultsCopyWith<$Res> get results;
}

/// @nodoc
class _$CommentJsonCopyWithImpl<$Res, $Val extends CommentJson>
    implements $CommentJsonCopyWith<$Res> {
  _$CommentJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommentJson
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

  /// Create a copy of CommentJson
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
abstract class _$$CommentJsonImplCopyWith<$Res>
    implements $CommentJsonCopyWith<$Res> {
  factory _$$CommentJsonImplCopyWith(
    _$CommentJsonImpl value,
    $Res Function(_$CommentJsonImpl) then,
  ) = __$$CommentJsonImplCopyWithImpl<$Res>;
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
class __$$CommentJsonImplCopyWithImpl<$Res>
    extends _$CommentJsonCopyWithImpl<$Res, _$CommentJsonImpl>
    implements _$$CommentJsonImplCopyWith<$Res> {
  __$$CommentJsonImplCopyWithImpl(
    _$CommentJsonImpl _value,
    $Res Function(_$CommentJsonImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CommentJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? results = null,
  }) {
    return _then(
      _$CommentJsonImpl(
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
class _$CommentJsonImpl implements _CommentJson {
  const _$CommentJsonImpl({
    @JsonKey(name: "code") required this.code,
    @JsonKey(name: "message") required this.message,
    @JsonKey(name: "results") required this.results,
  });

  factory _$CommentJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentJsonImplFromJson(json);

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
    return 'CommentJson(code: $code, message: $message, results: $results)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentJsonImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.results, results) || other.results == results));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, code, message, results);

  /// Create a copy of CommentJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentJsonImplCopyWith<_$CommentJsonImpl> get copyWith =>
      __$$CommentJsonImplCopyWithImpl<_$CommentJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentJsonImplToJson(this);
  }
}

abstract class _CommentJson implements CommentJson {
  const factory _CommentJson({
    @JsonKey(name: "code") required final int code,
    @JsonKey(name: "message") required final String message,
    @JsonKey(name: "results") required final Results results,
  }) = _$CommentJsonImpl;

  factory _CommentJson.fromJson(Map<String, dynamic> json) =
      _$CommentJsonImpl.fromJson;

  @override
  @JsonKey(name: "code")
  int get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "results")
  Results get results;

  /// Create a copy of CommentJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentJsonImplCopyWith<_$CommentJsonImpl> get copyWith =>
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
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "create_at")
  String get createAt => throw _privateConstructorUsedError;
  @JsonKey(name: "user_id")
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "user_name")
  String get userName => throw _privateConstructorUsedError;
  @JsonKey(name: "user_avatar")
  String get userAvatar => throw _privateConstructorUsedError;
  @JsonKey(name: "comment")
  String get comment => throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_id")
  dynamic get parentId => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_user_id")
  dynamic get parentUserId => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_user_name")
  dynamic get parentUserName => throw _privateConstructorUsedError;

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
    @JsonKey(name: "id") int id,
    @JsonKey(name: "create_at") String createAt,
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "user_name") String userName,
    @JsonKey(name: "user_avatar") String userAvatar,
    @JsonKey(name: "comment") String comment,
    @JsonKey(name: "count") int count,
    @JsonKey(name: "parent_id") dynamic parentId,
    @JsonKey(name: "parent_user_id") dynamic parentUserId,
    @JsonKey(name: "parent_user_name") dynamic parentUserName,
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
    Object? id = null,
    Object? createAt = null,
    Object? userId = null,
    Object? userName = null,
    Object? userAvatar = null,
    Object? comment = null,
    Object? count = null,
    Object? parentId = freezed,
    Object? parentUserId = freezed,
    Object? parentUserName = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as int,
            createAt:
                null == createAt
                    ? _value.createAt
                    : createAt // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            userName:
                null == userName
                    ? _value.userName
                    : userName // ignore: cast_nullable_to_non_nullable
                        as String,
            userAvatar:
                null == userAvatar
                    ? _value.userAvatar
                    : userAvatar // ignore: cast_nullable_to_non_nullable
                        as String,
            comment:
                null == comment
                    ? _value.comment
                    : comment // ignore: cast_nullable_to_non_nullable
                        as String,
            count:
                null == count
                    ? _value.count
                    : count // ignore: cast_nullable_to_non_nullable
                        as int,
            parentId:
                freezed == parentId
                    ? _value.parentId
                    : parentId // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            parentUserId:
                freezed == parentUserId
                    ? _value.parentUserId
                    : parentUserId // ignore: cast_nullable_to_non_nullable
                        as dynamic,
            parentUserName:
                freezed == parentUserName
                    ? _value.parentUserName
                    : parentUserName // ignore: cast_nullable_to_non_nullable
                        as dynamic,
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
    @JsonKey(name: "id") int id,
    @JsonKey(name: "create_at") String createAt,
    @JsonKey(name: "user_id") String userId,
    @JsonKey(name: "user_name") String userName,
    @JsonKey(name: "user_avatar") String userAvatar,
    @JsonKey(name: "comment") String comment,
    @JsonKey(name: "count") int count,
    @JsonKey(name: "parent_id") dynamic parentId,
    @JsonKey(name: "parent_user_id") dynamic parentUserId,
    @JsonKey(name: "parent_user_name") dynamic parentUserName,
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
    Object? id = null,
    Object? createAt = null,
    Object? userId = null,
    Object? userName = null,
    Object? userAvatar = null,
    Object? comment = null,
    Object? count = null,
    Object? parentId = freezed,
    Object? parentUserId = freezed,
    Object? parentUserName = freezed,
  }) {
    return _then(
      _$ListElementImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as int,
        createAt:
            null == createAt
                ? _value.createAt
                : createAt // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        userName:
            null == userName
                ? _value.userName
                : userName // ignore: cast_nullable_to_non_nullable
                    as String,
        userAvatar:
            null == userAvatar
                ? _value.userAvatar
                : userAvatar // ignore: cast_nullable_to_non_nullable
                    as String,
        comment:
            null == comment
                ? _value.comment
                : comment // ignore: cast_nullable_to_non_nullable
                    as String,
        count:
            null == count
                ? _value.count
                : count // ignore: cast_nullable_to_non_nullable
                    as int,
        parentId:
            freezed == parentId
                ? _value.parentId
                : parentId // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        parentUserId:
            freezed == parentUserId
                ? _value.parentUserId
                : parentUserId // ignore: cast_nullable_to_non_nullable
                    as dynamic,
        parentUserName:
            freezed == parentUserName
                ? _value.parentUserName
                : parentUserName // ignore: cast_nullable_to_non_nullable
                    as dynamic,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ListElementImpl implements _ListElement {
  const _$ListElementImpl({
    @JsonKey(name: "id") required this.id,
    @JsonKey(name: "create_at") required this.createAt,
    @JsonKey(name: "user_id") required this.userId,
    @JsonKey(name: "user_name") required this.userName,
    @JsonKey(name: "user_avatar") required this.userAvatar,
    @JsonKey(name: "comment") required this.comment,
    @JsonKey(name: "count") required this.count,
    @JsonKey(name: "parent_id") required this.parentId,
    @JsonKey(name: "parent_user_id") required this.parentUserId,
    @JsonKey(name: "parent_user_name") required this.parentUserName,
  });

  factory _$ListElementImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListElementImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "create_at")
  final String createAt;
  @override
  @JsonKey(name: "user_id")
  final String userId;
  @override
  @JsonKey(name: "user_name")
  final String userName;
  @override
  @JsonKey(name: "user_avatar")
  final String userAvatar;
  @override
  @JsonKey(name: "comment")
  final String comment;
  @override
  @JsonKey(name: "count")
  final int count;
  @override
  @JsonKey(name: "parent_id")
  final dynamic parentId;
  @override
  @JsonKey(name: "parent_user_id")
  final dynamic parentUserId;
  @override
  @JsonKey(name: "parent_user_name")
  final dynamic parentUserName;

  @override
  String toString() {
    return 'ListElement(id: $id, createAt: $createAt, userId: $userId, userName: $userName, userAvatar: $userAvatar, comment: $comment, count: $count, parentId: $parentId, parentUserId: $parentUserId, parentUserName: $parentUserName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListElementImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createAt, createAt) ||
                other.createAt == createAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userAvatar, userAvatar) ||
                other.userAvatar == userAvatar) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other.parentId, parentId) &&
            const DeepCollectionEquality().equals(
              other.parentUserId,
              parentUserId,
            ) &&
            const DeepCollectionEquality().equals(
              other.parentUserName,
              parentUserName,
            ));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    createAt,
    userId,
    userName,
    userAvatar,
    comment,
    count,
    const DeepCollectionEquality().hash(parentId),
    const DeepCollectionEquality().hash(parentUserId),
    const DeepCollectionEquality().hash(parentUserName),
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
    @JsonKey(name: "id") required final int id,
    @JsonKey(name: "create_at") required final String createAt,
    @JsonKey(name: "user_id") required final String userId,
    @JsonKey(name: "user_name") required final String userName,
    @JsonKey(name: "user_avatar") required final String userAvatar,
    @JsonKey(name: "comment") required final String comment,
    @JsonKey(name: "count") required final int count,
    @JsonKey(name: "parent_id") required final dynamic parentId,
    @JsonKey(name: "parent_user_id") required final dynamic parentUserId,
    @JsonKey(name: "parent_user_name") required final dynamic parentUserName,
  }) = _$ListElementImpl;

  factory _ListElement.fromJson(Map<String, dynamic> json) =
      _$ListElementImpl.fromJson;

  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "create_at")
  String get createAt;
  @override
  @JsonKey(name: "user_id")
  String get userId;
  @override
  @JsonKey(name: "user_name")
  String get userName;
  @override
  @JsonKey(name: "user_avatar")
  String get userAvatar;
  @override
  @JsonKey(name: "comment")
  String get comment;
  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(name: "parent_id")
  dynamic get parentId;
  @override
  @JsonKey(name: "parent_user_id")
  dynamic get parentUserId;
  @override
  @JsonKey(name: "parent_user_name")
  dynamic get parentUserName;

  /// Create a copy of ListElement
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListElementImplCopyWith<_$ListElementImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
