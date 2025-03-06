part of 'comment_bloc.dart';

class CommentEvent extends Equatable {
  final CommentStatus status;
  final String comicId;
  final String parentId;
  final SearchType type;

  const CommentEvent({
    required this.status,
    required this.comicId,
    required this.parentId,
    required this.type,
  });

  CommentEvent copyWith({
    CommentStatus? status,
    String? comicId,
    String? parentId,
    SearchType? type,
  }) {
    return CommentEvent(
      status: status ?? this.status,
      comicId: comicId ?? this.comicId,
      parentId: parentId ?? this.parentId,
      type: type ?? this.type,
    );
  }

  @override
  List<Object> get props => [status, comicId, parentId, type];
}
