import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kaobei/page/chapter_comment/chapter_comment.dart';

@RoutePage()
class ChapterCommentPage extends StatelessWidget {
  final String chapterId;
  final String chapterName;

  const ChapterCommentPage({
    super.key,
    required this.chapterId,
    required this.chapterName,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:
          (_) =>
              ChapterCommentBloc()..add(
                ChapterCommentEvent(
                  status: ChapterCommentStatus.initial,
                  chapterId: chapterId,
                ),
              ),
      child: _ChapterCommentPage(
        status: ChapterCommentStatus.initial,
        chapterId: chapterId,
        chapterName: chapterName,
      ),
    );
  }
}

class _ChapterCommentPage extends StatefulWidget {
  final ChapterCommentStatus status;
  final String chapterId;
  final String chapterName;

  const _ChapterCommentPage({
    required this.chapterId,
    required this.status,
    required this.chapterName,
  });

  @override
  State<_ChapterCommentPage> createState() => __ChapterCommentPagePageState();
}

class __ChapterCommentPagePageState extends State<_ChapterCommentPage> {
  String get chapterId => widget.chapterId;

  late ChapterCommentEvent event;
  final _scrollController = ScrollController();

  @override
  initState() {
    super.initState();
    _scrollController.addListener(_onScroll);

    event = ChapterCommentEvent(status: widget.status, chapterId: chapterId);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.chapterName)),
      body: Center(
        child: BlocBuilder<ChapterCommentBloc, ChapterCommentState>(
          builder: (context, state) {
            switch (state.status) {
              case ChapterCommentStatus.initial:
                return Center(child: CircularProgressIndicator());
              case ChapterCommentStatus.failure:
                return _errorWidget(state);
              case ChapterCommentStatus.getMore:
              case ChapterCommentStatus.getMoreFailure:
              case ChapterCommentStatus.success:
                return _buildList(state);
            }
          },
        ),
      ),
    );
  }

  Widget _errorWidget(ChapterCommentState state) {
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
            onPressed: () => context.read<ChapterCommentBloc>().add(event),
            child: Text('重试'),
          ),
        ],
      ),
    );
  }

  Widget _buildList(ChapterCommentState state) {
    if (state.elements!.isEmpty) {
      return Center(child: Text('啥都没有', style: TextStyle(fontSize: 20)));
    }

    if (state.elements!.length < 40 && !state.hasReachedMax) {
      _fetchSearchResult();
    }

    int length =
        state.elements!.length +
        (state.status == ChapterCommentStatus.getMore ? 1 : 0) +
        (state.status == ChapterCommentStatus.getMoreFailure ? 1 : 0) +
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

          if (state.status == ChapterCommentStatus.getMore) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: CircularProgressIndicator(),
              ),
            );
          }

          if (state.status == ChapterCommentStatus.getMoreFailure) {
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

        return CommentWidget(element: state.elements![index]);
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
    context.read<ChapterCommentBloc>().add(
      event.copyWith(status: ChapterCommentStatus.getMore),
    );
  }
}
