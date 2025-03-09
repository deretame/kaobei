import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/comic_info/comic_info.dart';
import 'package:kaobei/page/comic_info/json/comic_all_info_json/comic_all_info_json.dart'
    as comic_all_info_json;
import 'package:kaobei/page/comic_read/comic_read.dart';
import 'package:kaobei/router/router.gr.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../config/config.dart';
import '../../../main.dart';
import '../../../mobx/string_store.dart';
import '../../../object_box/model.dart';
import '../../../object_box/objectbox.g.dart';
import '../../comic_info/json/info/comic_info_json.dart';
import '../json/comic_read_json.dart';

@RoutePage()
class ComicReadPage extends StatelessWidget {
  final ComicInfoJson comicInfo;
  final String chapterId;
  final StringStore stringStore;
  final ComicReadType? comicReadType;

  const ComicReadPage({
    super.key,
    required this.chapterId,
    required this.comicInfo,
    required this.stringStore,
    this.comicReadType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              ComicReadBloc()..add(
                ComicReadEvent(
                  ComicReadStatus.initial,
                  comicInfo.results.comic.pathWord,
                  chapterId,
                ),
              ),
      child: _ComicReadPage(
        comicInfo: comicInfo,
        chapterId: chapterId,
        stringStore: stringStore,
        comicReadType: comicReadType ?? ComicReadType.none,
      ),
    );
  }
}

class _ComicReadPage extends StatefulWidget {
  final ComicInfoJson comicInfo;
  final String chapterId;
  final StringStore stringStore;
  final ComicReadType comicReadType;

  const _ComicReadPage({
    required this.comicInfo,
    required this.chapterId,
    required this.stringStore,
    required this.comicReadType,
  });

  @override
  State<_ComicReadPage> createState() => __ComicReadPageState();
}

class __ComicReadPageState extends State<_ComicReadPage> {
  ComicInfoJson get comicInfo => widget.comicInfo;

  String get chapterId => widget.chapterId;

  StringStore get stringStore => widget.stringStore;

  bool get isDownload =>
      widget.comicReadType == ComicReadType.download ||
      widget.comicReadType == ComicReadType.historyAndDownload;

  bool get isHistory =>
      widget.comicReadType == ComicReadType.history ||
      widget.comicReadType == ComicReadType.historyAndDownload;

  late String comicId;
  late bool isSkipped = false; // 是否跳转过
  ComicReadJson? comicReadJson; // 阅读页面数据
  late final ItemScrollController _itemScrollController;
  late final ItemPositionsListener _itemPositionsListener;
  int pageIndex = 0; // 当前页数
  String epPages = ""; // 章节总页数
  bool _isVisible = true; // 控制 AppBar 和 BottomAppBar 的可见性
  late int _lastScrollIndex = -1; // 用于记录上次滚动的索引
  double _currentSliderValue = 0; // 当前滑块的值
  int _totalSlots = 0; // 总槽位数量
  bool _isSliderRolling = false; // 滑块是否在滑动
  bool _isComicRolling = false; // 漫画本身是否在滚动
  bool _isInserting = false; // 检测数据插入状态
  DateTime? _lastUpdateTime; // 记录上次更新时间
  late ComicHistory? comicHistory; // 记录漫画阅读历史
  late comic_all_info_json.ComicAllInfoJson
  comicAllInfoJson; // 记录漫画全部信息，只有从下载列表过来才会有
  comic_all_info_json.Chapter? chapter; // 记录章节信息，只有从下载列表过来才会有
  List<String> chapterUUIDList = []; // 记录章节uuid列表，只有从下载列表过来才会有
  String title = ""; // 记录标题
  String uuid = ""; // 记录uuid
  List<String> comicImageUrlList = []; // 记录漫画图片列表
  bool init = false; // 记录是否初始化完成

