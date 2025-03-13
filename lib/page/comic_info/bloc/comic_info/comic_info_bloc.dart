import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/page/comic_info/comic_info.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../../main.dart';
import '../../../../network/http/http_require.dart';
import '../../../../util/json_dispose.dart';

part 'comic_info_event.dart';
part 'comic_info_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class ComicInfoBloc extends Bloc<ComicInfoEvent, ComicInfoState> {
  ComicInfoBloc() : super(ComicInfoState()) {
    on<ComicInfoEvent>(
      _fetchComicInfo,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  Future<void> _fetchComicInfo(
    ComicInfoEvent event,
    Emitter<ComicInfoState> emit,
  ) async {
    if (event.status == ComicInfoStatus.initial) {
      emit(state.copyWith(status: ComicInfoStatus.initial));
    }

    try {
      final result = await getComicInfo(event.comicId);

      result['results']['comic']['datetime_updated'] ??= "2018-08-14";

      final temp = json.encode(replaceNestedNull(result));

      final comicInfo = ComicInfo.fromJson(json.decode(temp));

      emit(
        state.copyWith(
          status: ComicInfoStatus.success,
          comicInfo: comicInfo,
          result: temp,
        ),
      );
    } catch (e, stacktrace) {
      logger.e(e, stackTrace: stacktrace);

      emit(
        state.copyWith(status: ComicInfoStatus.failure, result: e.toString()),
      );
    }
  }
}
