import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';
import '../../../router/router.gr.dart';
import '../../../util/toast.dart';
import '../json/info/comic_info_json.dart';

class CategorizeWidget extends StatelessWidget {
  final List<Author> categorizes;

  const CategorizeWidget({super.key, required this.categorizes});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Observer(
        builder:
            (context) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 10,
                  children: List.generate(categorizes.length + 1, (index) {
                    if (index == 0) {
                      return Chip(
                        backgroundColor: setting.backgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: BorderSide(color: setting.textColor),
                        label: Text(
                          "分类",
                          style: TextStyle(
                            fontSize: 12,
                            color: setting.textColor,
                          ),
                        ),
                      );
                    }
                    return GestureDetector(
                      onTap: () {
                        AutoRouter.of(context).push(
                          TagAuthorSearchRoute(
                            qType: QType.theme,
                            name: categorizes[index - 1].name,
                            pathWord: categorizes[index - 1].pathWord,
                          ),
                        );
                      },
                      onLongPress: () {
                        Clipboard.setData(
                          ClipboardData(text: categorizes[index - 1].name),
                        );
                        showSuccessToast(
                          "已将${categorizes[index - 1].name}复制到剪贴板",
                        );
                      },
                      child: Chip(
                        backgroundColor: setting.backgroundColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text(
                          categorizes[index - 1].name,
                          style: TextStyle(
                            fontSize: 12,
                            color: materialColorScheme.primary,
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ],
            ),
      ),
    );
  }
}
