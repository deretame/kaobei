import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kaobei/main.dart';
import 'package:kaobei/object_box/objectbox.g.dart';
import 'package:kaobei/util/toast.dart';

import '../../../object_box/model.dart';
import '../../../router/router.gr.dart';
import '../models/comic_info.dart';

class ComicOperateWidget extends StatefulWidget {
  final ComicInfo comicInfo;
  final String comicInfoJsonStr;

  const ComicOperateWidget({
    super.key,
    required this.comicInfo,
    required this.comicInfoJsonStr,
  });

  @override
  State<ComicOperateWidget> createState() => _ComicOperateWidgetState();
}

class _ComicOperateWidgetState extends State<ComicOperateWidget> {
  ComicInfo get comicInfo => widget.comicInfo;

  String get comicInfoJsonStr => widget.comicInfoJsonStr;

  bool isCollected = false;

  @override
  void initState() {
    super.initState();
    var comicBaseInfo = comicInfo.info.results.comic;
    var collectedComic =
        objectbox.collectBox
            .query(CollectComic_.pathWord.equals(comicBaseInfo.pathWord))
            .build()
            .findFirst();
    if (collectedComic != null) {
      setState(() {
        isCollected = collectedComic.deleted == false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: LimitedBox(
        maxHeight: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                const Icon(
                  Icons.remove_red_eye,
                  // color: Colors.red,
                  size: 24.0, // 设置图标大小
                ),
                const SizedBox(height: 2),
                Text('${comicInfo.info.results.popular}'),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    // AutoRouter.of(context).push(
                    //   CommentsRoute(
                    //     comicId: comicInfo.id,
                    //     comicTitle: comicInfo.title,
                    //   ),
                    // );
                    showErrorToast('暂不支持评论');
                  },
                  child: const Icon(
                    Icons.comment_sharp,
                    // color: Colors.red,
                    size: 24.0, // 设置图标大小
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  '评论',
                  // style: TextStyle(color: textColor),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    if (!isCollected) {
                      collectComic();
                    } else {
                      unCollectComic();
                    }
                  },
                  child: Icon(
                    isCollected ? Icons.star : Icons.star_border,
                    color: isCollected ? Colors.yellow : setting.textColor,
                    size: 24.0, // 设置图标大小
                  ),
                ),
                const SizedBox(height: 2),
                const Text(
                  '收藏',
                  // style: TextStyle(color: textColor),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    AutoRouter.of(context).push(
                      DownloadRoute(
                        comicInfo: comicInfo,
                        comicInfoJsonStr: comicInfoJsonStr,
                      ),
                    );
                  },
                  child: const Icon(
                    Icons.cloud_download_outlined,
                    // color: Colors.red,
                    size: 24.0, // 设置图标大小
                  ),
                ),
                const SizedBox(height: 2),
                const Text('下载'),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void collectComic() {
    var comicBaseInfo = comicInfo.info.results.comic;
    var collectComic =
        objectbox.collectBox
            .query(CollectComic_.pathWord.equals(comicBaseInfo.pathWord))
            .build()
            .findFirst();
    collectComic ??= CollectComic(
      pathWord: comicBaseInfo.pathWord,
      coverUrl: comicBaseInfo.cover,
      name: comicBaseInfo.name,
      alias: comicBaseInfo.alias,
      region: comicBaseInfo.region.display,
      status: comicBaseInfo.status.display,
      author: comicBaseInfo.author.map((e) => e.name).toList().join("|"),
      theme: comicBaseInfo.theme.map((e) => e.name).toList(),
      description: comicBaseInfo.brief,
      popular: comicInfo.info.results.popular,
      lastUpdatedTime: comicBaseInfo.datetimeUpdated,
      deleted: false,
      deleteTime: DateTime(2000, 1, 1, 0, 0, 0).toUtc(),
      lastViewingTime: DateTime.now().toUtc(),
      collectTime: DateTime.now().toUtc(),
      haveNewChapter: false,
    );
    collectComic.deleted = false;
    collectComic.deleteTime = DateTime(2000, 1, 1, 0, 0, 0).toUtc();
    collectComic.lastViewingTime = DateTime.now().toUtc();
    collectComic.collectTime = DateTime.now().toUtc();
    objectbox.collectBox.put(collectComic);
    setState(() => isCollected = !isCollected);
    showInfoToast('已收藏');
  }

  void unCollectComic() {
    var comicBaseInfo = comicInfo.info.results.comic;
    var collectedComic =
        objectbox.collectBox
            .query(CollectComic_.pathWord.equals(comicBaseInfo.pathWord))
            .build()
            .findFirst();
    if (collectedComic != null) {
      collectedComic.deleted = true;
      collectedComic.deleteTime = DateTime.now().toUtc();
      objectbox.collectBox.put(collectedComic);
      setState(() => isCollected = !isCollected);
      showInfoToast('已取消收藏');
    }
  }
}
