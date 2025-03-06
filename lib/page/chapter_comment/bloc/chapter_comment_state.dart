part of 'chapter_comment_bloc.dart';

enum ChapterCommentStatus { initial, success, failure, getMore, getMoreFailure }

class ChapterCommentState extends Equatable {
  final ChapterCommentStatus status;
  final List<ListElement>? elements;
  final bool hasReachedMax;
  final String? result;

  const ChapterCommentState({
    this.status = ChapterCommentStatus.initial,
    this.elements,
    this.hasReachedMax = false,
    this.result,
  });

  ChapterCommentState copyWith({
    ChapterCommentStatus? status,
    List<ListElement>? elements,
    bool? hasReachedMax,
    String? result,
  }) {
    return ChapterCommentState(
      status: status ?? this.status,
      elements: elements ?? this.elements,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, elements, hasReachedMax, result];
}
