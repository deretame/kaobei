import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/config/config.dart';
import 'package:kaobei/page/comic_info/comic_info.dart';
import 'package:kaobei/page/comic_info/json/comic_all_info_json/comic_all_info_json.dart'
    as comic_all_info_json;
import 'package:permission_guard/permission_guard.dart';
import 'package:uuid/uuid.dart';

import '../../../main.dart';
import '../../../mobx/string_store.dart';
import '../../../object_box/model.dart';
import '../../../object_box/objectbox.g.dart';
import '../../../router/router.gr.dart';
import '../../../util/toast.dart';

@RoutePage()
class ComicInfoPage extends StatelessWidget {
  final String comicId;
  final ComicReadType? comicReadType;

  const ComicInfoPage({super.key, required this.comicId, this.comicReadType});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              ComicInfoBloc()
                ..add(ComicInfoEvent(comicId, ComicInfoStatus.initial)),
      child: _ComicInfoPage(
        comicId: comicId,
        comicReadType: comicReadType ?? ComicReadType.none,
      ),
    );
  }
}

class _ComicInfoPage extends StatefulWidget {
  final String comicId;
  final ComicReadType comicReadType;

  const _ComicInfoPage({required this.comicId, required this.comicReadType});

  @override
  State<_ComicInfoPage> createState() => _ComicInfoPageState();
}

class _ComicInfoPageState extends State<_ComicInfoPage> {
  String get comicId => widget.comicId;

  ComicReadType get comicReadType => widget.comicReadType;

  final StringStore stringStore = StringStore();

  ComicHistory? comicHistory;
  comic_all_info_json.ComicAllInfoJson? comicAllInfoJson;
  ComicInfo? comicInfo;
  bool showFloatingButton = false;
  bool _isCallbackExecuted = false;
  late String comicInfoJsonStr;
  String uuid = "";

