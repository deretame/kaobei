import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kaobei/page/search_result/search_result.dart';
import 'package:kaobei/router/router.gr.dart';

import '../../../config/config.dart';
import '../../../main.dart';
import '../json/search_result.dart';

List<List<ListElement>> generateElements(SearchResultState state) {
  var elementList = state.elements;
  // logger.d('elementList: ${elementList.length}');

  List<List<ListElement>> elementsRows = [];
  int rowCount = state.elements.length ~/ 3;
  int remainder = state.elements.length % 3;
  if (remainder != 0) {
    rowCount++;
    for (int i = 0; i < 3 - remainder; i++) {
      elementList.add(
        ListElement(
          name: '暂无数据',
          alias: '',
          pathWord: '',
          cover: '',
          ban: 0,
          imgType: 0,
          author: [Author(name: '暂无数据', alias: '', pathWord: '')],
          popular: 0,
        ),
      );
    }
  }

  for (int i = 0; i < rowCount; i++) {
    int start = i * 3;
    int end = start + 3;
    if (end > state.elements.length) {
      end = state.elements.length;
    }
    elementsRows.add(state.elements.sublist(start, end));
  }

  return elementsRows;
}

Widget elementInfoRow(List<ListElement> elementsRows, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.start,
    // 顶部对齐
    children: [
      elementInfo(elementsRows[0], context),
      elementInfo(elementsRows[1], context),
      elementInfo(elementsRows[2], context),
    ],
  );
}

Widget elementInfo(ListElement element, BuildContext context) {
  if (element.name == '暂无数据') return SizedBox(width: screenWidth * 0.25);

  return GestureDetector(
    behavior: HitTestBehavior.opaque,
    onTap: () {
      AutoRouter.of(context).push(ComicInfoRoute(comicId: element.pathWord));
    },
    child: SizedBox(
      width: screenWidth * 0.25,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 5), // 添加间距
          CoverWidget(url: element.cover, cartoonId: element.pathWord),

          SizedBox(height: 3), // 添加间距
          SizedBox(width: screenWidth * 0.25, child: Text(element.name)),

          SizedBox(
            width: screenWidth * 0.25,
            child: Text(
              element.author[0].name,
              style: TextStyle(
                fontSize: 10,
                color: materialColorScheme.primary,
              ),
            ),
          ),
          SizedBox(
            width: screenWidth * 0.25,
            child: Text(
              '${element.popular} 人气',
              style: TextStyle(fontSize: 10),
            ),
          ),
          SizedBox(height: 5), // 添加间距
        ],
      ),
    ),
  );
}
