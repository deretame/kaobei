import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../main.dart';
import '../../../network/http/http_require.dart';
import '../../../util/json_dispose.dart';
import '../json/tag_author_search_json.dart';

part 'tag_author_search_event.dart';
part 'tag_author_search_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class TagAuthorSearchBloc
    extends Bloc<TagAuthorSearchEvent, TagAuthorSearchState> {
  TagAuthorSearchBloc() : super(TagAuthorSearchState()) {
    on<TagAuthorSearchEvent>(
      _fetchList,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  List<ListElement> elements = [];
  bool hasReachedMax = false;

  Future<void> _fetchList(
    TagAuthorSearchEvent event,
    Emitter<TagAuthorSearchState> emit,
  ) async {
    if (event.status == TagAuthorSearchStatus.initial) {
      elements = [];
      hasReachedMax = false;
      emit(state.copyWith(status: TagAuthorSearchStatus.initial));
    }

    if (hasReachedMax) return;

    if (event.status == TagAuthorSearchStatus.loadingMore) {
      emit(
        state.copyWith(
          status: TagAuthorSearchStatus.loadingMore,
          elements: elements,
          hasReachedMax: hasReachedMax,
        ),
      );
    }

    try {
      var temp = await comicTagAuthorSearch(
        offset: elements.length,
        qType: event.qType,
        keyword: event.keyword,
        ordering: event.ordering,
      );

      final result = TagAuthorSearchJson.fromJson(replaceNestedNull(temp));

      elements = [...elements, ...result.results.list];

      hasReachedMax = (result.results.offset + 18) >= result.results.total;

      emit(
        state.copyWith(
          status: TagAuthorSearchStatus.success,
          elements: elements,
          hasReachedMax: hasReachedMax,
        ),
      );
    } catch (e, stacktrace) {
      logger.e(e, stackTrace: stacktrace);
      if (elements.isNotEmpty) {
        emit(
          state.copyWith(
            status: TagAuthorSearchStatus.getMoreFailure,
            elements: elements,
            hasReachedMax: hasReachedMax,
            result: e.toString(),
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          status: TagAuthorSearchStatus.failure,
          result: e.toString(),
        ),
      );
    }
  }
}
