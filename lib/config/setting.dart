import 'package:flutter/material.dart';
import 'package:hive_ce/hive.dart';
import 'package:mobx/mobx.dart';

import 'color_theme_types.dart';

part 'setting.g.dart';

// ignore: library_private_types_in_public_api
class Setting = _Setting with _$Setting;

abstract class _Setting with Store {
  late final Box<dynamic> _box;

  @observable
  bool dynamicColor = true; // 是否开启动态颜色
  @observable
  ThemeMode themeMode = ThemeMode.system; // 主题模式
  @observable
  bool isLightTheme = true; // 是否是浅色主题
  @observable
  bool isAMOLED = true; // 是否是AMOLED屏幕
  @observable
  Color seedColor = Colors.lightBlue; // 种子颜色
  @observable
  Color backgroundColor = Colors.white; // 背景颜色
  @observable
  Color textColor = Colors.black; // 文字颜色
  @observable
  int themeInitState = 0; // 主题初始状态
  @observable
  dynamic locale = Locale('zh', 'CN'); // 语言
  @observable
  int welcomePageNum = 0; // 开屏页序号
  @observable
  String webdavHost = ''; // webdav地址
  @observable
  String webdavUsername = ''; // webdav用户名
  @observable
  String webdavPassword = ''; // webdav密码
  @observable
  bool autoSync = true; // 是否自动同步
  @observable
  bool syncNotify = true; // 同步提示
  @observable
  bool shade = true; // 夜间模式遮罩
  @observable
  int readMode = 0; // 阅读模式

  Future<void> initBox() async {
    if (!Hive.isBoxOpen('settings')) {
      _box = await Hive.openBox('settings');
    }
    dynamicColor = getDynamicColor();
    themeMode = getThemeMode();
    isLightTheme = getThemeType();
    isAMOLED = getIsAMOLED();
    seedColor = getSeedColor();
    backgroundColor = getBackgroundColor();
    textColor = getTextColor();
    themeInitState = getThemeInitState();
    locale = getLocale();
    welcomePageNum = getWelcomePageNum();
    webdavHost = getWebdavHost();
    webdavUsername = getWebdavUsername();
    webdavPassword = getWebdavPassword();
    autoSync = getAutoSync();
    syncNotify = getSyncNotify();
    shade = getShade();
    readMode = getReadMode();
  }

  @action
  bool getDynamicColor() {
    dynamicColor = _box.get(SettingBoxKey.dynamicColor, defaultValue: true);
    return dynamicColor;
  }

  @action
  void setDynamicColor(bool value) {
    dynamicColor = value;
    _box.put(SettingBoxKey.dynamicColor, value);
  }

  @action
  void deleteDynamicColor() {
    dynamicColor = true;
    _box.delete(SettingBoxKey.dynamicColor);
  }

  @action
  ThemeMode getThemeMode() {
    final themeModeIndex = _box.get(
      SettingBoxKey.themeMode,
      defaultValue: ThemeMode.system.index,
    ); // 确保这里获取的是 int 类型
    themeMode = ThemeMode.values[themeModeIndex]; // 转换为 ThemeMode
    return themeMode;
  }

  @action
  void setThemeMode(int value) {
    themeMode = ThemeMode.values[value]; // 根据索引设置 ThemeMode
    _box.put(SettingBoxKey.themeMode, value); // 存储 int 值
  }

  @action
  void deleteThemeMode() {
    themeMode = ThemeMode.system;
    _box.delete(SettingBoxKey.themeMode);
  }

  @action
  bool getThemeType() {
    isLightTheme = _box.get(SettingBoxKey.themeType, defaultValue: true);
    return isLightTheme;
  }

  @action
  void setThemeType(bool value) {
    isLightTheme = value;
    _box.put(SettingBoxKey.themeType, value);
  }

  @action
  void deleteThemeType() {
    isLightTheme = true;
    _box.delete(SettingBoxKey.themeType);
  }

  @action
  bool getIsAMOLED() {
    isAMOLED = _box.get(SettingBoxKey.isAMOLED, defaultValue: true);
    return isAMOLED;
  }

  @action
  void setIsAMOLED(bool value) {
    isAMOLED = value;
    _box.put(SettingBoxKey.isAMOLED, value);
  }

  @action
  void deleteIsAMOLED() {
    isAMOLED = true;
    _box.delete(SettingBoxKey.isAMOLED);
  }

  @action
  Color getSeedColor() {
    seedColor = _box.get(
      SettingBoxKey.seedColor,
      defaultValue: colorThemeList[6].color,
    );
    return seedColor;
  }

  @action
  void setSeedColor(Color value) {
    seedColor = value;
    _box.put(SettingBoxKey.seedColor, value);
  }

  @action
  void deleteSeedColor() {
    seedColor = _box.get(
      SettingBoxKey.seedColor,
      defaultValue: colorThemeList[6].color,
    );
    _box.delete(SettingBoxKey.seedColor);
  }

  @action
  Color getBackgroundColor() {
    backgroundColor = _box.get(
      SettingBoxKey.backgroundColor,
      defaultValue: Colors.white,
    );
    return backgroundColor;
  }

  @action
  void setBackgroundColor(Color value) {
    backgroundColor = value;
    _box.put(SettingBoxKey.backgroundColor, value);
  }

  @action
  void deleteBackgroundColor() {
    backgroundColor = Colors.white;
    _box.delete(SettingBoxKey.backgroundColor);
  }

  @action
  Color getTextColor() {
    textColor = _box.get(SettingBoxKey.textColor, defaultValue: Colors.black);
    return textColor;
  }

  @action
  void setTextColor(Color value) {
    textColor = value;
    _box.put(SettingBoxKey.textColor, value);
  }

