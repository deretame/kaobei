import 'dart:convert';
import 'dart:io';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/object_box/objectbox.g.dart';
import 'package:kaobei/util/toast.dart';
import 'package:wakelock_plus/wakelock_plus.dart';

import '../../main.dart';
import '../../mobx/bool_store.dart';
import '../../network/http/http_require.dart';
import '../../network/http/picture.dart';
import '../../object_box/model.dart';
import '../../util/get_path.dart';
import '../../widgets/picture_bloc/models/picture_info.dart';
import '../comic_info/json/comic_all_info_json/comic_all_info_json.dart'
    as comic_all_info_json;
import '../comic_info/json/eps/eps_json.dart';
import '../comic_info/models/comic_info.dart';
import '../comic_read/json/comic_read_json.dart' as comic_read_json;
import 'comic_all_info.dart';
import 'eps.dart';
import 'method.dart';
import 'models.dart';

@RoutePage()
class DownloadPage extends StatefulWidget {
  final ComicInfo comicInfo;
  final String comicInfoJsonStr;

  const DownloadPage({
    super.key,
    required this.comicInfo,
    required this.comicInfoJsonStr,
  });

  @override
  State<DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<DownloadPage> {
  double get screenWidth => setting.screenWidth;

  double get screenHeight => setting.screenHeight;

  ComicInfo get comicInfo => widget.comicInfo;

  String get comicInfoJsonStr => widget.comicInfoJsonStr;

  List<EpsWidget> epsWidgets = [];

  List<List<List<bool>>> chapterStatus = [];
  List<List<List<String>>> chapterUuids = [];
  List<ListElement> listEpElements = [];

  BoolStore boolStore = BoolStore();

  @override
  Widget build(BuildContext context) {
    int i = 0;
    for (var group in comicInfo.groups) {
      chapterStatus.add([]);
      chapterUuids.add([]);
      epsWidgets.add(
        EpsWidget(
          comicInfo: comicInfo.info,
          group: group,
          index: i,
          chapterStatus: chapterStatus[i],
          chapterUuids: chapterUuids[i],
          boolStore: boolStore,
          listEpElements: listEpElements,
        ),
      );
      i++;
    }

    return Observer(
      builder: (context) {
        return Scaffold(
          appBar: AppBar(title: Text(comicInfo.info.results.comic.name)),
          body: SizedBox(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: 10)),
                ...epsWidgets,
                SliverToBoxAdapter(
                  child: Observer(
                    builder: (context) {
                      return SizedBox(height: screenHeight * (1 / 3));
                    },
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton:
              boolStore.date
                  ? SizedBox(
                    width: 100, // 设置容器宽度，以容纳更长的文本
                    height: 56, // 设置容器高度，与默认的FloatingActionButton高度一致
                    child: FloatingActionButton(
                      onPressed: () {
                        if (!chapterStatus.any(
                          (group) =>
                              group.any((row) => row.any((status) => status)),
                        )) {
                          showErrorToast('请至少选择一个章节');
                          return;
                        }

                        downloadComic();
                      },
                      child: Text(
                        '开始下载',
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ),
                  )
                  : null,
        );
      },
    );
  }

  List<String> extractSelectedUuids(
    List<List<List<bool>>> chapterStatus,
    List<List<List<String>>> chapterUuids,
  ) {
    List<String> selectedUuids = [];
    for (int i = 0; i < chapterStatus.length; i++) {
      for (int j = 0; j < chapterStatus[i].length; j++) {
        for (int k = 0; k < chapterStatus[i][j].length; k++) {
          if (chapterStatus[i][j][k] && chapterUuids[i][j][k].isNotEmpty) {
            selectedUuids.add(chapterUuids[i][j][k]); // 提取对应的 UUID
          }
        }
      }
    }
    return selectedUuids;
  }

  Future<void> downloadComic() async {
    String comicId = comicInfo.info.results.comic.pathWord;
    WakelockPlus.enable(); // 启用屏幕常亮
    ComicAllInfo comicAllInfo = initComicAllInfo(comicInfo);
    List<String> downloadedUuids = [];
    listEpElements.toSet().toList();
    listEpElements.removeWhere((element) => element.uuid.isEmpty);
    int mediaCount = 1;
    int tempDownloadCount = 0;
    List<PictureAllInfo> mediaList = [];
    List<String> pictureAddr = [];
    List<comic_read_json.ComicReadJson> epsJsonList = [];
    int downloadCount = 0;
    var selectedUuids = extractSelectedUuids(chapterStatus, chapterUuids);
    String downloadPath = await getDownloadPath();
    final pathWord = comicInfo.info.results.comic.pathWord;

    var temp =
        objectbox.downloadBox
            .query(ComicDownload_.pathWord.equals(comicId))
            .build()
            .findFirst();

    if (temp != null) {
      var comicAllInfoJson = comic_all_info_json.comicAllInfoJsonFromJson(
        temp.allInfo,
      );
      // 收集已经下载好的章节和图片地址
      for (var group in comicAllInfoJson.groups) {
        for (var chapterList in group.chapterList) {
          downloadedUuids.add(chapterList.chapterInfo.chapter.uuid);
          for (var pictureUrl in chapterList.chapterInfo.chapter.contents) {
            var picturePath =
                "$downloadPath/$pathWord/comic/${chapterList.chapterInfo.chapter.uuid}/${pictureUrl.replaceAll(RegExp(r'[^a-zA-Z0-9_\-.]'), '_')}";
            pictureAddr.add(picturePath);
          }
        }
      }
      var comicAllInfoTemp = ComicAllInfo.fromJson(
        json.decode(json.encode(comicAllInfoJson.toJson())),
      );
      for (var groupTemp in comicAllInfoTemp.groups) {
        for (int i = 0; i < comicAllInfo.groups.length; i++) {
          if (groupTemp.pathWord == comicAllInfo.groups[i].pathWord) {
            comicAllInfo.groups[i] = groupTemp;
          }
        }
      }
    }

    String message = "开始下载，请不要关闭应用或放入后台。";
    if (!mounted) return;
    final overlay = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(
      builder: (context) {
        return Positioned(
          top: MediaQuery.of(context).padding.top + 200.0, // 调整到状态栏下面
          left: 16.0,
          right: 16.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), // 设置圆角
            child: Material(
              color: materialColorScheme.secondaryFixedDim,
              elevation: 2, // 设置阴影
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: setting.backgroundColor,
                    borderRadius: BorderRadius.circular(10), // 内部容器的圆角
                  ),
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(message, style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      LinearProgressIndicator(
                        value:
                            tempDownloadCount == 0
                                ? (tempDownloadCount / mediaCount)
                                : null,
                      ),
                      SizedBox(height: 8),
                      LoadingAnimation(
                        child: Icon(
                          Icons.autorenew,
                          size: 30,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );

    overlay.insert(overlayEntry);

    var cover = await downloadPicture(
      url: comicInfo.info.results.comic.cover,
      cartoonId: comicId,
      pictureType: PictureType.cover,
    );

    pictureAddr.add(cover);

    int i = 0;
    for (var chapterUuid in selectedUuids) {
      i++;
      if (downloadedUuids.contains(chapterUuid)) continue;
      while (true) {
        try {
          tempDownloadCount = 0;
          message = "正在获取第 ${i.toString()} 章的信息...";
          overlayEntry.markNeedsBuild();
          List<PictureAllInfo> tempMediaList = [];
          var epsInfo = await getEpsInfo(
            comicId: comicId,
            chapterId: chapterUuid,
          );
          epsInfo = json.decode(json.encode(epsInfo).replaceAll('null', '""'));
          var epsJson = comic_read_json.ComicReadJson.fromJson(epsInfo);
          epsJsonList.add(epsJson);
          var chapter = initChapter(epsJson);
          for (var group in comicAllInfo.groups) {
            if (group.pathWord == chapter.chapterInfo.chapter.groupPathWord) {
              group.chapterList.add(chapter);
            }
          }

          // 添加空内容检查
          if (epsJson.results.chapter.contents.isEmpty) {
            logger.w("章节 ${epsJson.results.chapter.uuid} 无内容，跳过下载");
            continue; // 直接跳过后续下载逻辑
          }

          for (var picture in epsJson.results.chapter.contents) {
            mediaList.add(
              PictureAllInfo(
                picture.url,
                comicId,
                epsJson.results.chapter.uuid,
              ),
            );
            tempMediaList.add(
              PictureAllInfo(
                picture.url,
                comicId,
                epsJson.results.chapter.uuid,
              ),
            );
          }

          mediaCount = tempMediaList.length;

          final List<Future<void>> downloadTasks =
              tempMediaList.map((media) async {
                while (true) {
                  try {
                    var picturePath = await downloadPicture(
                      url: media.pictureUrl,
                      cartoonId: comicId,
                      pictureType: PictureType.comic,
                      chapterId: media.chapterId,
                    );
                    pictureAddr.add(picturePath);

                    downloadCount++;
                    tempDownloadCount++;
                    message =
                        "${epsJson.results.chapter.name}下载中"
                        "${(tempDownloadCount / mediaCount * 100.0).toStringAsFixed(2)}%";

                    // 更新进度条内容
                    overlayEntry.markNeedsBuild();

                    return;
                  } catch (e, stacktrace) {
                    logger.e(e, stackTrace: stacktrace);
                  }
                }
              }).toList();

          await Future.wait(downloadTasks);

          message = "整理图片中，请耐心等待...";
          overlayEntry.markNeedsBuild();

          // 延迟一下避免被服务器禁止访问了，也没啥其他的用途
          await Future.delayed(Duration(seconds: 5));

          break;
        } catch (e, stacktrace) {
          logger.e(e, stackTrace: stacktrace);
        }
      }
    }

    comicAllInfo.groups.removeWhere((group) => group.chapterList.isEmpty);

    // 创建一个映射，记录 comicInfo.groups 的顺序
    final orderMap = <String, int>{};
    for (var i = 0; i < comicInfo.groups.length; i++) {
      orderMap[comicInfo.groups[i].pathWord] = i;
    }

    // 对 comicAllInfo.groups 进行排序
    comicAllInfo.groups.sort((groupA, groupB) {
      final indexA =
          orderMap[groupA.pathWord] ?? comicInfo.groups.length; // 如果不存在，放在最后
      final indexB =
          orderMap[groupB.pathWord] ?? comicInfo.groups.length; // 如果不存在，放在最后
      return indexA.compareTo(indexB);
    });

    for (var group in comicAllInfo.groups) {
      group.chapterList.sort(
        (a, b) =>
            a.chapterInfo.chapter.index.compareTo(b.chapterInfo.chapter.index),
      );
    }

    var comicBaseInfo = comicInfo.info.results.comic;
    ComicDownload comicDownload = ComicDownload(
      pathWord: comicBaseInfo.pathWord,
      coverUrl: comicBaseInfo.cover,
      name: comicBaseInfo.name,
      alias: comicBaseInfo.alias,
      region: comicBaseInfo.region.display,
      status: comicBaseInfo.status.display,
      author: comicBaseInfo.author.map((e) => e.name).toList().join("|"),
      theme: comicBaseInfo.theme.map((e) => e.name).toList(),
      description: comicBaseInfo.brief,
      popular: comicBaseInfo.popular,
      comicBaseInfo: comicInfoJsonStr,
      downloadTime: DateTime.now().toUtc(),
      deleted: false,
      allInfo: jsonEncode(comicAllInfo.toJson()),
    );

    var downloads =
        await objectbox.downloadBox
            .query(ComicDownload_.name.equals(comicBaseInfo.name))
            .build()
            .findAsync();

    for (var download in downloads) {
      objectbox.downloadBox.remove(download.id);
    }

    await objectbox.downloadBox.putAsync(comicDownload);

    // 清理工作
    var comicDir = "$downloadPath/$pathWord/comic";
    Directory directory = Directory(comicDir);

    // 列出目录下的所有文件和子目录
    List<FileSystemEntity> entities = directory.listSync();

    // 过滤出子目录
    List<Directory> epDirs = entities.whereType<Directory>().toList();

    List<String> downloadEpsDir = [];
    for (var element in selectedUuids) {
      downloadEpsDir.add("$downloadPath/$pathWord/comic/$element");
    }

    // 过滤出需要删除的目录
    List<Directory> deleteDirs =
        epDirs.where((element) {
          return !downloadEpsDir.contains(element.path);
        }).toList();

    // 删除不需要的目录
    for (var element in deleteDirs) {
      await element.delete(recursive: true);
    }

    var allPicturePaths = await getAllFilePaths(
      "$downloadPath/$pathWord/comic/",
    );

    // 过滤出需要删除的图片
    List<String> deletePictures =
        allPicturePaths.where((element) {
          return !pictureAddr.contains(element);
        }).toList();

    // 删除不需要的图片
    for (var element in deletePictures) {
      await File(element).delete();
    }

    message = "下载完毕，共下载 ${downloadCount.toString()} 张图片。";

    overlayEntry.markNeedsBuild();
    Future.delayed(Duration(seconds: 2), () {
      overlayEntry.remove();
    });

    WakelockPlus.disable(); // 禁用屏幕常亮
  }

  Future<List<String>> getAllFilePaths(String directoryPath) async {
    List<String> filePaths = [];
    Directory directory = Directory(directoryPath);

    // 检查目录是否存在
    if (!await directory.exists()) {
      throw Exception("目录不存在: $directoryPath");
    }

    // 递归获取文件路径
    await _getFilePathsRecursively(directory, filePaths);

    return filePaths;
  }

  Future<void> _getFilePathsRecursively(
    Directory directory,
    List<String> filePaths,
  ) async {
    await for (FileSystemEntity entity in directory.list()) {
      if (entity is File) {
        filePaths.add(entity.path); // 如果是文件，添加到列表中
      } else if (entity is Directory) {
        await _getFilePathsRecursively(entity, filePaths); // 如果是目录，递归调用
      }
    }
  }
}

class LoadingAnimation extends StatefulWidget {
  final Widget child;

  const LoadingAnimation({super.key, required this.child});

  @override
  State<LoadingAnimation> createState() => _LoadingAnimationState();
}

class _LoadingAnimationState extends State<LoadingAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(turns: _animationController, child: widget.child);
  }
}
