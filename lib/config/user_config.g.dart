// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_config.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UserConfig on _UserConfig, Store {
  late final _$userNameAtom = Atom(
    name: '_UserConfig.userName',
    context: context,
  );

  @override
  String get userName {
    _$userNameAtom.reportRead();
    return super.userName;
  }

  @override
  set userName(String value) {
    _$userNameAtom.reportWrite(value, super.userName, () {
      super.userName = value;
    });
  }

  late final _$userPasswordAtom = Atom(
    name: '_UserConfig.userPassword',
    context: context,
  );

  @override
  String get userPassword {
    _$userPasswordAtom.reportRead();
    return super.userPassword;
  }

  @override
  set userPassword(String value) {
    _$userPasswordAtom.reportWrite(value, super.userPassword, () {
      super.userPassword = value;
    });
  }

  late final _$tokenAtom = Atom(name: '_UserConfig.token', context: context);

  @override
  String get token {
    _$tokenAtom.reportRead();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.reportWrite(value, super.token, () {
      super.token = value;
    });
  }

  late final _$_UserConfigActionController = ActionController(
    name: '_UserConfig',
    context: context,
  );

  @override
  String getUserName() {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.getUserName',
    );
    try {
      return super.getUserName();
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserName(String value) {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.setUserName',
    );
    try {
      return super.setUserName(value);
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteUserName() {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.deleteUserName',
    );
    try {
      return super.deleteUserName();
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getUserPassword() {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.getUserPassword',
    );
    try {
      return super.getUserPassword();
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUserPassword(String value) {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.setUserPassword',
    );
    try {
      return super.setUserPassword(value);
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteUserPassword() {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.deleteUserPassword',
    );
    try {
      return super.deleteUserPassword();
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  String getToken() {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.getToken',
    );
    try {
      return super.getToken();
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setToken(String value) {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.setToken',
    );
    try {
      return super.setToken(value);
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  void deleteToken() {
    final _$actionInfo = _$_UserConfigActionController.startAction(
      name: '_UserConfig.deleteToken',
    );
    try {
      return super.deleteToken();
    } finally {
      _$_UserConfigActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
userName: ${userName},
userPassword: ${userPassword},
token: ${token}
    ''';
  }
}
