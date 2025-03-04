import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../comic_info/models/comic_info.dart';

class HistoryPage extends StatelessWidget {
  final ScrollController scrollController;

  const HistoryPage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              HistoryBloc()..add(
                HistoryEvent(
                  HistoryStatus.initial,
                  SearchEnter(keyword: '', sortType: SortType.none),
                ),
              ),
      child: _HistoryPage(scrollController: scrollController),
    );
  }
}

class _HistoryPage extends StatefulWidget {
  final ScrollController scrollController;

  const _HistoryPage({required this.scrollController});

  @override
  State<_HistoryPage> createState() => _HistoryPageState();
}

class _HistoryPageState extends State<_HistoryPage>
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
    return BlocBuilder<HistoryBloc, HistoryState>(
      builder: (context, state) {
        switch (state.status) {
          case HistoryStatus.initial:
            return Center(child: CircularProgressIndicator());
          case HistoryStatus.failure:
            return _errorWidget(state);
          case HistoryStatus.success:
          case HistoryStatus.refresh:
            return _successWidget(state);
        }
      },
    );
  }

  Widget _errorWidget(HistoryState state) {
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
              context.read<HistoryBloc>().add(
                HistoryEvent(
                  HistoryStatus.initial,
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

  Widget _successWidget(HistoryState state) {
    // 处理下拉刷新的函数
    Future<void> onRefresh() async {
      context.read<HistoryBloc>().add(
        HistoryEvent(
          HistoryStatus.initial,
          SearchEnter(keyword: '', sortType: SortType.none),
        ),
      );
    }

    if (state.comicList!.isEmpty) {
      return Center(
        child: Column(
          children: [
            Spacer(),
            Text('还没有历史记录哦~', style: TextStyle(fontSize: 22)),
            IconButton(
              onPressed:
                  () => context.read<HistoryBloc>().add(
                    HistoryEvent(
                      HistoryStatus.initial,
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
        itemCount: temp.length,
        itemBuilder: (context, index) {
          return elementInfoRow(
            temp[index],
            context,
            comicReadType: ComicReadType.history,
          );
        },
        controller: scrollController,
      ),
    );
  }
}
