import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/network/http/http_require.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../main.dart';
import '../../../util/json_dispose.dart';
import '../json/comment_json.dart';

part 'comment_event.dart';
part 'comment_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class CommentBloc extends Bloc<CommentEvent, CommentState> {
  CommentBloc() : super(CommentState()) {
    on<CommentEvent>(
      _fetchComment,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  List<ListElement> elements = [];
  bool hasReachedMax = false;

  Future<void> _fetchComment(
    CommentEvent event,
    Emitter<CommentState> emit,
  ) async {
    if (event.status == CommentStatus.initial) {
      elements = [];
      hasReachedMax = false;
      emit(state.copyWith(status: CommentStatus.initial));
    }

    if (hasReachedMax) return;

    if (event.status == CommentStatus.getMore) {
      emit(
        state.copyWith(
          status: CommentStatus.getMore,
          elements: elements,
          hasReachedMax: hasReachedMax,
        ),
      );
    }

    try {
      var temp = await getComicComments(
        comicId: event.comicId,
        replyId: event.parentId,
        offset: elements.length,
      );

      final result = CommentJson.fromJson(replaceNestedNull(temp));

      elements = [...elements, ...result.results.list];

      hasReachedMax = (result.results.offset + 10) >= result.results.total;

      emit(
        state.copyWith(
          status: CommentStatus.success,
          elements: elements,
          hasReachedMax: hasReachedMax,
        ),
      );
    } catch (e, stacktrace) {
      logger.e(e, stackTrace: stacktrace);
      if (elements.isNotEmpty) {
        emit(
          state.copyWith(
            status: CommentStatus.getMoreFailure,
            elements: elements,
            hasReachedMax: hasReachedMax,
            result: e.toString(),
          ),
        );
        return;
      }

      emit(state.copyWith(status: CommentStatus.failure, result: e.toString()));
    }
  }
}
