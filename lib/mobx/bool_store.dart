import 'package:mobx/mobx.dart';

part 'bool_store.g.dart';

// ignore: library_private_types_in_public_api
class BoolStore = _BoolStore with _$BoolStore;

abstract class _BoolStore with Store {
  @observable
  bool date = false;

  @action
  void setDate(bool newDate) {
    date = newDate;
  }
}
