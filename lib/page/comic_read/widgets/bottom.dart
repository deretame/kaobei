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
    return TextButton(
      onPressed: isActive ? onTap : null,
      child: Text(text, style: TextStyle(fontSize: 14)),
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
    final isDownloadType =
        _comicReadType == ComicReadType.download ||
        _comicReadType == ComicReadType.historyAndDownload;

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
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        IconButton(
                          icon: Icon(Icons.home),
                          onPressed:
                              () => AutoRouter.of(context).popUntilRoot(),
                        ),
                        TextButton(
                          onPressed: () => context.maybePop(),
                          child: Text('选择章节', style: _chapterTextStyle),
                        ),
                        IconButton(
                          icon: _getThemeIcon(),
                          onPressed: () {
                            final nextMode = (setting.themeMode.index + 1) % 3;
                            setting.setThemeMode(nextMode);
                          },
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

  Icon _getThemeIcon() {
    return switch (setting.themeMode) {
      ThemeMode.system => const Icon(Icons.brightness_auto_outlined),
      ThemeMode.light => const Icon(Icons.brightness_7),
      ThemeMode.dark => const Icon(Icons.brightness_2_rounded),
    };
  }
}
