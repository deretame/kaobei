part of 'chapter_comment_bloc.dart';

class ChapterCommentEvent extends Equatable {
  final ChapterCommentStatus status;
  final String chapterId;

  const ChapterCommentEvent({required this.status, required this.chapterId});

  ChapterCommentEvent copyWith({
    ChapterCommentStatus? status,
    String? chapterId,
  }) {
    return ChapterCommentEvent(
      status: status ?? this.status,
      chapterId: chapterId ?? this.chapterId,
    );
  }

  @override
  List<Object> get props => [status, chapterId];
}
