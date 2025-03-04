import 'package:mobx/mobx.dart';

part 'string_store.g.dart';

// ignore: library_private_types_in_public_api
class StringStore = _StringStore with _$StringStore;

abstract class _StringStore with Store {
  @observable
  String date = ''; //MobX 管理的日期字符串

  @action
  void setDate(String newDate) {
    date = newDate;
  }
}
