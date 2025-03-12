import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/main.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';
import 'package:stream_transform/stream_transform.dart';

part 'favorite_event.dart';
part 'favorite_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class FavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  FavoriteBloc() : super(FavoriteState()) {
    on<FavoriteEvent>(
      _fetchComicList,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  Future<void> _fetchComicList(
    FavoriteEvent event,
    Emitter<FavoriteState> emit,
  ) async {
    if (event.favoriteStatus == FavoriteStatus.initial) {
      emit(state.copyWith(status: FavoriteStatus.initial));
    }

    try {
      var comicList = await objectbox.collectBox.getAllAsync();

      comicList = comicList.where((e) => e.deleted != true).toList();

      if (event.searchEnter.keyword.isNotEmpty) {
        comicList =
            comicList.where((e) {
              final info = e.name + e.alias + e.author + e.description;
              return info.toLowerCase().contains(
                event.searchEnter.keyword.toLowerCase(),
              );
            }).toList();
      }

      comicList.sort((a, b) => b.collectTime.compareTo(a.collectTime));

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

      emit(state.copyWith(status: FavoriteStatus.success, comicList: temp));
    } catch (e) {
      logger.e(e);
      emit(
        state.copyWith(status: FavoriteStatus.failure, result: e.toString()),
      );
    }
  }
}
