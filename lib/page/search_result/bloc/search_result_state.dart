part of 'search_result_bloc.dart';

enum SearchStatus {
  none,
  initial,
  success,
  failure,
  loadingMore,
  getMoreFailure,
}

class SearchResultState extends Equatable {
  final SearchStatus status;
  final List<ListElement> elements;
  final bool hasReachedMax;
  final String result;
  final SearchEnter? searchEnter;

  const SearchResultState({
    this.status = SearchStatus.initial,
    this.elements = const [],
    this.hasReachedMax = false,
    this.result = '',
    this.searchEnter,
  });

  SearchResultState copyWith({
    SearchStatus? status,
    List<ListElement>? elements,
    bool? hasReachedMax,
    String? result,
    SearchEnter? searchEnter,
  }) {
    return SearchResultState(
      status: status ?? this.status,
      elements: elements ?? this.elements,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      result: result ?? this.result,
      searchEnter: searchEnter ?? this.searchEnter,
    );
  }

  @override
  String toString() =>
      'SearchResultState(status: $status, comics: $elements, hasReachedMax: $hasReachedMax, result: $result, searchEnter: $searchEnter)';

  @override
  List<Object?> get props => [
    status,
    elements,
    hasReachedMax,
    result,
    searchEnter,
  ];
}
