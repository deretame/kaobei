import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';
import '../../../util/json_dispose.dart';
import '../json/chapter_comments_json.dart';

part 'chapter_comment_event.dart';
part 'chapter_comment_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ChapterCommentBloc
    extends Bloc<ChapterCommentEvent, ChapterCommentState> {
  ChapterCommentBloc() : super(ChapterCommentState()) {
    on<ChapterCommentEvent>(
      _fetchComment,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  List<ListElement> elements = [];
  bool hasReachedMax = false;

  Future<void> _fetchComment(
    ChapterCommentEvent event,
    Emitter<ChapterCommentState> emit,
  ) async {
    if (event.status == ChapterCommentStatus.initial) {
      elements = [];
      hasReachedMax = false;
      emit(state.copyWith(status: ChapterCommentStatus.initial));
    }

    if (hasReachedMax) return;

    if (event.status == ChapterCommentStatus.getMore) {
      emit(
        state.copyWith(
          status: ChapterCommentStatus.getMore,
          elements: elements,
          hasReachedMax: hasReachedMax,
        ),
      );
    }

    try {
      var temp = await getComicComments(
        chapterId: event.chapterId,
        offset: elements.length,
      );

      final result = ChapterCommentsJson.fromJson(replaceNestedNull(temp));

      elements = [...elements, ...result.results.list];

      hasReachedMax = (result.results.offset + 10) >= result.results.total;

      emit(
        state.copyWith(
          status: ChapterCommentStatus.success,
          elements: elements,
          hasReachedMax: hasReachedMax,
        ),
      );
    } catch (e, stacktrace) {
      logger.e(e, stackTrace: stacktrace);
      if (elements.isNotEmpty) {
        emit(
          state.copyWith(
            status: ChapterCommentStatus.getMoreFailure,
            elements: elements,
            hasReachedMax: hasReachedMax,
            result: e.toString(),
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          status: ChapterCommentStatus.failure,
          result: e.toString(),
        ),
      );
    }
  }
}
