import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';
import 'package:kaobei/util/get_path.dart';

import '../../../config/config.dart';
import '../../../main.dart';
import '../../../object_box/objectbox.g.dart';
import '../../../router/router.gr.dart';
import '../../comic_info/models/comic_info.dart';

List<List<ComicBaseInfo>> generateElements(List<ComicBaseInfo> comicList) {
  List<List<ComicBaseInfo>> elementsRows = [];
  int rowCount = comicList.length ~/ 3;
  int remainder = comicList.length % 3;
  if (remainder != 0) {
    rowCount++;
    for (int i = 0; i < 3 - remainder; i++) {
      comicList.add(ComicBaseInfo('暂无数据', '', '', '', 0));
    }
  }

  for (int i = 0; i < rowCount; i++) {
    int start = i * 3;
    int end = start + 3;
    if (end > comicList.length) {
      end = comicList.length;
    }
    elementsRows.add(comicList.sublist(start, end));
  }

  return elementsRows;
}

Widget elementInfoRow(List<ComicBaseInfo> elementsRows,
    BuildContext context, {
      ComicReadType comicReadType = ComicReadType.none,
    }) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    // 顶部对齐
    children: [
      ElementInfoWidget(
        comicBaseInfo: elementsRows[0],
        comicReadType: comicReadType,
      ),
      ElementInfoWidget(
        comicBaseInfo: elementsRows[1],
        comicReadType: comicReadType,
      ),
      ElementInfoWidget(
        comicBaseInfo: elementsRows[2],
        comicReadType: comicReadType,
      ),
    ],
  );
}

class ElementInfoWidget extends StatefulWidget {
  final ComicBaseInfo comicBaseInfo;
  final ComicReadType comicReadType;

  const ElementInfoWidget({
    super.key,
    required this.comicBaseInfo,
    required this.comicReadType,
  });

  @override
  State<ElementInfoWidget> createState() => _ElementInfoWidgetState();
}

class _ElementInfoWidgetState extends State<ElementInfoWidget> {
  ComicBaseInfo get comicBaseInfo => widget.comicBaseInfo;

  ComicReadType get comicReadType => widget.comicReadType;

  Future<void> callBack() async {
    if (comicReadType == ComicReadType.favorite) {
      var collectedComic =
      objectbox.collectBox
          .query(CollectComic_.pathWord.equals(comicBaseInfo.pathWord))
          .build()
          .findFirst();
      if (collectedComic != null) {
        collectedComic.deleted = true;
        collectedComic.deleteTime = DateTime.now().toUtc();
        objectbox.collectBox.put(collectedComic);
      }
      context.read<FavoriteBloc>().add(
        FavoriteEvent(
          FavoriteStatus.refresh,
          SearchEnter(keyword: '', sortType: SortType.none),
        ),
      );
    }

    if (comicReadType == ComicReadType.history) {
      var comicHistory =
      objectbox.historyBox
          .query(ComicHistory_.pathWord.equals(comicBaseInfo.pathWord))
          .build()
          .findFirst();
      if (comicHistory != null) {
        comicHistory.deleted = true;
        comicHistory.deleteTime = DateTime.now().toUtc();
        objectbox.historyBox.put(comicHistory);
      }
      context.read<HistoryBloc>().add(
        HistoryEvent(
          HistoryStatus.refresh,
          SearchEnter(keyword: '', sortType: SortType.none),
        ),
      );
    }

    if (comicReadType == ComicReadType.download) {
      var comicDownload =
      objectbox.downloadBox
          .query(ComicDownload_.pathWord.equals(comicBaseInfo.pathWord))
          .build()
          .findFirst();
      if (comicDownload != null) {
        objectbox.downloadBox.remove(comicDownload.id);
      }
      String downloadPath = await getDownloadPath();
      var comicPath = '$downloadPath/${comicBaseInfo.pathWord}';
      final directory = Directory(comicPath);
      try {
        if (await directory.exists()) {
          await directory.delete(recursive: true); // 递归删除（包括子文件和子目录）
          logger.d('$comicPath删除成功');
        }
      } catch (e, s) {
        logger.e('$comicPath删除失败：$e', stackTrace: s);
      }

      if (!mounted) return;

      context.read<DownloadBloc>().add(
        DownloadEvent(
          DownloadStatus.refresh,
          SearchEnter(keyword: '', sortType: SortType.none),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (comicBaseInfo.name == '暂无数据') {
      return SizedBox(width: screenWidth * 0.25);
    }

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        AutoRouter.of(context).push(
          ComicInfoRoute(
            comicId: comicBaseInfo.pathWord,
            comicReadType: comicReadType,
          ),
        );
      },
      onLongPress: () async {
        String title = '';
        String message = '';
        if (comicReadType == ComicReadType.favorite) {
          title = "收藏";
          message = "确定要取消收藏（${comicBaseInfo.name}）吗？";
        }
        if (comicReadType == ComicReadType.history) {
          title = "删除历史记录";
          message = "确定要删除（${comicBaseInfo.name}）的历史记录吗？";
        }
        if (comicReadType == ComicReadType.download) {
          title = "删除下载记录";
          message = "确定要删除（${comicBaseInfo.name}）的下载记录及下载文件吗？";
        }
        bool temp = await showConfirmationDialog(title, message, context);

        if (temp == false) {
          return;
        }

        await callBack();
      },
      child: SizedBox(
        width: screenWidth * 0.25,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 5), // 添加间距
            CoverWidget(
              key: ValueKey(comicBaseInfo.coverUrl),
              url: comicBaseInfo.coverUrl,
              cartoonId: comicBaseInfo.pathWord,
            ),

            SizedBox(height: 3), // 添加间距
            SizedBox(
              width: screenWidth * 0.25,
              child: Text(comicBaseInfo.name),
            ),

            SizedBox(
              width: screenWidth * 0.25,
              child: Text(
                comicBaseInfo.author.split("|").join("，"),
                style: TextStyle(
                  fontSize: 10,
                  color: materialColorScheme.primary,
                ),
              ),
            ),
            SizedBox(
              width: screenWidth * 0.25,
              child: Text(
                '${comicBaseInfo.popular} 人气',
                style: TextStyle(fontSize: 10),
              ),
            ),
            SizedBox(height: 5), // 添加间距
          ],
        ),
      ),
    );
  }
}

Future<bool> showConfirmationDialog(String title,
    String message,
    BuildContext context,) async {
  return await showDialog<bool>(
    context: context,
    barrierDismissible: true, // 允许点击外部关闭
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: <Widget>[
          TextButton(
            child: const Text('取消'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
          TextButton(
            child: const Text('确认'),
            onPressed: () => Navigator.of(context).pop(true),
          ),
        ],
      );
    },
  ).then((value) => value ?? false); // 处理直接关闭的情况
}
