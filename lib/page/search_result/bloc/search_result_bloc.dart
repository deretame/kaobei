import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/main.dart';
import 'package:kaobei/page/search_result/search_result.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../network/http/http_require.dart';
import '../../../util/json_dispose.dart';
import '../json/search_result.dart';

part 'search_result_event.dart';
part 'search_result_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc() : super(SearchResultState()) {
    on<SearchResultEvent>(
      _fetchList,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  List<ListElement> elements = [];
  bool hasReachedMax = false;

  Future<void> _fetchList(
    SearchResultEvent event,
    Emitter<SearchResultState> emit,
  ) async {
    // logger.d('searchStatus : ${event.searchStatus.toString()}');
    if (event.searchStatus == SearchStatus.none) {
      emit(state.copyWith(status: SearchStatus.none));
      return;
    }

    if (event.searchStatus == SearchStatus.initial) {
      elements = [];
      hasReachedMax = false;
      emit(state.copyWith(status: SearchStatus.initial));
    }

    if (hasReachedMax) return;

    if (event.searchStatus == SearchStatus.loadingMore) {
      emit(
        state.copyWith(
          status: SearchStatus.loadingMore,
          elements: elements,
          hasReachedMax: hasReachedMax,
          searchEnter: event.searchEnter,
        ),
      );
    }

    try {
      var temp = await search(
        q: event.searchEnter.keyword,
        offset: elements.length,
        qType: event.searchEnter.qType,
        searchType: event.searchEnter.searchType,
      );

      final result = SearchResult.fromJson(replaceNestedNull(temp));

      elements.addAll(result.results.list);

      hasReachedMax = (result.results.offset + 18) >= result.results.total;

      emit(
        state.copyWith(
          status: SearchStatus.success,
          elements: elements,
          hasReachedMax: hasReachedMax,
          searchEnter: event.searchEnter,
        ),
      );
    } catch (e, stacktrace) {
      logger.e(e, stackTrace: stacktrace);
      if (elements.isNotEmpty) {
        emit(
          state.copyWith(
            status: SearchStatus.getMoreFailure,
            elements: elements,
            hasReachedMax: hasReachedMax,
            searchEnter: event.searchEnter,
            result: e.toString(),
          ),
        );
        return;
      }

      emit(
        state.copyWith(
          status: SearchStatus.failure,
          searchEnter: event.searchEnter,
          result: e.toString(),
        ),
      );
    }
  }
}
