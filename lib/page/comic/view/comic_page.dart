import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../router/router.gr.dart';

@RoutePage()
class ComicPage extends StatefulWidget {
  const ComicPage({super.key});

  @override
  State<ComicPage> createState() => _ComicPageState();
}

class _ComicPageState extends State<ComicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('漫画'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              AutoRouter.of(context).push(SearchResultRoute());
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Spacer(),
            Text("施工中", style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () {
                AutoRouter.of(context).push(SearchResultRoute());
              },
              child: const Icon(Icons.search),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
