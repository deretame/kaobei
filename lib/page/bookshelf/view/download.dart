import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';

import '../../comic_info/models/comic_info.dart';

class DownloadPage extends StatelessWidget {
  final ScrollController scrollController;

  const DownloadPage({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) {
        return DownloadBloc()..add(
          DownloadEvent(
            DownloadStatus.initial,
            SearchEnter(keyword: '', sortType: SortType.none),
          ),
        );
      },
      child: _DownloadPage(scrollController: scrollController),
    );
  }
}

class _DownloadPage extends StatefulWidget {
  final ScrollController scrollController;

  const _DownloadPage({required this.scrollController});

  @override
  State<_DownloadPage> createState() => _DownloadPageState();
}

class _DownloadPageState extends State<_DownloadPage>
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

  Widget _successWidget(DownloadState state) {
    // 处理下拉刷新的函数
    Future<void> onRefresh() async {
      context.read<DownloadBloc>().add(
        DownloadEvent(
          DownloadStatus.initial,
          SearchEnter(keyword: '', sortType: SortType.none),
        ),
      );
    }

    if (state.comicList!.isEmpty) {
      return Center(
        child: Column(
          children: [
            Spacer(),
            Text('还没有下载的漫画哦~', style: TextStyle(fontSize: 22)),
            IconButton(
              onPressed:
                  () => context.read<DownloadBloc>().add(
                    DownloadEvent(
                      DownloadStatus.initial,
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
            comicReadType: ComicReadType.download,
          );
        },
        controller: scrollController,
      ),
    );
  }
}
