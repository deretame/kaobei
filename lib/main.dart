import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:dynamic_color/dynamic_color.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:hive_ce_flutter/adapters.dart';
import 'package:kaobei/router/router.dart';
import 'package:kaobei/util/cache_manager.dart';
import 'package:kaobei/util/get_path.dart';
import 'package:kaobei/util/pretty_log.dart';
import 'package:logger/logger.dart';
import 'package:window_manager/window_manager.dart';

import 'config/config.dart';
import 'config/setting.dart';
import 'config/theme_mode_adapter.dart';
import 'network/dio_cache.dart';
import 'object_box/object_box.dart';

class DevHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

// 定义全局Dio实例
final dio = Dio();

// 定义缓存拦截器
final cacheInterceptor = DioCacheInterceptor(ExpiringMemoryCache());
final appRouter = AppRouter();
late final ObjectBox objectbox;

final setting = Setting();

// 全局事件总线实例
EventBus eventBus = EventBus();

// 获取material主题颜色方案
late ColorScheme materialColorScheme;
late ColorScheme materialColorSchemeDark;

var logger = Logger(printer: CustomPrinter());

Future<void> main() async {
  // 捕获 Flutter 框架异常
  FlutterError.onError = (FlutterErrorDetails details) {
    logger.e(details, error: details.exception, stackTrace: details.stack);
  };
  // 捕获所有未处理的 Dart 异常
  PlatformDispatcher.instance.onError = (error, stackTrace) {
    logger.e(error, stackTrace: stackTrace);
    return true; // 返回 true 表示异常已处理
  };

  // 捕获Dart异常
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      // 忽略证书验证
      // HttpOverrides.global = DevHttpOverrides();

      String? hivePath;
      // 初始化Hive
      if (Platform.isWindows) {
        hivePath = await getFilePath();
        final Directory hiveDirectory = Directory(hivePath);

        // 如果目录不存在，则创建
        if (!hiveDirectory.existsSync()) {
          logger.i('Cache directory does not exist, creating...');
          await hiveDirectory.create(recursive: true);
        }
      }
      await Hive.initFlutter(hivePath);
      // 注册 Color 适配器
      Hive.registerAdapter(ThemeModeAdapter());
      await setting.initBox();

      const skia = String.fromEnvironment('use_skia', defaultValue: 'false');
      if (skia == 'true') {
        useSkia = true;
      } else {
        useSkia = false;
      }

      objectbox = await ObjectBox.create();

      // 清理缓存
      await manageCacheSize();

      if (Platform.isAndroid) {
        // 重采样触控刷新率
        GestureBinding.instance.resamplingEnabled = false;

        // 告诉系统应该用竖屏
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
      }

      if (Platform.isWindows) {
        await windowManager.ensureInitialized();

        double screenWidth = setting.screenWidth;
        double screenHeight = setting.screenHeight;

        if (screenWidth == 0) {
          screenWidth = 600.0;
          screenHeight = 1000.0;
        }

        WindowOptions windowOptions = WindowOptions(
          size: Size(screenWidth, screenHeight),
          center: true,
          backgroundColor: Colors.transparent,
          skipTaskbar: false,
          titleBarStyle: TitleBarStyle.normal,
        );
        windowManager.waitUntilReadyToShow(windowOptions, () async {
          await windowManager.show();
          await windowManager.focus();
        });
      }

      runApp(const MyApp());
    },
    (error, stackTrace) {
      logger.e(error, stackTrace: stackTrace);
    },
  );
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
    with WidgetsBindingObserver, WindowListener {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      statusBarHeight = MediaQuery.of(context).padding.top;
      updateScreenSize();
    });
    WidgetsBinding.instance.addObserver(this);
    windowManager.addListener(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    windowManager.removeListener(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    updateScreenSize();
  }

  @override
  void onWindowFocus() {
    updateScreenSize();
  }

  @override
  void onWindowBlur() {
    updateScreenSize();
  }

  @override
  void onWindowMaximize() {
    updateScreenSize();
  }

  @override
  void onWindowUnmaximize() {
    updateScreenSize();
  }

  @override
  void onWindowRestore() {
    updateScreenSize();
  }

  void _updateThemeSettings() {
    var isDarkMode =
        MediaQuery.of(context).platformBrightness == Brightness.dark;

    if (setting.themeMode == ThemeMode.dark) {
      isDarkMode = true;
    } else if (setting.themeMode == ThemeMode.light) {
      isDarkMode = false;
    }

    setting.setThemeType(!isDarkMode);
    setting.setBackgroundColor(materialColorScheme.surfaceBright);
    setting.setTextColor(materialColorScheme.onSurface);

    // logger.d(
    //   "isDarkMode: $isDarkMode\nThemeMode: ${setting.themeMode}\nThemeType: ${setting.isLightTheme}\nBackgroundColor: ${setting.backgroundColor}\nTextColor: ${setting.textColor}",
    // );
  }

  @override
  Widget build(BuildContext context) {
    // 设置这个的目的是为了缓解图片重载
    PaintingBinding.instance.imageCache.maximumSizeBytes = 1024 * 1024 * 1024;
    return Observer(
      builder: (context) {
        return DynamicColorBuilder(
          key: ValueKey(
            setting.dynamicColor.toString() +
                setting.seedColor.toString() +
                setting.themeMode.toString() +
                setting.isLightTheme.toString() +
                setting.isAMOLED.toString(),
          ), // 强制重建
          builder: (ColorScheme? lightDynamic, ColorScheme? darkDynamic) {
            ColorScheme lightColorScheme;
            ColorScheme darkColorScheme;

            // 根据 dynamicColor 的值决定是否使用动态颜色
            if (setting.dynamicColor == true) {
              lightColorScheme =
                  lightDynamic ??
                  ColorScheme.fromSeed(
                    seedColor: setting.seedColor, // 默认颜色
                    brightness: Brightness.light,
                  );
              darkColorScheme =
                  darkDynamic ??
                  ColorScheme.fromSeed(
                    seedColor: setting.seedColor, // 默认颜色
                    brightness: Brightness.dark,
                  );
            } else {
              // 使用静态颜色方案
              var primary = setting.seedColor;

              lightColorScheme = ColorScheme.fromSeed(
                seedColor: primary,
                brightness: Brightness.light,
              );
              darkColorScheme = ColorScheme.fromSeed(
                seedColor: primary,
                brightness: Brightness.dark,
              );
            }

            // 根据当前主题模式选择对应的 ColorScheme
            setting.themeMode == ThemeMode.dark
                ? darkColorScheme
                : lightColorScheme;

            setting.isLightTheme == true
                ? materialColorScheme = lightColorScheme
                : materialColorScheme = darkColorScheme;
            materialColorSchemeDark = darkColorScheme;

            _updateThemeSettings();
            updateScreenSize();

            return MaterialApp.router(
              routerConfig: appRouter.config(),
              locale: const Locale('zh', 'CN'),
              title: '拷贝',
              themeMode: setting.themeMode,
              supportedLocales: [
                Locale('en', 'US'), // English
                Locale('zh', 'CN'), // Chinese
              ],
              localizationsDelegates: [
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              theme: ThemeData.light().copyWith(
                primaryColor: lightColorScheme.primary,
                colorScheme: lightColorScheme,
                scaffoldBackgroundColor: lightColorScheme.surface,
                cardColor: lightColorScheme.surfaceContainer,
                chipTheme: ChipThemeData(
                  backgroundColor: lightColorScheme.surface,
                ),
                canvasColor: lightColorScheme.surfaceContainer,
                dialogTheme: DialogThemeData(
                  backgroundColor: lightColorScheme.surfaceContainer,
                ),
              ),
              darkTheme: ThemeData.dark().copyWith(
                scaffoldBackgroundColor:
                    setting.isAMOLED ? Colors.black : darkColorScheme.surface,
                tabBarTheme: TabBarTheme(dividerColor: Colors.transparent),
                colorScheme: darkColorScheme,
              ),
            );
          },
        );
      },
    );
  }

  void updateScreenSize() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    setting.setScreenSize(screenWidth, screenHeight);
  }
}
