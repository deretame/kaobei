import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/comic_tag_author_search/comic_tag_author_search.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';

@RoutePage()
class TagAuthorSearchPage extends StatelessWidget {
  final String name;
  final String pathWord;
  final QType qType;

  const TagAuthorSearchPage({
    super.key,
    required this.name,
    required this.pathWord,
    required this.qType,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              TagAuthorSearchBloc()..add(
                TagAuthorSearchEvent(
                  status: TagAuthorSearchStatus.initial,
                  qType: qType,
                  keyword: pathWord,
                  ordering: Ordering.minusDatetimeUpdated,
                ),
              ),
      child: _TagAuthorSearchPage(
        status: TagAuthorSearchStatus.initial,
        qType: qType,
        name: name,
        pathWord: pathWord,
        ordering: Ordering.minusDatetimeUpdated,
      ),
    );
  }
}

class _TagAuthorSearchPage extends StatefulWidget {
  final TagAuthorSearchStatus status;
  final QType qType;
  final String name;
  final String pathWord;
  final Ordering ordering;

  const _TagAuthorSearchPage({
    required this.status,
    required this.qType,
    required this.name,
    required this.pathWord,
    required this.ordering,
  });

  @override
  State<_TagAuthorSearchPage> createState() => __TagAuthorSearchPageState();
}

class __TagAuthorSearchPageState extends State<_TagAuthorSearchPage> {
  String appBarTitle = '';
  late TagAuthorSearchEvent event;
  final _scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    if (widget.qType == QType.theme) {
      appBarTitle = '分类：${widget.name}';
    } else {
      appBarTitle = '作者：${widget.name}';
    }

    event = TagAuthorSearchEvent(
      status: widget.status,
      qType: widget.qType,
      keyword: widget.pathWord,
      ordering: widget.ordering,
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(appBarTitle)),
      body: Center(
        child: BlocBuilder<TagAuthorSearchBloc, TagAuthorSearchState>(
          builder: (context, state) {
            switch (state.status) {
              case TagAuthorSearchStatus.initial:
                return Center(child: CircularProgressIndicator());
              case TagAuthorSearchStatus.failure:
                return _errorWidget(state);
              case TagAuthorSearchStatus.loadingMore:
              case TagAuthorSearchStatus.getMoreFailure:
              case TagAuthorSearchStatus.success:
                return Stack(
                  children: [
                    Positioned.fill(
                      child: Column(
                        children: [
                          SizedBox(height: 35), // 为顶部阴影容器预留空间
                          Expanded(child: _buildList(state)),
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
                        child: Row(
                          children: [
                            SizedBox(width: 5),
                            SortWidget(
                              event: event,
                              onOrderingChanged: (ordering) {
                                logger.d('ordering changed: $ordering');
                                setState(() {
                                  event = event.copyWith(
                                    ordering: ordering,
                                    status: TagAuthorSearchStatus.initial,
                                  );
                                });
                                context.read<TagAuthorSearchBloc>().add(event);
                              },
                            ),
                            Expanded(child: Container()),
                            SizedBox(width: 5),
                          ],
                        ),
                      ),
                    ),
                  ],
                );
            }
          },
        ),
      ),
    );
  }

  Widget _errorWidget(TagAuthorSearchState state) {
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
            onPressed: () => context.read<TagAuthorSearchBloc>().add(event),
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  Widget _buildList(TagAuthorSearchState state) {
    if (state.elements.isEmpty) {
      return Center(child: Text('啥都没有', style: TextStyle(fontSize: 20)));
    }

    var elementsRows = generateElements(state);

    var itemCount =
        1 +
        elementsRows.length +
        (state.hasReachedMax ? 1 : 0) +
        (state.status == TagAuthorSearchStatus.loadingMore ? 1 : 0) +
        (state.status == TagAuthorSearchStatus.getMoreFailure ? 1 : 0);

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

          if (state.status == TagAuthorSearchStatus.loadingMore) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (state.status == TagAuthorSearchStatus.getMoreFailure) {
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
    context.read<TagAuthorSearchBloc>().add(
      event.copyWith(status: TagAuthorSearchStatus.loadingMore),
    );
  }
}
