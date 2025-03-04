import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../../main.dart';

part 'history_event.dart';
part 'history_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  HistoryBloc() : super(HistoryState()) {
    on<HistoryEvent>(
      _fetchComicList,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  Future<void> _fetchComicList(
    HistoryEvent event,
    Emitter<HistoryState> emit,
  ) async {
    if (event.downloadStatus == HistoryStatus.initial) {
      emit(state.copyWith(status: HistoryStatus.initial));
    }

    try {
      var comicList = await objectbox.historyBox.getAllAsync();

      comicList = comicList.where((e) => e.deleted != true).toList();
      comicList.sort((a, b) => b.lastViewingTime.compareTo(a.lastViewingTime));

      var temp =
          comicList.map((e) {
            return ComicBaseInfo(
              e.name,
              e.pathWord,
              e.coverUrl,
              e.author,
              e.popular,
            );
          }).toList();

      emit(state.copyWith(status: HistoryStatus.success, comicList: temp));
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(status: HistoryStatus.failure, result: e.toString()));
    }
  }
}
