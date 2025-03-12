import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../../main.dart';
import '../../../mobx/int_store.dart';
import '../../../mobx/string_store.dart';
import '../../comic_info/models/comic_info.dart';

class DownloadPage extends StatelessWidget {
  final ScrollController scrollController;
  final StringStore stringSelectStore;
  final IntStore intSelectStore;
  final SearchEnterStore searchEnterStore;

  const DownloadPage({
    super.key,
    required this.scrollController,
    required this.stringSelectStore,
    required this.intSelectStore,
    required this.searchEnterStore,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return DownloadBloc()..add(
          DownloadEvent(
            DownloadStatus.initial,
            SearchEnter(
              keyword: searchEnterStore.keyword,
              sortType: searchEnterStore.sortType,
            ),
          ),
        );
      },
      child: _DownloadPage(
        scrollController: scrollController,
        stringSelectStore: stringSelectStore,
        intSelectStore: intSelectStore,
        searchEnterStore: searchEnterStore,
      ),
    );
  }
}

class _DownloadPage extends StatefulWidget {
  final ScrollController scrollController;
  final StringStore stringSelectStore;
  final IntStore intSelectStore;
  final SearchEnterStore searchEnterStore;

  const _DownloadPage({
    required this.scrollController,
    required this.stringSelectStore,
    required this.intSelectStore,
    required this.searchEnterStore,
  });

  @override
  State<_DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<_DownloadPage>
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
    eventBus.on<DownloadEventBus>().listen((event) {
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
    return BlocBuilder<DownloadBloc, DownloadState>(
      builder: (context, state) {
        switch (state.status) {
          case DownloadStatus.initial:
            return Center(child: CircularProgressIndicator());
          case DownloadStatus.failure:
            return _errorWidget(state);
          case DownloadStatus.success:
          case DownloadStatus.refresh:
            return _successWidget(state);
        }
      },
    );
  }

  Widget _errorWidget(DownloadState state) {
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
              context.read<DownloadBloc>().add(
                DownloadEvent(
                  DownloadStatus.initial,
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

  Widget _successWidget(DownloadState state) {
    if (state.comicList!.isEmpty) {
      return Center(
        child: Column(
          children: [
            Spacer(),
            Text('啥都没有', style: TextStyle(fontSize: 22)),
            IconButton(
              onPressed: () {
                context.read<DownloadBloc>().add(
                  DownloadEvent(
                    DownloadStatus.initial,
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
    if (widget.intSelectStore.date == 2) {
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
            comicReadType: ComicReadType.download,
          );
        },
        controller: scrollController,
      ),
    );
  }

  Future<void> onRefresh() async {
    context.read<DownloadBloc>().add(
      DownloadEvent(
        DownloadStatus.initial,
        SearchEnter(
          keyword: searchEnterStore.keyword,
          sortType: searchEnterStore.sortType,
        ),
      ),
    );
  }

  Future<void> updateComicList() async {
    context.read<DownloadBloc>().add(
      DownloadEvent(
        DownloadStatus.refresh,
        SearchEnter(
          keyword: searchEnterStore.keyword,
          sortType: searchEnterStore.sortType,
        ),
      ),
    );
  }
}
