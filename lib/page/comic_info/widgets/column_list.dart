import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../config/config.dart';
import '../../comic_read/widgets/image.dart';

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
    return ScrollablePositionedList.builder(
      itemCount: comicImageUrlList.length + 2,
      itemBuilder: (context, index) {
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
          ),
        );
      },
      itemScrollController: itemScrollController,
      itemPositionsListener: itemPositionsListener,
    );
  }
}
