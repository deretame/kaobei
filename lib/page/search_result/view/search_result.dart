import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:kaobei/page/search_result/search_result.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';

@RoutePage()
class SearchResultPage extends StatelessWidget {
  const SearchResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              SearchResultBloc()
                ..add(SearchResultEvent(SearchEnter(), SearchStatus.none)),
      child: _SearchResultPage(),
    );
  }
}

class _SearchResultPage extends StatefulWidget {
  @override
  State<_SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<_SearchResultPage> {
  final SearchEnterStore searchEnterStore = SearchEnterStore();
  late SearchResultBloc _searchBloc;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _searchBloc = context.read<SearchResultBloc>();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: KaobeiSearchBar(searchEnterStore: searchEnterStore),
      body: Stack(
        children: [
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(height: 35), // 为顶部阴影容器预留空间
                Expanded(child: body()),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                color: setting.backgroundColor,
                boxShadow: [
                  BoxShadow(
                    color: materialColorScheme.secondaryFixedDim,
                    spreadRadius: 0,
                    blurRadius: 2,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: Observer(
                builder:
                    (context) => Row(
                      children: [
                        SizedBox(width: 5),
                        SortWidget(searchEnterStore: searchEnterStore),
                        Expanded(child: Container()),
                        Text(
                          searchEnterStore.searchType == SearchType.comic
                              ? '漫画'
                              : '小说',
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget body() {
    return BlocBuilder<SearchResultBloc, SearchResultState>(
      builder: (context, state) {
        switch (state.status) {
          case SearchStatus.none:
            return Center(
              child: Text('请输入搜索内容', style: TextStyle(fontSize: 20)),
            );
          case SearchStatus.initial:
            return Center(child: CircularProgressIndicator());
          case SearchStatus.failure:
            return _errorWidget(state);
          case SearchStatus.loadingMore:
          case SearchStatus.getMoreFailure:
          case SearchStatus.success:
            return _buildList(state);
        }
      },
    );
  }

  Widget _errorWidget(SearchResultState state) {
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
            onPressed:
                () => _searchBloc.add(
                  SearchResultEvent(
                    SearchEnter(
                      keyword: searchEnterStore.keyword,
                      searchType: searchEnterStore.searchType,
                      qType: searchEnterStore.qType,
                      extend: searchEnterStore.extend,
                    ),
                    SearchStatus.initial,
                  ),
                ),
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  Widget _buildList(SearchResultState state) {
    if (state.elements.isEmpty) {
      return Center(child: Text('啥都没有', style: TextStyle(fontSize: 20)));
    }

    var elementsRows = generateElements(state);

    var itemCount =
        1 +
        elementsRows.length +
        (state.hasReachedMax ? 1 : 0) +
        (state.status == SearchStatus.loadingMore ? 1 : 0) +
        (state.status == SearchStatus.getMoreFailure ? 1 : 0);

    return ListView.builder(
      itemCount: itemCount,
      itemBuilder: (context, index) {
        if (index == 0) {
          return SizedBox(height: 10);
        }

        if (index == itemCount - 1) {
          // logger.d(state.status.toString());
          if (state.hasReachedMax) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('已经到底了', style: TextStyle(fontSize: 20)),
              ),
            );
          }

          if (state.status == SearchStatus.loadingMore) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (state.status == SearchStatus.getMoreFailure) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: ElevatedButton(
                  onPressed: () => _fetchSearchResult,
                  child: Icon(Icons.refresh),
                ),
              ),
            );
          }
        }

        return elementInfoRow(elementsRows[index - 1], context);
      },
      controller: _scrollController,
    );
  }

  void _onScroll() {
    if (_isBottom) _fetchSearchResult();
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  void _fetchSearchResult() {
    _searchBloc.add(
      SearchResultEvent(
        SearchEnter(
          keyword: searchEnterStore.keyword,
          searchType: searchEnterStore.searchType,
          qType: searchEnterStore.qType,
          extend: searchEnterStore.extend,
        ),
        SearchStatus.loadingMore,
      ),
    );
  }
}
