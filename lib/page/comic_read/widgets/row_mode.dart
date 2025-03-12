import 'dart:async';

import 'package:flutter/material.dart';

import '../../../main.dart';
import 'image.dart';

class RowModeWidget extends StatefulWidget {
  final List<String> comicImageUrlList;
  final String comicId;
  final String uuid;
  final PageController pageController;
  final ValueChanged<int> onPageChanged;
  final bool isSliderRolling;

  const RowModeWidget({
    super.key,
    required this.comicImageUrlList,
    required this.comicId,
    required this.uuid,
    required this.pageController,
    required this.onPageChanged,
    required this.isSliderRolling,
  });

  @override
  State<RowModeWidget> createState() => _RowModeWidgetState();
}

class _RowModeWidgetState extends State<RowModeWidget> {
  Timer? _timer;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.custom(
      reverse: setting.readMode != 1,
      controller: widget.pageController,
      onPageChanged: (page) {
        if (widget.isSliderRolling) {
          // 如果 isSliderRolling 为真，重置定时器
          _timer?.cancel(); // 取消之前的定时器
          _timer = Timer(Duration(milliseconds: 400), () {
            // 400 毫秒后触发 onPageChanged
            widget.onPageChanged(page);
          });
        } else {
          // 如果 isSliderRolling 为假，直接触发 onPageChanged
          widget.onPageChanged(page);
        }
      },
      childrenDelegate: SliverChildBuilderDelegate(
        (context, index) {
          return Container(
            color: Colors.black,
            child: ImageWidget(
              url: widget.comicImageUrlList[index],
              cartoonId: widget.comicId,
              chapterId: widget.uuid,
              index: index,
              isColumn: false,
            ),
          );
        },
        childCount: widget.comicImageUrlList.length,
        addAutomaticKeepAlives: true, // 保持页面状态，以便预加载
        addRepaintBoundaries: true, // 为每个孩子添加重绘边界，有助于性能
      ),
      scrollDirection: Axis.horizontal,
      physics: const PageScrollPhysics(),
      // 可以根据需要自定义物理效果
      pageSnapping: true,
      allowImplicitScrolling: true,
      // 允许隐式滚动，有助于预加载
      restorationId: null,
      // 根据需要设置
      clipBehavior: Clip.none,
      hitTestBehavior: HitTestBehavior.opaque,
      scrollBehavior: const MaterialScrollBehavior(),
      // 根据需要设置
      padEnds: true,
    );
  }
}
