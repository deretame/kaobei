import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:toastification/toastification.dart';
import 'package:url_launcher/url_launcher.dart';

import '../main.dart';
import '../util/github/check_update.dart';
import '../util/toast.dart';
import 'bookshelf/bookshelf.dart';
import 'comic/comic.dart';
import 'more/view/more_page.dart';

@RoutePage()
class NavigationBarPage extends StatefulWidget {
  const NavigationBarPage({super.key});

  @override
  State<NavigationBarPage> createState() => _NavigationBarPageState();
}

class _NavigationBarPageState extends State<NavigationBarPage> {
  // OverlayEntry 用于管理遮罩层
  OverlayEntry? _overlayEntry;
  final ScrollController _bookShelfCollectController = ScrollController();
  final ScrollController _bookShelfHistoryController = ScrollController();
  final ScrollController _bookShelfDownloadController = ScrollController();

  // PersistentTabController 用于控制底部导航栏
  final PersistentTabController _controller = PersistentTabController(
    initialIndex: 0,
  );

  // 页面列表
  late final List<Widget> _pageList;

  @override
  void initState() {
    super.initState();
    _checkUpdate();
    _pageList = [
      BookShelf(
        collectScrollController: _bookShelfCollectController,
        historyScrollController: _bookShelfHistoryController,
        downloadScrollController: _bookShelfDownloadController,
      ),
      ComicPage(),
      MorePage(),
    ];
    eventBus.on<ToastEvent>().listen((event) {
      _showToast(event);
    });

    // 添加遮罩层
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _addOverlay();
    });

    // 监听全局键盘事件
    HardwareKeyboard.instance.addHandler(_handleKeyEvent);
  }

  bool _handleKeyEvent(KeyEvent event) {
    if (event is KeyDownEvent &&
        event.logicalKey == LogicalKeyboardKey.escape) {
      AutoRouter.of(context).maybePop();
    }
    return false;
  }

  @override
  void dispose() {
    _removeOverlay(); // 移除遮罩层
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return PersistentTabView(
          context,
          controller: _controller,
          // 页面列表
          screens: _pageList,
          // 导航栏项
          items: _navBarItems(),
          // 导航栏背景颜色
          backgroundColor: setting.backgroundColor,
          // 处理 Android 返回按钮
          handleAndroidBackButtonPress: true,
          // 调整布局以避免键盘遮挡
          resizeToAvoidBottomInset: false,
          // 避免在键盘弹出时隐藏导航栏
          hideNavigationBarWhenKeyboardAppears: false,
          // 保持页面状态
          stateManagement: true,
          // decoration: NavBarDecoration(
          //   // borderRadius: BorderRadius.circular(10.0), // 导航栏圆角
          //   colorBehindNavBar: globalSetting.backgroundColor, // 导航栏后面的颜色
          // ),
          hideOnScrollSettings: HideOnScrollSettings(
            hideNavBarOnScroll: true,
            scrollControllers: [
              _bookShelfCollectController,
              _bookShelfHistoryController,
              _bookShelfDownloadController,
            ],
          ),
          navBarStyle: NavBarStyle.style3, // 导航栏样式
        );
      },
    );
  }

  // 底部导航栏的配置项
  List<PersistentBottomNavBarItem> _navBarItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(Icons.menu_book_sharp),
        title: "书架",
        activeColorPrimary: materialColorScheme.primary,
        inactiveColorPrimary: setting.textColor,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.collections_bookmark_rounded),
        title: "漫画",
        activeColorPrimary: materialColorScheme.primary,
        inactiveColorPrimary: setting.textColor,
      ),
      // PersistentBottomNavBarItem(
      //   icon: SvgPicture.asset('assets/svg/novel.svg'),
      //   title: "小说",
      //   activeColorPrimary: materialColorScheme.primary,
      //   inactiveColorPrimary: setting.textColor,
      // ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.more_horiz),
        title: "更多",
        activeColorPrimary: materialColorScheme.primary,
        inactiveColorPrimary: setting.textColor,
      ),
    ];
  }

  // 添加遮罩层
  void _addOverlay() {
    _overlayEntry = OverlayEntry(
      builder: (context) {
        return Observer(
          builder:
              (context) => Positioned.fill(
                child: IgnorePointer(
                  ignoring: true, // 不拦截触控事件
                  child: Container(
                    color:
                        setting.shade && setting.isLightTheme
                            ? Colors.transparent
                            : Colors.black.withValues(alpha: 0.5),
                  ),
                ),
              ),
        );
      },
    );

    // 将遮罩层插入到 Overlay 中
    Overlay.of(context).insert(_overlayEntry!);
  }

  // 移除遮罩层
  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  void _showToast(ToastEvent event) {
    ToastificationType type;
    switch (event.type) {
      case ToastType.success:
        type = ToastificationType.success;
        break;
      case ToastType.error:
        type = ToastificationType.error;
        break;
      case ToastType.warning:
        type = ToastificationType.warning;
        break;
      case ToastType.info:
        type = ToastificationType.info;
        break;
    }

    toastification.show(
      context: context,
      title: event.title == null ? null : Text(event.title!),
      description: Text(event.message),
      type: type,
      style: ToastificationStyle.flatColored,
      autoCloseDuration: event.duration,
      showProgressBar: true,
    );
  }

  Future<void> _checkUpdate() async {
    final temp = await getCloudVersion();
    final cloudVersion = temp.tagName;
    final releaseInfo = temp.body;
    final String localVersion = await getAppVersion();

    if (isUpdateAvailable(cloudVersion, localVersion)) {
      if (!mounted) return;
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('发现新版本'),
            content: SingleChildScrollView(
              child: SizedBox(
                width: double.maxFinite, // 设置最大宽度
                child: MarkdownBody(data: '# $cloudVersion\n$releaseInfo'),
              ),
            ),
            actions: [
              TextButton(
                child: Text('取消'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('前往GitHub'),
                onPressed: () {
                  launchUrl(
                    Uri.parse(
                      'https://github.com/deretame/kaobei/releases/tag/$cloudVersion',
                    ),
                  );
                  Navigator.of(context).pop();
                },
              ),
              TextButton(
                child: Text('下载安装'),
                onPressed: () async {
                  Navigator.of(context).pop();
                  for (var apkUrl in temp.assets) {
                    if (apkUrl.browserDownloadUrl.contains(
                      "app-arm64-v8a-release.apk",
                    )) {
                      await installApk(apkUrl.browserDownloadUrl);
                    }
                  }
                },
              ),
            ],
          );
        },
      );
    }
  }
}
