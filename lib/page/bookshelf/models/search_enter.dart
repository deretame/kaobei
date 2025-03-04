enum SortType { none, popular, lastUpdateTime }

class SearchEnter {
  String keyword;
  SortType sortType;

  SearchEnter({required this.keyword, required this.sortType});
}
