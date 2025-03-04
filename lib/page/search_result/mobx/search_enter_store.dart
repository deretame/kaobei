import 'package:mobx/mobx.dart';

import '../../../network/http/http_require.dart';

part 'search_enter_store.g.dart';

// ignore: library_private_types_in_public_api
class SearchEnterStore = _SearchEnterStore with _$SearchEnterStore;

abstract class _SearchEnterStore with Store {
  @observable
  String keyword = ''; // 关键词
  @observable
  SearchType searchType = SearchType.comic; // 用来判断是搜索漫画还是小说
  @observable
  QType qType = QType.none; // 搜索类型，比如说用名字还是作者这种
  @observable
  String extend = ''; // 扩展用

  @action
  void setKeyword(String value) {
    keyword = value;
  }

  @action
  void setSearchType(SearchType value) {
    searchType = value;
  }

  @action
  void setQType(QType value) {
    qType = value;
  }

  @action
  void setExtend(String value) {
    extend = value;
  }
}
