import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kaobei/main.dart';
import 'package:kaobei/network/http/http_require.dart';
import 'package:kaobei/page/chapter_comment/chapter_comment.dart';
import 'package:kaobei/router/router.gr.dart';

import '../../../config/config.dart';
import '../../../util/toast.dart';
import '../json/comment_json.dart';

class CommentWidget extends StatefulWidget {
  final ListElement element;
  final bool isChildren;
  final String comicName;
  final String comicId;
  final bool isTop;

  const CommentWidget({
    super.key,
    required this.element,
    this.isChildren = false,
    required this.comicName,
    required this.comicId,
    this.isTop = false,
  });

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
  late ListElement element;

  bool get isChildren => widget.isChildren;

  @override
  void initState() {
    super.initState();
    element = widget.element;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: InkWell(
            onTap:
                isChildren || widget.isTop
                    ? null
                    : () {
                      AutoRouter.of(context).push(
                        CommentChildrenRoute(
                          type: SearchType.comic,
                          comicName: widget.comicName,
                          comicId: widget.comicId,
                          parentId: element.id.toString(),
                          parentComment: element,
                        ),
                      );
                    },
            onLongPress: () async {
              await showConfirmationDialog();
            },
            child: Row(
              children: [
                UserCoverWidget(url: element.userAvatar),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        element.userName,
                        softWrap: true,
                        style: TextStyle(
                          fontSize: 12,
                          color: materialColorScheme.primary,
                        ),
                      ),
                      SizedBox(height: 2),
                      Text(element.comment, softWrap: true),
                      SizedBox(height: 2),
                      Row(
                        children: [
                          Text(
                            element.createAt,
                            softWrap: true,
                            style: TextStyle(
                              fontSize: 12,
                              color: materialColorScheme.secondary,
                            ),
                          ),
                          Spacer(),
                          if (!isChildren) ...[
                            Icon(Icons.comment, size: 12),
                            SizedBox(width: 5),
                            Text(element.count.toString()),
                          ],
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        widget.isTop
            ? Container(
              width: screenHeight,
              height: 5,
              color: materialColorScheme.onInverseSurface,
            )
            : Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: screenWidth * (48 / 50), // 设置宽度
                height: 1, // 设置高度
                child: Divider(
                  color: materialColorScheme.secondaryFixedDim,
                  thickness: 1,
                ),
              ),
            ),
      ],
    );
  }

  Future<bool> showConfirmationDialog() async {
    return await showDialog<bool>(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('选择操作'),
              content: SelectableText(element.comment),
              actions: <Widget>[
                TextButton(
                  child: Text('取消'),
                  onPressed: () {
                    Navigator.of(context).pop(false);
                  },
                ),
                TextButton(
                  child: Text('复制评论'),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: element.comment));
                    showSuccessToast("复制成功", duration: Duration(seconds: 1));
                    Navigator.of(context).pop(false);
                  },
                ),
              ],
            );
          },
        ) ??
        false; // 如果用户直接关闭对话框，返回 false
  }
}
