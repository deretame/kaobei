import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../config/config.dart';
import 'image.dart';

class ColumnList extends StatelessWidget {
  final List<String> comicImageUrlList;
  final String comicId;
  final String uuid;
  final ItemScrollController itemScrollController;
  final ItemPositionsListener itemPositionsListener;

  const ColumnList({
    super.key,
    required this.comicImageUrlList,
    required this.comicId,
    required this.uuid,
    required this.itemScrollController,
    required this.itemPositionsListener,
  });

  @override
  Widget build(BuildContext context) {
    return useSkia
        ? ScrollablePositionedList.separated(
          itemCount: comicImageUrlList.length + 2,
          itemBuilder: (context, index) => elementBuilder(context, index),
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
          separatorBuilder: (BuildContext context, int index) {
            return Container(height: 2, color: Colors.black);
          },
        )
        : ScrollablePositionedList.builder(
          itemCount: comicImageUrlList.length + 2,
          itemBuilder: (context, index) => elementBuilder(context, index),
          itemScrollController: itemScrollController,
          itemPositionsListener: itemPositionsListener,
        );
  }

  Widget elementBuilder(BuildContext context, int index) {
    if (index == 0) {
      return Container(
        width: screenWidth,
        height: statusBarHeight,
        color: Color(0xFF2D2D2D),
      );
    } else if (index == comicImageUrlList.length + 1) {
      return Container(
        height: 75,
        width: screenWidth,
        alignment: Alignment.center,
        color: Color(0xFF2D2D2D),
        child: RichText(
          text: TextSpan(
            text: "章节结束",
            style: TextStyle(fontSize: 20, color: Color(0xFFCCCCCC)),
          ),
        ),
      );
    }

    return Container(
      color: Colors.black,
      child: ImageWidget(
        url: comicImageUrlList[index - 1],
        cartoonId: comicId,
        chapterId: uuid,
        index: index,
        isColumn: true,
      ),
    );
  }
}
