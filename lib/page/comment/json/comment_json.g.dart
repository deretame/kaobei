// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'comment_json.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentJsonImpl _$$CommentJsonImplFromJson(Map<String, dynamic> json) =>
    _$CommentJsonImpl(
      code: (json['code'] as num).toInt(),
      message: json['message'] as String,
      results: Results.fromJson(json['results'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommentJsonImplToJson(_$CommentJsonImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'results': instance.results,
    };

_$ResultsImpl _$$ResultsImplFromJson(Map<String, dynamic> json) =>
    _$ResultsImpl(
      total: (json['total'] as num).toInt(),
      list:
          (json['list'] as List<dynamic>)
              .map((e) => ListElement.fromJson(e as Map<String, dynamic>))
              .toList(),
      limit: (json['limit'] as num).toInt(),
      offset: (json['offset'] as num).toInt(),
    );

Map<String, dynamic> _$$ResultsImplToJson(_$ResultsImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'list': instance.list,
      'limit': instance.limit,
      'offset': instance.offset,
    };

_$ListElementImpl _$$ListElementImplFromJson(Map<String, dynamic> json) =>
    _$ListElementImpl(
      id: (json['id'] as num).toInt(),
      createAt: json['create_at'] as String,
      userId: json['user_id'] as String,
      userName: json['user_name'] as String,
      userAvatar: json['user_avatar'] as String,
      comment: json['comment'] as String,
      count: (json['count'] as num).toInt(),
      parentId: json['parent_id'],
      parentUserId: json['parent_user_id'],
      parentUserName: json['parent_user_name'],
    );

Map<String, dynamic> _$$ListElementImplToJson(_$ListElementImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'create_at': instance.createAt,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_avatar': instance.userAvatar,
      'comment': instance.comment,
      'count': instance.count,
      'parent_id': instance.parentId,
      'parent_user_id': instance.parentUserId,
      'parent_user_name': instance.parentUserName,
    };
