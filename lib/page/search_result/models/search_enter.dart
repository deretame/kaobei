import '../../../network/http/http_require.dart';

class SearchEnter {
  String keyword; // 关键词
  SearchType searchType; // 用来判断是搜索漫画还是小说
  QType qType; // 搜索类型，比如说用名字还是作者这种
  String extend; // 扩展用

  SearchEnter({
    this.keyword = '',
    this.searchType = SearchType.comic,
    this.qType = QType.none,
    this.extend = '',
  });

  @override
  String toString() {
    return 'SearchEnter{keyword: $keyword, searchType: ${searchType.name}, qType: ${qType.name}, state: $extend}';
  }

  // 重载 == 操作符
  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true; // 如果是同一个对象，直接返回 true
    if (other is! SearchEnter) {
      return false; // 如果 other 不是 SearchEnter 类型，返回 false
    }

    // 比较所有字段是否相等
    return keyword == other.keyword &&
        searchType == other.searchType &&
        qType == other.qType &&
        extend == other.extend;
  }

  // 重载 hashCode
  @override
  int get hashCode {
    return keyword.hashCode ^
        searchType.hashCode ^
        qType.hashCode ^
        extend.hashCode;
  }
}
