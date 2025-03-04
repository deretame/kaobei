import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../../router/router.gr.dart';

@RoutePage()
class BookShelf extends StatefulWidget {
  final ScrollController collectScrollController;
  final ScrollController historyScrollController;
  final ScrollController downloadScrollController;

  const BookShelf({
    super.key,
    required this.collectScrollController,
    required this.historyScrollController,
    required this.downloadScrollController,
  });

  @override
  State<BookShelf> createState() => _BookShelfState();
}

class _BookShelfState extends State<BookShelf> with TickerProviderStateMixin {
  ScrollController get collectScrollController =>
      widget.collectScrollController;

  ScrollController get historyScrollController =>
      widget.historyScrollController;

  ScrollController get downloadScrollController =>
      widget.downloadScrollController;

  late final TabController _tabController;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)..addListener(() {
      if (_tabController.index != _currentIndex) {
        _currentIndex = _tabController.index;
      }
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('书架'),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              AutoRouter.of(context).push(SearchResultRoute());
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(kMinInteractiveDimension),
          child: Row(
            children: [
              Expanded(
                child: TabBar(
                  controller: _tabController,
                  tabs: const [
                    Tab(text: "收藏"),
                    Tab(text: "历史"),
                    Tab(text: "下载"),
                  ],
                ),
              ),
              // Spacer(),
              Builder(
                builder: (BuildContext context) {
                  return SizedBox.shrink();
                  return IconButton(
                    icon: const Icon(Icons.sort),
                    onPressed: () {
                      Scaffold.of(context).openEndDrawer();
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
      endDrawer: const SideDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: [
          FavoritePage(scrollController: collectScrollController),
          HistoryPage(scrollController: historyScrollController),
          DownloadPage(scrollController: downloadScrollController),
        ],
      ),
    );
  }
}

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text(
              'Drawer Header',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