  @action
  void deleteTextColor() {
    textColor = _box.get(SettingBoxKey.textColor, defaultValue: Colors.black);
    _box.delete(SettingBoxKey.textColor);
  }

  @action
  int getThemeInitState() {
    themeInitState = _box.get(SettingBoxKey.themeInitState, defaultValue: 0);
    return themeInitState;
  }

  @action
  void setThemeInitState(int value) {
    themeInitState = value;
    _box.put(SettingBoxKey.themeInitState, value);
  }

  @action
  void deleteThemeInitState() {
    themeInitState = 0;
    _box.delete(SettingBoxKey.themeInitState);
  }

  @action
  dynamic getLocale() {
    locale = _box.get(SettingBoxKey.locale, defaultValue: Locale('zh', 'CN'));
    return locale;
  }

  @action
  void setLocale(dynamic value) {
    locale = value;
    _box.put(SettingBoxKey.locale, value);
  }

  @action
  void deleteLocale() {
    locale = Locale('zh', 'CN');
    _box.delete(SettingBoxKey.locale);
  }

  @action
  int getWelcomePageNum() {
    welcomePageNum = _box.get(SettingBoxKey.welcomePageNum, defaultValue: 0);
    return welcomePageNum;
  }

  @action
  void setWelcomePageNum(int value) {
    welcomePageNum = value;
    _box.put(SettingBoxKey.welcomePageNum, value);
  }

  @action
  void deleteWelcomePageNum() {
    welcomePageNum = 0;
    _box.delete(SettingBoxKey.welcomePageNum);
  }

  @action
  String getWebdavHost() {
    webdavHost = _box.get(SettingBoxKey.webdavHost, defaultValue: '');
    return webdavHost;
  }

  @action
  void setWebdavHost(String value) {
    webdavHost = value;
    _box.put(SettingBoxKey.webdavHost, value);
  }

  @action
  void deleteWebdavHost() {
    webdavHost = '';
    _box.delete(SettingBoxKey.webdavHost);
  }

  @action
  String getWebdavUsername() {
    webdavUsername = _box.get(SettingBoxKey.webdavUsername, defaultValue: '');
    return webdavUsername;
  }

  @action
  void setWebdavUsername(String value) {
    webdavUsername = value;
    _box.put(SettingBoxKey.webdavUsername, value);
  }

  @action
  void deleteWebdavUsername() {
    webdavUsername = '';
    _box.delete(SettingBoxKey.webdavUsername);
  }

  @action
  String getWebdavPassword() {
    webdavPassword = _box.get(SettingBoxKey.webdavPassword, defaultValue: '');
    return webdavPassword;
  }

  @action
  void setWebdavPassword(String value) {
    webdavPassword = value;
    _box.put(SettingBoxKey.webdavPassword, value);
  }

  @action
  void deleteWebdavPassword() {
    webdavPassword = '';
    _box.delete(SettingBoxKey.webdavPassword);
  }

  @action
  bool getAutoSync() {
    autoSync = _box.get(SettingBoxKey.autoSync, defaultValue: true);
    return autoSync;
  }

  @action
  void setAutoSync(bool value) {
    autoSync = value;
    _box.put(SettingBoxKey.autoSync, value);
  }

  @action
  void deleteAutoSync() {
    autoSync = true;
    _box.delete(SettingBoxKey.autoSync);
  }

  @action
  void setSyncNotify(bool value) {
    syncNotify = value;
    _box.put(SettingBoxKey.syncNotify, value);
  }

  @action
  bool getSyncNotify() {
    syncNotify = _box.get(SettingBoxKey.syncNotify, defaultValue: true);
    return syncNotify;
  }

  @action
  void deleteSyncNotify() {
    syncNotify = true;
    _box.delete(SettingBoxKey.syncNotify);
  }

  @action
  void setShade(bool value) {
    shade = value;
    _box.put(SettingBoxKey.shade, value);
  }

  @action
  bool getShade() {
    shade = _box.get(SettingBoxKey.shade, defaultValue: true);
    return shade;
  }

  @action
  void deleteShade() {
    shade = true;
    _box.delete(SettingBoxKey.shade);
  }

  @action
  int getReadMode() {
    readMode = _box.get(SettingBoxKey.readMode, defaultValue: 0);
    return readMode;
  }

  @action
  void setReadMode(int value) {
    readMode = value;
    _box.put(SettingBoxKey.readMode, value);
  }

  @action
  void deleteReadMode() {
    readMode = 0;
    _box.delete(SettingBoxKey.readMode);
  }
}

class SettingBoxKey {
  static const String setting = 'setting';
  static const String dynamicColor = 'dynamicColor'; // 是否开启动态颜色
  static const String themeMode = 'themeMode'; // 主题模式
  static const String themeType = 'themeType'; // 是否是浅色主题
  static const String isAMOLED = 'isAMOLED'; // 是否是AMOLED屏幕
  static const String seedColor = 'seedColor'; // 种子颜色
  static const String themeInitState = 'themeInitState'; // 主题初始状态
  static const String locale = 'locale'; // 语言
  static const String backgroundColor = 'backgroundColor'; // 背景颜色
  static const String textColor = 'textColor'; // 文字颜色
  static const String welcomePageNum = 'welcomePageNum'; // 开屏页序号
  static const String webdavHost = 'webdavHost'; // webdav地址
  static const String webdavUsername = 'webdavUsername'; // webdav用户名
  static const String webdavPassword = 'webdavPassword'; // webdav密码
  static const String autoSync = 'autoSync'; // 是否自动同步
  static const String syncNotify = 'syncNotify'; // 自动同步提醒
  static const String shade = 'shade'; // 黑夜模式遮罩
  static const String readMode = "readMode"; // 阅读模式
}
