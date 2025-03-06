part of 'comment_bloc.dart';

enum CommentStatus { initial, success, failure, getMore, getMoreFailure }

class CommentState extends Equatable {
  final CommentStatus status;
  final List<ListElement>? elements;
  final bool hasReachedMax;
  final String? result;

  const CommentState({
    this.status = CommentStatus.initial,
    this.elements,
    this.hasReachedMax = false,
    this.result,
  });

  CommentState copyWith({
    CommentStatus? status,
    List<ListElement>? elements,
    bool? hasReachedMax,
    String? result,
  }) {
    return CommentState(
      status: status ?? this.status,
      elements: elements ?? this.elements,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, elements, hasReachedMax, result];
}
