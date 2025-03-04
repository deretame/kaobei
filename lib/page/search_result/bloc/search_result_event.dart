part of 'search_result_bloc.dart';

class SearchResultEvent extends Equatable {
  final SearchEnter searchEnter;
  final SearchStatus searchStatus;

  const SearchResultEvent(this.searchEnter, this.searchStatus);

  @override
  List<Object> get props => [searchEnter, searchStatus];
}
