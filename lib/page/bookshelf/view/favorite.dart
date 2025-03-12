import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../../main.dart';
import '../../../mobx/int_store.dart';
import '../../../mobx/string_store.dart';
import '../../comic_info/models/comic_info.dart';

class FavoritePage extends StatelessWidget {
  final ScrollController scrollController;
  final StringStore stringSelectStore;
  final IntStore intSelectStore;
  final SearchEnterStore searchEnterStore;

  const FavoritePage({
    super.key,
    required this.scrollController,
    required this.stringSelectStore,
    required this.intSelectStore,
    required this.searchEnterStore,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              FavoriteBloc()..add(
                FavoriteEvent(
                  FavoriteStatus.initial,
                  SearchEnter(
                    keyword: searchEnterStore.keyword,
                    sortType: searchEnterStore.sortType,
                  ),
                ),
              ),
      child: _FavoritePage(
        scrollController: scrollController,
        stringSelectStore: stringSelectStore,
        intSelectStore: intSelectStore,
        searchEnterStore: searchEnterStore,
      ),
    );
  }
}

class _FavoritePage extends StatefulWidget {
  final ScrollController scrollController;
  final StringStore stringSelectStore;
  final IntStore intSelectStore;
  final SearchEnterStore searchEnterStore;

  const _FavoritePage({
    required this.scrollController,
    required this.stringSelectStore,
    required this.intSelectStore,
    required this.searchEnterStore,
  });

  @override
  State<_FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<_FavoritePage>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  late SearchEnterStore searchEnterStore;
  late ScrollController scrollController;
  String totalComicCount = '';

  @override
  void initState() {
    super.initState();
    searchEnterStore = widget.searchEnterStore;
    scrollController = widget.scrollController;
    eventBus.on<FavoriteEventBus>().listen((event) {
      if (event.type == EventType.showInfo) {
        widget.stringSelectStore.setDate(totalComicCount);
      } else if (event.type == EventType.refresh) {
        updateComicList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return body();
  }

  Widget body() {
    return BlocBuilder<FavoriteBloc, FavoriteState>(
      builder: (context, state) {
        switch (state.status) {
          case FavoriteStatus.initial:
            return Center(child: CircularProgressIndicator());
          case FavoriteStatus.failure:
            return _errorWidget(state);
          case FavoriteStatus.success:
          case FavoriteStatus.refresh:
            return _successWidget(state);
        }
      },
    );
  }

  Widget _errorWidget(FavoriteState state) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: Text(
              '${state.result.toString()}\n加载失败',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 10), // 添加间距
          ElevatedButton(
            onPressed: () {
              context.read<FavoriteBloc>().add(
                FavoriteEvent(
                  FavoriteStatus.initial,
                  SearchEnter(
                    keyword: searchEnterStore.keyword,
                    sortType: searchEnterStore.sortType,
                  ),
                ),
              );
            },
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  Widget _successWidget(FavoriteState state) {
    if (state.comicList!.isEmpty) {
      return Center(
        child: Column(
          children: [
            Spacer(),
            Text('啥都没有~', style: TextStyle(fontSize: 22)),
            IconButton(
              onPressed: () {
                context.read<FavoriteBloc>().add(
                  FavoriteEvent(
                    FavoriteStatus.initial,
                    SearchEnter(
                      keyword: searchEnterStore.keyword,
                      sortType: searchEnterStore.sortType,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.refresh),
            ),
            Spacer(),
          ],
        ),
      );
    }

    totalComicCount = state.comicList!.length.toString();
    if (widget.intSelectStore.date == 0) {
      widget.stringSelectStore.setDate(totalComicCount);
    }

    var temp = generateElements(state.comicList!);

    return RefreshIndicator(
      displacement: 60.0,
      onRefresh: onRefresh,
      child: ListView.builder(
        physics: const AlwaysScrollableScrollPhysics(),
        padding: EdgeInsets.only(top: 10),
        itemCount: temp.length + 1,
        itemBuilder: (context, index) {
          if (index == temp.length) {
            return SizedBox(height: 80);
          }
          return elementInfoRow(
            temp[index],
            context,
            comicReadType: ComicReadType.favorite,
          );
        },
        controller: scrollController,
      ),
    );
  }

  Future<void> onRefresh() async {
    context.read<FavoriteBloc>().add(
      FavoriteEvent(
        FavoriteStatus.initial,
        SearchEnter(
          keyword: searchEnterStore.keyword,
          sortType: searchEnterStore.sortType,
        ),
      ),
    );
  }

  Future<void> updateComicList() async {
    context.read<FavoriteBloc>().add(
      FavoriteEvent(
        FavoriteStatus.refresh,
        SearchEnter(
          keyword: searchEnterStore.keyword,
          sortType: searchEnterStore.sortType,
        ),
      ),
    );
  }
}
