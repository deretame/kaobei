import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';
import 'package:kaobei/config/config.dart';
import 'package:kaobei/page/comic_info/comic_info.dart';

import '../../../main.dart';
import '../../../mobx/string_store.dart';
import '../../../router/router.gr.dart';
import '../json/comic_all_info_json/comic_all_info_json.dart'
    as comic_all_info_json;
import '../json/eps/eps_json.dart';
import '../json/info/comic_info_json.dart';

class EpsWidget extends StatelessWidget {
  final int index;
  final ComicInfoJson comicInfo;
  final Group group;
  final StringStore stringStore;
  final ComicReadType comicReadType;
  final comic_all_info_json.ComicAllInfoJson? comicAllInfo;

  const EpsWidget({
    super.key,
    required this.index,
    required this.comicInfo,
    required this.group,
    required this.stringStore,
    required this.comicReadType,
    this.comicAllInfo,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              EpsBloc()..add(
                EpsEvent(
                  status: EpsStatus.initial,
                  comicId: comicInfo.results.comic.pathWord,
                  group: group.pathWord,
                ),
              ),
      child: _EpsWidget(
        index: index,
        comicInfo: comicInfo,
        group: group,
        stringStore: stringStore,
        comicReadType: comicReadType,
        comicAllInfo: comicAllInfo,
      ),
    );
  }
}

class _EpsWidget extends StatefulWidget {
  final int index;
  final ComicInfoJson comicInfo;
  final Group group;
  final StringStore stringStore;
  final ComicReadType comicReadType;
  final comic_all_info_json.ComicAllInfoJson? comicAllInfo;

  const _EpsWidget({
    required this.index,
    required this.comicInfo,
    required this.group,
    required this.stringStore,
    required this.comicReadType,
    this.comicAllInfo,
  });

  @override
  State<_EpsWidget> createState() => _EpsWidgetState();
}

