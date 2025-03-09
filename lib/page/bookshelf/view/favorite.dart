import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../comic_info/models/comic_info.dart';

class FavoritePage extends StatelessWidget {
  final ScrollController scrollController;

  const FavoritePage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              FavoriteBloc()..add(
                FavoriteEvent(
                  FavoriteStatus.initial,
                  SearchEnter(keyword: '', sortType: SortType.none),
                ),
              ),
      child: _FavoritePage(scrollController: scrollController),
    );
  }
}

class _FavoritePage extends StatefulWidget {
  final ScrollController scrollController;

  const _FavoritePage({required this.scrollController});

  @override
  State<_FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<_FavoritePage>
    with AutomaticKeepAliveClientMixin {
  ScrollController get scrollController => widget.scrollController;

  @override
  bool get wantKeepAlive => true;

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
                  SearchEnter(keyword: '', sortType: SortType.none),
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
    // 处理下拉刷新的函数
    Future<void> onRefresh() async {
      context.read<FavoriteBloc>().add(
        FavoriteEvent(
          FavoriteStatus.initial,
          SearchEnter(keyword: '', sortType: SortType.none),
        ),
      );
    }

    if (state.comicList!.isEmpty) {
      return Center(
        child: Column(
          children: [
            Spacer(),
            Text('还没有收藏的漫画哦~', style: TextStyle(fontSize: 22)),
            IconButton(
              onPressed:
                  () => context.read<FavoriteBloc>().add(
                    FavoriteEvent(
                      FavoriteStatus.initial,
                      SearchEnter(keyword: '', sortType: SortType.none),
                    ),
                  ),
              icon: Icon(Icons.refresh),
            ),
            Spacer(),
          ],
        ),
      );
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
}