  @override
  void initState() {
    super.initState();
    comicHistory =
        objectbox.historyBox
            .query(ComicHistory_.pathWord.equals(comicId))
            .build()
            .findFirst();

    if (comicHistory?.deleted == true) {
      comicHistory = null;
    }

    if (comicHistory != null) {
      stringStore.setDate(
        "${comicHistory!.chapterName}（${comicHistory!.chapterIndex}）—— ${comicHistory!.lastViewingTime.toString().substring(0, 19)}",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder:
          (context) => Scaffold(
            appBar: AppBar(
              leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => AutoRouter.of(context).maybePop(),
              ),
              actions: <Widget>[
                const SizedBox(width: 50),
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () => AutoRouter.of(context).popUntilRoot(),
                ),
                Spacer(),
                if (widget.comicReadType == ComicReadType.download) ...[
                  IconButton(
                    icon: const Icon(Icons.upload),
                    onPressed: () async {
                      try {
                        if (!await Permission.manageExternalStorage
                            .request()
                            .isGranted) {
                          showErrorToast("请授予存储权限！");
                          return;
                        }
                        if (mounted) {
                          var choice = await showExportTypeDialog();
                          if (choice == ExportType.zip) {
                            showInfoToast('正在导出漫画...');
                            exportComicAsZip(
                              comicAllInfoJson!,
                              comicInfoJsonStr,
                            );
                            showSuccessToast(
                              '漫画${comicInfo!.info.results.comic.name}导出为压缩包完成',
                            );
                          } else if (choice == ExportType.folder) {
                            showInfoToast('正在导出漫画...');
                            exportComicAsFolder(
                              comicAllInfoJson!,
                              comicInfoJsonStr,
                            );
                            showSuccessToast(
                              '漫画${comicInfo!.info.results.comic.name}导出为文件夹完成',
                            );
                          } else {
                            return;
                          }
                        }
                      } catch (e) {
                        showErrorToast(
                          "导出失败，请重试。\n${e.toString()}",
                          duration: const Duration(seconds: 5),
                        );
                      }
                    },
                  ),
                ],
              ],
            ),
            body: body(),
            floatingActionButton:
                stringStore.date.isNotEmpty && showFloatingButton
                    ? SizedBox(
                      width: 100, // 设置容器宽度，以容纳更长的文本
                      height: 56, // 设置容器高度，与默认的FloatingActionButton高度一致
                      child: FloatingActionButton(
                        onPressed: () {
                          ComicReadType comicReadType = widget.comicReadType;
                          var uuid =
                              objectbox.historyBox
                                  .query(ComicHistory_.pathWord.equals(comicId))
                                  .build()
                                  .findFirst()!
                                  .chapterId;
                          if (comicReadType == ComicReadType.download) {
                            comicReadType = ComicReadType.historyAndDownload;
                          }
                          AutoRouter.of(context).push(
                            ComicReadRoute(
                              comicInfo: comicInfo!.info,
                              chapterId: uuid,
                              stringStore: stringStore,
                              comicReadType: comicReadType,
                            ),
                          );
                        },
                        child: Text(
                          '继续阅读',
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    )
                    : null,
          ),
    );
  }

  Widget body() {
    return comicReadType == ComicReadType.download
        ? _successWidget(null)
        : BlocBuilder<ComicInfoBloc, ComicInfoState>(
          builder: (context, state) {
            switch (state.status) {
              case ComicInfoStatus.initial:
                return Center(child: CircularProgressIndicator());
              case ComicInfoStatus.failure:
                return _errorWidget(state);
              case ComicInfoStatus.success:
                return _successWidget(state);
            }
          },
        );
  }

  Widget _errorWidget(ComicInfoState state) {
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
              context.read<ComicInfoBloc>().add(
                ComicInfoEvent(comicId, ComicInfoStatus.initial),
              );
            },
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  Widget _successWidget(ComicInfoState? state) {
    if (comicReadType == ComicReadType.download) {
      var downloadInfo =
          objectbox.downloadBox
              .query(ComicDownload_.pathWord.equals(comicId))
              .build()
              .findFirst();
      if (downloadInfo != null) {
        comicAllInfoJson = comic_all_info_json.comicAllInfoJsonFromJson(
          downloadInfo.allInfo,
        );
        comicInfoJsonStr = downloadInfo.comicBaseInfo;
      }
      comicInfo = ComicInfo.fromJson(json.decode(downloadInfo!.comicBaseInfo));
    }
    if (state != null) {
      comicInfo = state.comicInfo;
      comicInfoJsonStr = state.result;
    }

    List<EpsWidget> epsWidgets = [];

    int index = 0;
    if (comicReadType == ComicReadType.download) {
      for (var group in comicAllInfoJson!.groups) {
        epsWidgets.add(
          EpsWidget(
            index: index++,
            comicInfo: comicInfo!.info,
            group: Group(
              pathWord: group.pathWord,
              count: group.count,
              name: group.name,
            ),
            stringStore: stringStore,
            comicReadType: comicReadType,
            comicAllInfo: comicAllInfoJson,
          ),
        );
      }
    } else {
      for (var group in comicInfo!.groups) {
        epsWidgets.add(
          EpsWidget(
            index: index++,
            comicInfo: comicInfo!.info,
            group: group,
            stringStore: stringStore,
            comicReadType: comicReadType,
            comicAllInfo: comicAllInfoJson,
          ),
        );
      }
    }

    if (comicReadType == ComicReadType.download) {
      List<String> downloadGroups = [];
      for (var group in comicAllInfoJson!.groups) {
        downloadGroups.add(group.name);
      }

      epsWidgets.removeWhere(
        (element) => !downloadGroups.contains(element.group.name),
      );
    }

    if (!_isCallbackExecuted) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        setState(() => showFloatingButton = true);
      });
      _isCallbackExecuted = true;
    }

    return RefreshIndicator(
      onRefresh: () async {
        _onFloatingButtonPressed();
      },
      child: SizedBox(
        key: ValueKey(uuid),
        child: CustomScrollView(
          physics: AlwaysScrollableScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: BaseComicInfo(
                comicInfo: comicInfo!,
                stringStore: stringStore,
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 10)),
            SliverToBoxAdapter(
              child: ComicOperateWidget(
                comicInfo: comicInfo!,
                comicInfoJsonStr: comicInfoJsonStr,
              ),
            ),
            ...epsWidgets,
            SliverToBoxAdapter(child: SizedBox(height: screenHeight * (1 / 3))),
          ],
        ),
      ),
    );
  }

  void _onFloatingButtonPressed() async {
    context.read<ComicInfoBloc>().add(
      ComicInfoEvent(comicId, ComicInfoStatus.initial),
    );
    setState(() => uuid = Uuid().v4());
  }

  // 弹出选择对话框，让用户选择导出为压缩包还是文件夹
  Future<ExportType?> showExportTypeDialog() async {
    return await showDialog<ExportType>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('选择导出方式'),
          content: Text('请选择将漫画导出为压缩包还是文件夹：'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(null);
              },
              child: Text('取消'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(ExportType.folder); // 返回文件夹选项
              },
              child: Text('文件夹'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(ExportType.zip); // 返回压缩包选项
              },
              child: Text('压缩包'),
            ),
          ],
        );
      },
    );
  }
}