class _EpsWidgetState extends State<_EpsWidget>
    with SingleTickerProviderStateMixin {
  int get index => widget.index;

  ComicInfoJson get comicInfo => widget.comicInfo;

  Group get group => widget.group;

  StringStore get stringStore => widget.stringStore;

  ComicReadType get comicReadType => widget.comicReadType;

  comic_all_info_json.ComicAllInfoJson? get comicAllInfo => widget.comicAllInfo;

  late String comicId;
  bool isExpanded = true;
  late AnimationController _animationController;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();
    comicId = comicInfo.results.comic.pathWord;
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );
    _rotationAnimation = Tween<double>(
      begin: 0,
      end: 180, // 旋转180度
    ).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return comicReadType == ComicReadType.download
        ? _buildBody(null)
        : BlocBuilder<EpsBloc, EpsState>(
          builder: (context, state) {
            switch (state.status) {
              case EpsStatus.initial:
              case EpsStatus.failure:
              case EpsStatus.success:
                return _buildBody(state);
            }
          },
        );
  }

  Widget _buildBody(EpsState? state) {
    var itemCount = 1;
    List<List<ListElement>> elementsRows = [];

    if (state != null) {
      if (state.status == EpsStatus.success) {
        elementsRows = generateElements(state.eps!);
        itemCount = elementsRows.length;
      }
    }

    List<ListElement> elements = [];
    if (comicReadType == ComicReadType.download) {
      for (var chapterList in comicAllInfo!.groups[index].chapterList) {
        var chapter = chapterList.chapterInfo.chapter;
        elements.add(
          ListElement(
            index: chapter.index,
            uuid: chapter.uuid,
            count: chapter.count,
            ordered: chapter.ordered,
            size: chapter.size,
            name: chapter.name,
            comicId: chapter.comicId,
            comicPathWord: chapter.comicPathWord,
            groupId: chapter.groupId,
            groupPathWord: chapter.groupPathWord,
            type: chapter.type,
            imgType: chapter.imgType,
            news: chapter.news,
            datetimeCreated: chapter.datetimeCreated,
            prev: chapter.prev,
            next: chapter.next,
          ),
        );
      }
      elementsRows = generateElements(elements);
      itemCount = elementsRows.length;
    }

    return SliverStickyHeader(
      header: GestureDetector(
        onTap: () {
          setState(() {
            isExpanded = !isExpanded;
            if (isExpanded) {
              _animationController.reverse(); // 顺时针旋转回去
            } else {
              _animationController.forward(); // 逆时针旋转
            }
          });
        },
        child: Observer(
          builder:
              (context) => Container(
                padding: EdgeInsets.all(10),
                color:
                    setting.isLightTheme || !setting.isAMOLED
                        ? setting.backgroundColor
                        : Colors.black,
                child: Container(
                  decoration: BoxDecoration(
                    color: setting.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: materialColorScheme.secondary,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  height: 47,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(width: 10),
                      Text(group.name, style: TextStyle(fontSize: 18)),
                      Spacer(),
                      Container(
                        decoration: BoxDecoration(
                          color: materialColorScheme.secondaryContainer,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding: const EdgeInsets.all(4),
                        child: AnimatedBuilder(
                          animation: _rotationAnimation,
                          builder: (context, child) {
                            return Transform.rotate(
                              angle: _rotationAnimation.value * (3.14 / 180),
                              // 将角度转换为弧度
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 24,
                                color: materialColorScheme.primary,
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
              ),
        ),
      ),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, i) {
            if (comicReadType != ComicReadType.download) {
              if (state!.status == EpsStatus.initial) {
                return Center(
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: CircularProgressIndicator(),
                  ),
                );
              }

              if (state.status == EpsStatus.failure) {
                return _errorWidget(state);
              }
            }

            return elementInfoRow(elementsRows[i]);
          },
          childCount: isExpanded ? itemCount : 0, // 根据状态动态设置 childCount
        ),
      ),
    );
  }

  Widget _errorWidget(EpsState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '${state.result.toString()}\n加载失败',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10), // 添加间距
          ElevatedButton(
            onPressed: () {
              context.read<EpsBloc>().add(
                EpsEvent(
                  status: EpsStatus.initial,
                  comicId: comicId,
                  group: group.pathWord,
                ),
              );
            },
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  List<List<ListElement>> generateElements(List<ListElement> elements) {
    List<List<ListElement>> elementsRows = [];
    int rowCount = elements.length ~/ 4;
    int remainder = elements.length % 4;
    if (remainder != 0) {
      rowCount++;
      for (int i = 0; i < 4 - remainder; i++) {
        elements.add(
          ListElement(
            index: 0,
            uuid: '',
            count: 0,
            ordered: 0,
            size: 0,
            name: '',
            comicId: '',
            comicPathWord: '',
            groupId: '',
            groupPathWord: '',
            type: 0,
            imgType: 0,
            news: '',
            datetimeCreated: DateTime.now(),
            prev: '',
            next: '',
          ),
        );
      }
    }

    for (int i = 0; i < rowCount; i++) {
      int start = i * 4;
      int end = start + 4;
      if (end > elements.length) {
        end = elements.length;
      }
      elementsRows.add(elements.sublist(start, end));
    }

    return elementsRows;
  }

  Widget elementInfoRow(List<ListElement> elementsRows) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          elementInfo(elementsRows[0]),
          elementInfo(elementsRows[1]),
          elementInfo(elementsRows[2]),
          elementInfo(elementsRows[3]),
        ],
      ),
    );
  }

  Widget elementInfo(ListElement element) {
    final width = screenWidth * 0.21;

    if (element.name == '') return SizedBox(width: width + 4);

    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(
          ComicReadRoute(
            comicInfo: comicInfo,
            chapterId: element.uuid,
            stringStore: stringStore,
            comicReadType: comicReadType,
          ),
        );
      },
      child: Observer(
        builder:
            (context) => Container(
              width: width,
              decoration: BoxDecoration(
                color: setting.backgroundColor,
                borderRadius: BorderRadius.circular(5),
                boxShadow: [
                  BoxShadow(
                    color: materialColorScheme.secondary,
                    blurRadius: 1,
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 4),
              child: SizedBox(
                width: width - 4,
                child: Center(
                  child: Text(
                    element.name,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 14,
                      color: materialColorScheme.onSurface,
                    ),
                  ),
                ),
              ),
            ),
      ),
    );
  }
}
