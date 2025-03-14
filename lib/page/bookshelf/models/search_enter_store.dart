import 'package:mobx/mobx.dart';

part 'search_enter_store.g.dart';

// ignore: library_private_types_in_public_api
class SearchEnterStore = _SearchEnterStore with _$SearchEnterStore;

abstract class _SearchEnterStore with Store {
  @observable
  String keyword = "";
  @observable
  int sortType = 4;

  @action
  void setKeyword(String value) {
    keyword = value;
  }

  @action
  void setSortType(int value) {
    sortType = value;
  }
}
