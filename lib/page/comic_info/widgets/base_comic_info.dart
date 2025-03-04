import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/page/comic_info/comic_info.dart';

import '../../../main.dart';
import '../../../mobx/string_store.dart';
import '../../../network/http/http_require.dart';
import '../../../router/router.gr.dart';
import '../../../util/toast.dart';

class BaseComicInfo extends StatelessWidget {
  final ComicInfo comicInfo;
  final StringStore stringStore;

  const BaseComicInfo({
    super.key,
    required this.comicInfo,
    required this.stringStore,
  });

  @override
  Widget build(BuildContext context) {
    final baseInfo = comicInfo.info.results.comic;
    final url = baseInfo.cover;
    final comicId = baseInfo.pathWord;
    final comicName = baseInfo.name;
    final author = baseInfo.author;
    final status = baseInfo.status.display;
    final lastUpdate = baseInfo.datetimeUpdated.toString().substring(0, 10);
    final description = baseInfo.brief;
    final categorizes = baseInfo.theme;

    // logger.d(stringStore.date);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10), // 添加间距
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: 10), // 添加间距
            CoverWidget(url: url, cartoonId: comicId),
            SizedBox(width: 10), // 添加间距
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SelectableText(comicName, style: TextStyle(fontSize: 20)),
                  SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        "作者: ",
                        style: TextStyle(color: materialColorScheme.primary),
                      ),
                      ...author.map((e) {
                        return GestureDetector(
                          onTap: () {
                            AutoRouter.of(context).push(
                              TagAuthorSearchRoute(
                                qType: QType.author,
                                name: e.name,
                                pathWord: e.pathWord,
                              ),
                            );
                          },
                          onLongPress: () {
                            Clipboard.setData(ClipboardData(text: e.name));
                            showSuccessToast("已将 ${e.name} 复制到剪贴板");
                          },
                          child: Text(
                            "${e.name}   ",
                            style: TextStyle(
                              color: materialColorScheme.secondary,
                            ),
                          ),
                        );
                      }),
                    ],
                  ),
                  SizedBox(height: 3),
                  Text("状态: $status"),
                  SizedBox(height: 3),
                  Text("最后更新时间: $lastUpdate"),
                  SizedBox(height: 3),
                  Observer(
                    builder:
                        (context) =>
                            stringStore.date.isNotEmpty
                                ? Text("阅读历史: ${stringStore.date}")
                                : SizedBox.shrink(),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10), // 添加间距
          ],
        ),
        SizedBox(height: 3),
        SizedBox(height: 3),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SelectableText(description),
        ),
        SizedBox(height: 3),
        CategorizeWidget(categorizes: categorizes),
      ],
    );
  }
}