  @override
  void initState() {
    super.initState();
    comicId = comicInfo.results.comic.pathWord;
    _itemScrollController = ItemScrollController();
    _itemPositionsListener = ItemPositionsListener.create();

    _itemPositionsListener.itemPositions.addListener(() {
      if (_itemPositionsListener.itemPositions.value.isNotEmpty) {
        final positions = _itemPositionsListener.itemPositions.value;
        getTopThirdItemIndex(positions);
        _detectScrollDirection(positions);
      }
    });

    comicHistory =
        objectbox.historyBox
            .query(ComicHistory_.pathWord.equals(comicId))
            .build()
            .findFirst();

    if (comicHistory == null) {
      comicHistory = initComicHistory(comicInfo.results.comic);
      objectbox.historyBox.put(comicHistory!);
    } else {
      stringStore.setDate(
        "${comicHistory!.chapterName}（${comicHistory!.chapterIndex}）"
        "——"
        "${comicHistory!.lastViewingTime.toString().substring(0, 19)}",
      );
    }

    if (isDownload) {
      comicAllInfoJson = comic_all_info_json.comicAllInfoJsonFromJson(
        objectbox.downloadBox
            .query(ComicDownload_.pathWord.equals(comicId))
            .build()
            .findFirst()!
            .allInfo,
      );
    }
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          isDownload
              ? _successWidget(null)
              : BlocBuilder<ComicReadBloc, ComicReadState>(
                builder: (context, state) {
                  switch (state.status) {
                    case ComicReadStatus.initial:
                      return Container(
                        color: Color(0xFF2D2D2D),
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Color(0xFFCCCCCC),
                          ),
                        ),
                      );
                    case ComicReadStatus.failure:
                      return _errorWidget(state);
                    case ComicReadStatus.success:
                      return _successWidget(state);
                  }
                },
              ),
    );
  }

  Widget _errorWidget(ComicReadState state) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        context.read<ComicReadBloc>().add(
          ComicReadEvent(ComicReadStatus.initial, comicId, chapterId),
        );
      },
      child: Container(
        color: Color(0xFF2D2D2D),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: RichText(
              text: TextSpan(
                text: '${state.result.toString()}\n加载失败，点击重试',
                style: TextStyle(fontSize: 20, color: Color(0xFFCCCCCC)),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _successWidget(ComicReadState? state) {
    try {
      _initData(state);
    } catch (e) {
      return Center(child: Text("章节未下载", style: TextStyle(fontSize: 30)));
    }

    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
        color: Colors.black,
        child: Stack(
          children: [
            _readListWidget(),
            _comicReadAppBar(),
            _pageCountWidget(),
            _bottomWidget(),
            _commentWidget(),
          ],
        ),
      ),
    );
  }

  Widget _readListWidget() {
    return GestureDetector(
      onTap:
          () => setState(() {
            _isVisible = !_isVisible;
            if (_isVisible) {
              SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
            }
          }),
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.zero,
        minScale: 1.0,
        maxScale: 4.0,
        child: ColumnList(
          comicImageUrlList: comicImageUrlList,
          comicId: comicId,
          uuid: uuid,
          itemScrollController: _itemScrollController,
          itemPositionsListener: _itemPositionsListener,
        ),
      ),
    );
  }

  Widget _comicReadAppBar() {
    return ComicReadAppBar(
      title: title,
      isVisible: _isVisible,
      onThemeModeChanged: () {
        setting.setThemeMode(0);
      },
    );
  }

  Widget _pageCountWidget() {
    return PageCountWidget(pageIndex: pageIndex, epPages: epPages);
  }

  Widget _bottomWidget() {
    return BottomWidget(
      comicReadType: widget.comicReadType,
      chapter: chapter,
      chapterUUIDList: chapterUUIDList,
      comicReadJson: comicReadJson,
      isVisible: _isVisible,
      comicInfo: comicInfo,
      stringStore: stringStore,
      slider: SliderWidget(
        totalSlots: _totalSlots,
        currentSliderValue: _currentSliderValue,
        changeSliderValue: (double newValue) {
          setState(() => _currentSliderValue = newValue);
        },
        changeSliderRollState: (bool newValue) {
          setState(() => _isSliderRolling = newValue);
        },
        changeComicRollState: (bool newValue) {
          setState(() => _isComicRolling = newValue);
        },
        itemScrollController: _itemScrollController,
      ),
    );
  }

  Widget _commentWidget() {
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 400),
      right: _isVisible ? 20 : -60,
      bottom: MediaQuery.of(context).size.height / 2 - 28,
      child: AnimatedOpacity(
        duration: const Duration(milliseconds: 400),
        opacity: _isVisible ? 1 : 0,
        child: FloatingActionButton(
          backgroundColor: materialColorScheme.primaryContainer,
          elevation: 4,
          child: Icon(Icons.comment),
          onPressed: () {
            AutoRouter.of(context).push(
              ChapterCommentRoute(chapterName: title, chapterId: chapterId),
            );
          },
        ),
      ),
    );
  }

  void _initData(ComicReadState? state) {
    if (_isVisible == false) {
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    }

    if (!init) {
      if (!isDownload) {
        comicImageUrlList = [];
        comicReadJson = state!.eps!;
        for (var i in comicReadJson!.results.chapter.contents) {
          comicImageUrlList.add(i.url);
        }
        comicImageUrlList.sort();
        title = comicReadJson!.results.chapter.name;
        uuid = comicReadJson!.results.chapter.uuid;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          setState(() => epPages = comicImageUrlList.length.toString());
        });
      } else {
        comicImageUrlList = [];
        for (var group in comicAllInfoJson.groups) {
          for (var chapterList in group.chapterList) {
            chapterUUIDList.add(chapterList.chapterInfo.chapter.uuid);
            if (chapterList.chapterInfo.chapter.uuid == chapterId) {
              chapter = chapterList.chapterInfo.chapter;
              comicImageUrlList = chapterList.chapterInfo.chapter.contents;
            }
          }
        }
        title = chapter!.name;
        uuid = chapter!.uuid;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          setState(() => epPages = comicImageUrlList.length.toString());
        });
      }

      _totalSlots = comicImageUrlList.length;
    }
    init = true;

    if (isHistory && comicHistory!.chapterIndex != 0 && isSkipped == false) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _itemScrollController.scrollTo(
          index: comicHistory!.chapterIndex,
          alignment: 0.0,
          duration: const Duration(milliseconds: 500),
        );
      });
    }
    isSkipped = true;
  }

  Future<void> getTopThirdItemIndex(Iterable<ItemPosition> positions) async {
    await updateIndex(positions);
    await writeToDatabase();
  }

  Future<void> updateIndex(Iterable<ItemPosition> positions) async {
    if (positions.isEmpty) return;

    // 提前计算屏幕的三分之一位置
    final viewportHeight = MediaQuery.of(context).size.height;
    final topThird = viewportHeight / 3 + statusBarHeight;

    // 找到最接近的项
    final closestPosition = _findClosestPosition(positions, topThird);

    // 更新索引
    if (closestPosition != null &&
        mounted &&
        !_isSliderRolling &&
        pageIndex != closestPosition.index) {
      setState(() {
        pageIndex = closestPosition.index;
        if (!_isComicRolling) {
          _currentSliderValue = pageIndex - 2;
        }
      });
    }
  }

  Future<void> writeToDatabase() async {
    if (_isInserting ||
        _lastUpdateTime != null &&
            DateTime.now().difference(_lastUpdateTime!).inMilliseconds < 100) {
      return;
    }

    // 更新记录
    _isInserting = true;
    comicHistory!
      ..deleted = false
      ..deleteTime = DateTime(2000, 1, 1, 0, 0, 0).toUtc()
      ..lastViewingTime = DateTime.now().toUtc()
      ..chapterId = chapterId
      ..chapterName = title
      ..chapterIndex = pageIndex - 1;
    await objectbox.historyBox.putAsync(comicHistory!);
    stringStore.setDate(
      "${comicHistory!.chapterName}(${comicHistory!.chapterIndex})——${comicHistory!.lastViewingTime.toString().substring(0, 19)}",
    );

    _isInserting = false;
    _lastUpdateTime = DateTime.now();
  }

  /// 找到最接近屏幕三分之一位置的项
  ItemPosition? _findClosestPosition(
    Iterable<ItemPosition> positions,
    double topThird,
  ) {
    ItemPosition? closestPosition;
    double minDistance = double.infinity;

    for (final position in positions) {
      // 计算项的中心位置
      final itemHeight = position.itemTrailingEdge - position.itemLeadingEdge;
      final itemMiddle = position.itemLeadingEdge + itemHeight / 2;
      final distance = (topThird - itemMiddle).abs();

      // 找到距离最小的项
      if (distance < minDistance) {
        minDistance = distance;
        closestPosition = position;
      }
    }

    return closestPosition;
  }

  void _detectScrollDirection(Iterable<ItemPosition> positions) {
    if (positions.isNotEmpty) {
      // 获取当前滚动的第一个索引
      final firstItemIndex = positions.first.index;

      // 判断是否有滚动
      if (firstItemIndex != _lastScrollIndex && !_isSliderRolling) {
        setState(() {
          _isVisible = false; // 只要滚动了就隐藏组件
        });
      }

      // 更新记录的滚动索引
      _lastScrollIndex = firstItemIndex;
    }
  }
}
