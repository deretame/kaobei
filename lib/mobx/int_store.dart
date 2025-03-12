import 'package:mobx/mobx.dart';

part 'int_store.g.dart';

// ignore: library_private_types_in_public_api
class IntStore = _IntStore with _$IntStore;

abstract class _IntStore with Store {
  @observable
  int date = 0;

  @action
  void setDate(int newDate) {
    date = newDate;
  }
}
