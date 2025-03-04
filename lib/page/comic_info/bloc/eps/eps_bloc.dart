import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/network/http/http_require.dart';
import 'package:stream_transform/stream_transform.dart';

import '../../../../main.dart';
import '../../../../util/json_dispose.dart';
import '../../json/eps/eps_json.dart';

part 'eps_event.dart';
part 'eps_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class EpsBloc extends Bloc<EpsEvent, EpsState> {
  EpsBloc() : super(EpsState()) {
    on<EpsEvent>(_fetchEps, transformer: _throttleDroppable(_throttleDuration));
  }

  Future<void> _fetchEps(EpsEvent event, Emitter<EpsState> emit) async {
    if (event.status == EpsStatus.initial) {
      emit(state.copyWith(status: EpsStatus.initial));
    }

    try {
      final eps = await _getEps(event.comicId, event.group);

      emit(state.copyWith(status: EpsStatus.success, eps: eps));
    } catch (e) {
      logger.e(e);
      emit(state.copyWith(status: EpsStatus.failure, result: e.toString()));
    }
  }

  Future<List<ListElement>> _getEps(String comicId, String group) async {
    List<ListElement> eps = [];

    int offset = 0;
    int total;

    do {
      var temp = await getComicEps(
        comicId: comicId,
        group: group,
        offset: offset,
      );
      var epsInfo = EpsJson.fromJson(replaceNestedNull(temp));
      eps.addAll(epsInfo.results.list);
      total = epsInfo.results.total;
      offset += epsInfo.results.list.length;
    } while (eps.length < total);

    return eps;
  }
}
