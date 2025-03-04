part of 'tag_author_search_bloc.dart';

enum TagAuthorSearchStatus {
  initial,
  success,
  failure,
  loadingMore,
  getMoreFailure,
}

class TagAuthorSearchState extends Equatable {
  final TagAuthorSearchStatus status;
  final List<ListElement> elements;
  final bool hasReachedMax;
  final String result;

  const TagAuthorSearchState({
    this.status = TagAuthorSearchStatus.initial,
    this.elements = const [],
    this.hasReachedMax = false,
    this.result = '',
  });

  TagAuthorSearchState copyWith({
    TagAuthorSearchStatus? status,
    List<ListElement>? elements,
    bool? hasReachedMax,
    String? result,
  }) {
    return TagAuthorSearchState(
      status: status ?? this.status,
      elements: elements ?? this.elements,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      result: result ?? this.result,
    );
  }

  @override
  List<Object> get props => [status, elements, hasReachedMax, result];
}
