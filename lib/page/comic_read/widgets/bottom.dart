import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../main.dart';
import '../../../mobx/string_store.dart';
import '../../../router/router.gr.dart';
import '../../comic_info/json/comic_all_info_json/comic_all_info_json.dart'
    as comic_all_info_json;
import '../../comic_info/json/info/comic_info_json.dart';
import '../../comic_info/models/comic_info.dart';
import '../json/comic_read_json.dart';

class BottomWidget extends StatefulWidget {
  final ComicReadType comicReadType;
  final comic_all_info_json.Chapter? chapter;
  final List<String> chapterUUIDList;
  final ComicReadJson? comicReadJson;
  final bool isVisible;
  final ComicInfoJson comicInfo;
  final StringStore stringStore;
  final Widget slider;

  const BottomWidget({
    super.key,
    required this.comicReadType,
    required this.chapter,
    required this.chapterUUIDList,
    required this.comicReadJson,
    required this.isVisible,
    required this.comicInfo,
    required this.stringStore,
    required this.slider,
  });

  @override
  State<BottomWidget> createState() => _BottomWidgetState();
}

class _BottomWidgetState extends State<BottomWidget> {
  static const _animationDuration = Duration(milliseconds: 300);
  static const _bottomHeight = 100.0;
  static const _blurSigma = 10.0;
  static const _buttonTextStyle = TextStyle(fontSize: 14);
  static const _chapterTextStyle = TextStyle(fontSize: 16);

  ComicReadType get _comicReadType => widget.comicReadType;

  ComicInfoJson get _comicInfo => widget.comicInfo;

  StringStore get _stringStore => widget.stringStore;

  (String prev, String next) get _chapterNavigation {
    if (_comicReadType == ComicReadType.download ||
        _comicReadType == ComicReadType.historyAndDownload) {
      return (widget.chapter?.prev ?? '', widget.chapter?.next ?? '');
    }
    return (
      widget.comicReadJson!.results.chapter.prev,
      widget.comicReadJson!.results.chapter.next,
    );
  }

  Widget _buildChapterButton(String text, bool isActive, VoidCallback? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        text,
        style: _buttonTextStyle.copyWith(
          color: isActive ? setting.textColor : Colors.grey,
        ),
      ),
    );
  }

  Widget _buildThemeButton(
    ThemeMode targetMode,
    IconData activeIcon,
    IconData inactiveIcon,
  ) {
    return IconButton(
      icon: Icon(setting.themeMode == targetMode ? activeIcon : inactiveIcon),
      onPressed:
          () => setting.setThemeMode(targetMode == ThemeMode.dark ? 2 : 1),
    );
  }

  Future<bool> _showNavigationDialog(String message) async {
    return await showDialog<bool>(
          context: context,
          barrierDismissible: false,
          builder:
              (context) => AlertDialog(
                title: const Text('跳转确认'),
                content: Text(message),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('取消'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text('确定'),
                  ),
                ],
              ),
        ) ??
        false;
  }

  void _handleChapterNavigation(String chapterId, ComicReadType type) {
    AutoRouter.of(context).popAndPush(
      ComicReadRoute(
        comicInfo: _comicInfo,
        chapterId: chapterId,
        stringStore: _stringStore,
        comicReadType: type,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final (prev, next) = _chapterNavigation;
    final isDownloadType = _comicReadType == ComicReadType.download;

    return Observer(
      builder: (context) {
        return AnimatedPositioned(
          duration: _animationDuration,
          bottom: widget.isVisible ? 0 : -_bottomHeight,
          left: 0,
          right: 0,
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: _blurSigma, sigmaY: _blurSigma),
              child: Container(
                height: _bottomHeight,
                color: setting.backgroundColor.withValues(alpha: 0.5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const SizedBox(width: 10),
                        _buildChapterButton('上一章', prev.isNotEmpty, () async {
                          if (prev.isEmpty) return;
                          if (await _showNavigationDialog('是否跳转到上一章？')) {
                            _handleChapterNavigation(
                              prev,
                              isDownloadType
                                  ? ComicReadType.download
                                  : ComicReadType.none,
                            );
                          }
                        }),
                        widget.slider,
                        _buildChapterButton('下一章', next.isNotEmpty, () async {
                          if (next.isEmpty) return;
                          if (await _showNavigationDialog('是否跳转到下一章？')) {
                            _handleChapterNavigation(
                              next,
                              isDownloadType
                                  ? ComicReadType.download
                                  : ComicReadType.none,
                            );
                          }
                        }),
                        const SizedBox(width: 10),
                      ],
                    ),
                    Divider(
                      height: 1,
                      color: materialColorScheme.secondaryFixedDim,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _buildThemeButton(
                          ThemeMode.light,
                          Icons.brightness_7,
                          Icons.brightness_5_outlined,
                        ),
                        TextButton(
                          onPressed: () => context.maybePop(),
                          child: Text('选择章节', style: _chapterTextStyle),
                        ),
                        _buildThemeButton(
                          ThemeMode.dark,
                          Icons.brightness_2_rounded,
                          Icons.brightness_2_outlined,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
