import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_sticky_header/flutter_sticky_header.dart';

import '../../main.dart';
import '../../mobx/bool_store.dart';
import '../../object_box/objectbox.g.dart';
import '../comic_info/bloc/eps/eps_bloc.dart';
import '../comic_info/json/comic_all_info_json/comic_all_info_json.dart'
    as comic_all_info_json;
import '../comic_info/json/eps/eps_json.dart';
import '../comic_info/json/info/comic_info_json.dart';
import '../comic_info/models/comic_info.dart';

class EpsWidget extends StatelessWidget {
  final ComicInfoJson comicInfo;
  final Group group;
  final int index;
  final List<List<bool>> chapterStatus;
  final List<List<String>> chapterUuids;
  final BoolStore boolStore;
  final List<ListElement> listEpElements;

  const EpsWidget({
    super.key,
    required this.comicInfo,
    required this.group,
    required this.index,
    required this.chapterStatus,
    required this.chapterUuids,
    required this.boolStore,
    required this.listEpElements,
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
        comicInfo: comicInfo,
        group: group,
        index: index,
        chapterStatus: chapterStatus,
        chapterUuids: chapterUuids,
        boolStore: boolStore,
        listEpElements: listEpElements,
      ),
    );
  }
}

class _EpsWidget extends StatefulWidget {
  final ComicInfoJson comicInfo;
  final Group group;
  final int index;
  final List<List<bool>> chapterStatus;
  final List<List<String>> chapterUuids;
  final BoolStore boolStore;
  final List<ListElement> listEpElements;

  const _EpsWidget({
    required this.comicInfo,
    required this.group,
    required this.index,
    required this.chapterStatus,
    required this.chapterUuids,
    required this.boolStore,
    required this.listEpElements,
  });

  @override
  State<_EpsWidget> createState() => _EpsWidgetState();
}

class _EpsWidgetState extends State<_EpsWidget>
    with SingleTickerProviderStateMixin {
  ComicInfoJson get comicInfo => widget.comicInfo;

  Group get group => widget.group;

  int get index => widget.index;

  List<List<bool>> get chapterStatus => widget.chapterStatus;

  List<List<String>> get chapterUuids => widget.chapterUuids;

  BoolStore get boolStore => widget.boolStore;

  bool isInit = false;

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
    return BlocBuilder<EpsBloc, EpsState>(
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

  Widget _buildBody(EpsState state) {
    var itemCount = 1;
    List<List<ListElement>> elementsRows = [];
    if (state.status == EpsStatus.success) {
      elementsRows = generateElements(state);
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
                      if (isInit)
                        IconButton(
                          icon: Icon(
                            isAllSelected ? Icons.deselect : Icons.select_all,
                          ),
                          onPressed: toggleSelectAll,
                        ),
                      SizedBox(width: 10),
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
            if (state.status == EpsStatus.initial) {
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

            if (!isInit) {
              for (var element in state.eps!) {
                widget.listEpElements.add(element);
              }

              chapterStatus.clear(); // 清空旧数据
              for (int i = 0; i < elementsRows.length; i++) {
                chapterStatus.add(List.filled(4, false)); // 每行4个章节状态
              }

              // 清空旧数据并初始化 chapterUuids 的结构
              chapterUuids.clear();
              for (int i = 0; i < elementsRows.length; i++) {
                // 每行初始化 4 个空字符串占位
                chapterUuids.add(List.filled(4, ''));
              }

              // 填充实际的 uuid 值
              for (int i = 0; i < elementsRows.length; i++) {
                for (int j = 0; j < elementsRows[i].length; j++) {
                  chapterUuids[i][j] = elementsRows[i][j].uuid;
                }
              }

              var temp =
                  objectbox.downloadBox
                      .query(ComicDownload_.pathWord.equals(comicId))
                      .build()
                      .findFirst();

              if (temp != null) {
                var comicAllInfoJson = comic_all_info_json
                    .comicAllInfoJsonFromJson(temp.allInfo);
                List<String> downloadedUuids = [];
                for (var group in comicAllInfoJson.groups) {
                  for (var chapterList in group.chapterList) {
                    downloadedUuids.add(chapterList.chapterInfo.chapter.uuid);
                  }
                }
                for (int i = 0; i < elementsRows.length; i++) {
                  for (int j = 0; j < elementsRows[i].length; j++) {
                    if (downloadedUuids.contains(elementsRows[i][j].uuid)) {
                      chapterStatus[i][j] = true;
                    }
                  }
                }
              }

              isInit = true; // 标记已初始化

              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() => boolStore.setDate(true));
              });
            }

            return elementInfoRow(elementsRows[i], i);
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

  List<List<ListElement>> generateElements(EpsState state) {
    List<List<ListElement>> elementsRows = [];
    int rowCount = state.eps!.length ~/ 4;
    int remainder = state.eps!.length % 4;
    if (remainder != 0) {
      rowCount++;
      for (int i = 0; i < 4 - remainder; i++) {
        state.eps!.add(
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
      if (end > state.eps!.length) {
        end = state.eps!.length;
      }
      elementsRows.add(state.eps!.sublist(start, end));
    }

    return elementsRows;
  }

  Widget elementInfoRow(List<ListElement> elementsRows, int rowIndex) {
    return Padding(
      padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          elementInfo(elementsRows[0], rowIndex, 0),
          elementInfo(elementsRows[1], rowIndex, 1),
          elementInfo(elementsRows[2], rowIndex, 2),
          elementInfo(elementsRows[3], rowIndex, 3),
        ],
      ),
    );
  }

  double get screenWidth => setting.screenWidth;

  double get screenHeight => setting.screenHeight;

  Widget elementInfo(ListElement element, int rowIndex, int index) {
    return Observer(
      builder: (context) {
        final width = screenWidth * 0.21;

        if (element.name == '') return SizedBox(width: width + 4);

        return GestureDetector(
          onTap: () {
            setState(() {
              chapterStatus[rowIndex][index] = !chapterStatus[rowIndex][index];
            });
          },
          child: Observer(
            builder:
                (context) => Container(
                  width: width,
                  decoration: BoxDecoration(
                    color:
                        chapterStatus[rowIndex][index]
                            ? materialColorScheme.secondaryContainer
                            : setting.backgroundColor,
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: materialColorScheme.secondary,
                        blurRadius: 1,
                      ),
                    ],
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 4,
                  ),
                  child: SizedBox(
                    width: width - 4,
                    child: Center(
                      child: Text(
                        element.name,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 14,
                          color: setting.textColor,
                        ),
                      ),
                    ),
                  ),
                ),
          ),
        );
      },
    );
  }

  // 判断是否所有章节都被选中
  bool get isAllSelected {
    for (int i = 0; i < chapterStatus.length; i++) {
      for (int j = 0; j < chapterStatus[i].length; j++) {
        // 跳过uuid为空的占位元素
        if (chapterUuids[i][j].isEmpty) continue;
        if (!chapterStatus[i][j]) {
          return false;
        }
      }
    }
    return true;
  }

  // 切换全选或取消全选
  void toggleSelectAll() {
    setState(() {
      bool newState = !isAllSelected;
      for (int i = 0; i < chapterStatus.length; i++) {
        for (int j = 0; j < chapterStatus[i].length; j++) {
          // 仅处理有效章节
          if (chapterUuids[i][j].isNotEmpty) {
            chapterStatus[i][j] = newState;
          }
        }
      }
    });
  }
}
