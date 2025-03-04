import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/network/http/http_require.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../main.dart';
import '../../../util/json_dispose.dart';
import '../json/comic_read_json.dart';

part 'comic_read_event.dart';
part 'comic_read_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ComicReadBloc extends Bloc<ComicReadEvent, ComicReadState> {
  ComicReadBloc() : super(ComicReadState()) {
    on<ComicReadEvent>(
      _fetchEpInfo,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  Future<void> _fetchEpInfo(
    ComicReadEvent event,
    Emitter<ComicReadState> emit,
  ) async {
    if (event.status == ComicReadStatus.initial) {
      emit(state.copyWith(status: ComicReadStatus.initial));
    }

    try {
      var temp = await getEpsInfo(
        comicId: event.comicId,
        chapterId: event.chapterId,
      );

      final result = ComicReadJson.fromJson(replaceNestedNull(temp));

      emit(state.copyWith(status: ComicReadStatus.success, eps: result));
    } catch (e) {
      logger.e(e);
      emit(
        state.copyWith(status: ComicReadStatus.failure, result: e.toString()),
      );
    }
  }
}
