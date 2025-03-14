import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/page/bookshelf/widgets/sort.dart';

import '../../../main.dart';
import '../../../mobx/int_store.dart';
import '../models/event.dart';
import '../models/search_enter_store.dart';

class SideDrawer extends StatefulWidget {
  final IntStore indexStore;
  final SearchEnterStore favoriteStore;
  final SearchEnterStore historyStore;
  final SearchEnterStore downloadStore;

  const SideDrawer({
    super.key,
    required this.indexStore,
    required this.favoriteStore,
    required this.historyStore,
    required this.downloadStore,
  });

  @override
  State<SideDrawer> createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  late IntStore indexStore;
  late SearchEnterStore favoriteStore;
  late SearchEnterStore historyStore;
  late SearchEnterStore downloadStore;
  String keyword = '';
  int sortType = 0;

  @override
  void initState() {
    super.initState();
    indexStore = widget.indexStore;
    favoriteStore = widget.favoriteStore;
    historyStore = widget.historyStore;
    downloadStore = widget.downloadStore;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Observer(
        builder: (context) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                title: Text(
                  indexStore.date == 0
                      ? "收藏"
                      : indexStore.date == 1
                      ? "历史"
                      : "下载",
                ),
                automaticallyImplyLeading: false, // 不显示默认的返回按钮
                actions: [
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      Navigator.pop(context); // 关闭Drawer
                    },
                  ),
                ],
              ),
              Container(color: setting.textColor, height: 1),
              SizedBox(height: 16),
              Builder(
                builder: (context) {
                  SearchEnterStore store;
                  if (indexStore.date == 0) {
                    store = favoriteStore;
                  } else if (indexStore.date == 1) {
                    store = historyStore;
                  } else {
                    store = downloadStore;
                  }
                  sortType = store.sortType;
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    child: SortWidget(
                      searchEnterStore: store,
                      onSortChanged: (value) {
                        sortType = value;
                      },
                    ),
                  );
                },
              ),
              keywordSearch(),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // 确保按钮水平居中且间距均匀
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('取消'),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        _onTap();
                        Navigator.pop(context);
                      },
                      child: Text('确定'),
                    ),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _onTap() {
    if (indexStore.date == 0) {
      favoriteStore.setKeyword(keyword);
      favoriteStore.sortType = sortType;
      eventBus.fire(FavoriteEventBus(EventType.refresh));
    } else if (indexStore.date == 1) {
      historyStore.setKeyword(keyword);
      historyStore.sortType = sortType;
      eventBus.fire(HistoryEventBus(EventType.refresh));
    } else {
      downloadStore.setKeyword(keyword);
      downloadStore.sortType = sortType;
      eventBus.fire(DownloadEventBus(EventType.refresh));
    }
  }

  Widget keywordSearch() {
    SearchEnterStore store;
    if (indexStore.date == 0) {
      store = favoriteStore;
    } else if (indexStore.date == 1) {
      store = historyStore;
    } else {
      store = downloadStore;
    }

    final TextEditingController controller = TextEditingController(
      text: store.keyword,
    );

    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(hintText: '搜索漫画，请输入关键字'),
          onSubmitted: (value) => keyword = value,
        ),
      ),
    );
  }
}
