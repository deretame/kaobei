import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/main.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../../mobx/int_store.dart';
import '../../../mobx/string_store.dart';
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
  final StringStore stringSelectStore = StringStore();
  final IntStore intSelectStore = IntStore();
  final SearchEnterStore favorSearchEnterStore = SearchEnterStore();
  final SearchEnterStore historySearchEnterStore = SearchEnterStore();
  final SearchEnterStore downloadSearchEnterStore = SearchEnterStore();

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this)..addListener(() {
      if (_tabController.index != _currentIndex) {
        _currentIndex = _tabController.index;
        intSelectStore.setDate(_currentIndex);
        if (_currentIndex == 0) {
          eventBus.fire(FavoriteEventBus(EventType.showInfo));
        } else if (_currentIndex == 1) {
          eventBus.fire(HistoryEventBus(EventType.showInfo));
        } else if (_currentIndex == 2) {
          eventBus.fire(DownloadEventBus(EventType.showInfo));
        }
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
              Observer(
                builder: (context) {
                  return SizedBox(
                    width: 120,
                    child: Center(child: Text(stringSelectStore.date)),
                  );
                },
              ),
              Builder(
                builder: (BuildContext context) {
                  // return SizedBox.shrink();
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
      endDrawer: SideDrawer(
        indexStore: intSelectStore,
        favoriteStore: favorSearchEnterStore,
        historyStore: historySearchEnterStore,
        downloadStore: downloadSearchEnterStore,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          FavoritePage(
            scrollController: collectScrollController,
            stringSelectStore: stringSelectStore,
            intSelectStore: intSelectStore,
            searchEnterStore: favorSearchEnterStore,
          ),
          HistoryPage(
            scrollController: historyScrollController,
            stringSelectStore: stringSelectStore,
            intSelectStore: intSelectStore,
            searchEnterStore: historySearchEnterStore,
          ),
          DownloadPage(
            scrollController: downloadScrollController,
            stringSelectStore: stringSelectStore,
            intSelectStore: intSelectStore,
            searchEnterStore: downloadSearchEnterStore,
          ),
        ],
      ),
      floatingActionButton:
          Platform.isWindows
              ? FloatingActionButton(
                child: const Icon(Icons.refresh),
                onPressed: () {
                  if (intSelectStore.date == 0) {
                    eventBus.fire(FavoriteEventBus(EventType.refresh));
                  } else if (intSelectStore.date == 1) {
                    eventBus.fire(HistoryEventBus(EventType.refresh));
                  } else {
                    eventBus.fire(DownloadEventBus(EventType.refresh));
                  }
                },
              )
              : null,
    );
  }
}
