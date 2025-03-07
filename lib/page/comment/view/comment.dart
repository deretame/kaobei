import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/network/http/http_require.dart';
import 'package:kaobei/page/comment/comment.dart';

@RoutePage()
class CommentPage extends StatelessWidget {
  final SearchType type;
  final String comicName;
  final String comicId;

  const CommentPage({
    super.key,
    required this.type,
    required this.comicName,
    required this.comicId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              CommentBloc()..add(
                CommentEvent(
                  status: CommentStatus.initial,
                  comicId: comicId,
                  type: type,
                  parentId: '',
                ),
              ),
      child: _CommentPage(comicName: comicName, comicId: comicId, type: type),
    );
  }
}

class _CommentPage extends StatefulWidget {
  final SearchType type;
  final String comicName;
  final String comicId;

  const _CommentPage({
    required this.type,
    required this.comicName,
    required this.comicId,
  });

  @override
  State<_CommentPage> createState() => __CommentPagePageState();
}

class __CommentPagePageState extends State<_CommentPage> {
  String get comicId => widget.comicId;

  SearchType get type => widget.type;

  late CommentEvent event;
  final _scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    event = CommentEvent(
      status: CommentStatus.initial,
      comicId: comicId,
      type: type,
      parentId: '',
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
      appBar: AppBar(title: Text(widget.comicName)),
      body: Center(
        child: BlocBuilder<CommentBloc, CommentState>(
          builder: (context, state) {
            switch (state.status) {
              case CommentStatus.initial:
                return Center(child: CircularProgressIndicator());
              case CommentStatus.failure:
                return _errorWidget(state);
              case CommentStatus.getMore:
              case CommentStatus.getMoreFailure:
              case CommentStatus.success:
                return _buildList(state);
            }
          },
        ),
      ),
    );
  }

  Widget _errorWidget(CommentState state) {
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
            onPressed: () => context.read<CommentBloc>().add(event),
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  Widget _buildList(CommentState state) {
    if (state.elements!.isEmpty) {
      return Center(child: Text('啥都没有', style: TextStyle(fontSize: 20)));
    }

    if (state.elements!.length < 40 && !state.hasReachedMax) {
      _fetchSearchResult();
    }

    int length =
        state.elements!.length +
        (state.status == CommentStatus.getMore ? 1 : 0) +
        (state.status == CommentStatus.getMoreFailure ? 1 : 0) +
        (state.hasReachedMax ? 1 : 0);

    return ListView.builder(
      itemCount: length,
      itemBuilder: (context, index) {
        if (index == length - 1) {
          // logger.d(state.status.toString());
          if (state.hasReachedMax) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text('已经到底了', style: TextStyle(fontSize: 20)),
              ),
            );
          }

          if (state.status == CommentStatus.getMore) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (state.status == CommentStatus.getMoreFailure) {
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

        return CommentWidget(
          element: state.elements![index],
          comicId: comicId,
          comicName: widget.comicName,
        );
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
    context.read<CommentBloc>().add(
      event.copyWith(status: CommentStatus.getMore),
    );
  }
}
