import 'dart:convert';

import 'package:auto_route/annotations.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';

@RoutePage()
class MorePage extends StatefulWidget {
  const MorePage({super.key});

  @override
  State<MorePage> createState() => _MorePageState();
}

class _MorePageState extends State<MorePage> {
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('More Page')),
      body:
          kDebugMode
              ? ListView(
                padding: EdgeInsets.all(20), // 设置内边距
                children: [
                  IconButton(
                    onPressed: () async {
                      var result = await getComicComments(
                        comicId: 'f223f554-7255-11ef-b3b9-3f487b7d9a9a',
                        replyId: 14187.toString(),
                        offset: 0,
                      );
                      var resultStr = json.encode(result);
                      logger.d(result);
                      setState(() {
                        text = JsonEncoder.withIndent('  ').convert(result);
                      });
                    },
                    icon: Icon(Icons.refresh),
                  ),
                  SizedBox(height: 20), // 添加间距
                  Text(text), // 显示结果
                ],
              )
              : Center(child: Text("施工中", style: TextStyle(fontSize: 24))),
    );
  }
}
