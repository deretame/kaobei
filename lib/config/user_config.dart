import 'package:hive_ce/hive.dart';
import 'package:mobx/mobx.dart';

part 'user_config.g.dart';

// ignore: library_private_types_in_public_api
class UserConfig = _UserConfig with _$UserConfig;

abstract class _UserConfig with Store {
  late final Box<dynamic> _box;

  Future<void> initBox() async {
    _box = await Hive.openBox(UserConfigBoxKey.userConfig);
  }

  @observable
  String userName = "";
  @observable
  String userPassword = "";
  @observable
  String token = "";

  @action
  String getUserName() {
    userName = _box.get(UserConfigBoxKey.userName, defaultValue: "");
    return userName;
  }

  @action
  void setUserName(String value) {
    userName = value;
    _box.put(UserConfigBoxKey.userName, value);
  }

  @action
  void deleteUserName() {
    userName = "";
    _box.delete(UserConfigBoxKey.userName);
  }

  @action
  String getUserPassword() {
    userPassword = _box.get(UserConfigBoxKey.userPassword, defaultValue: "");
    return userPassword;
  }

  @action
  void setUserPassword(String value) {
    userPassword = value;
    _box.put(UserConfigBoxKey.userPassword, value);
  }

  @action
  void deleteUserPassword() {
    userPassword = "";
    _box.delete(UserConfigBoxKey.userPassword);
  }

  @action
  String getToken() {
    token = _box.get(UserConfigBoxKey.token, defaultValue: "");
    return token;
  }

  @action
  void setToken(String value) {
    token = value;
    _box.put(UserConfigBoxKey.token, value);
  }

  @action
  void deleteToken() {
    token = "";
    _box.delete(UserConfigBoxKey.token);
  }
}

class UserConfigBoxKey {
  static const String userConfig = 'userConfig';
  static const String userName = "userName";
  static const String userPassword = "userPassword";
  static const String token = "token";
}
