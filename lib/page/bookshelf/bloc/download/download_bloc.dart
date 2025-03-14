import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:kaobei/main.dart';
import 'package:kaobei/page/bookshelf/bookshelf.dart';
import 'package:stream_transform/stream_transform.dart';

part 'download_event.dart';
part 'download_state.dart';

const _throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> _throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  DownloadBloc() : super(DownloadState()) {
    on<DownloadEvent>(
      _fetchComicList,
      transformer: _throttleDroppable(_throttleDuration),
    );
  }

  Future<void> _fetchComicList(
    DownloadEvent event,
    Emitter<DownloadState> emit,
  ) async {
    if (event.downloadStatus == DownloadStatus.initial) {
      emit(state.copyWith(status: DownloadStatus.initial));
    }

    try {
      var comicList = await objectbox.downloadBox.getAllAsync();

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

      if (event.searchEnter.sortType == 1) {
        comicList.sort((a, b) => a.popular.compareTo(b.popular));
      } else if (event.searchEnter.sortType == 2) {
        comicList.sort((a, b) => b.popular.compareTo(a.popular));
      } else if (event.searchEnter.sortType == 3) {
        comicList.sort((a, b) => a.downloadTime.compareTo(b.downloadTime));
      } else if (event.searchEnter.sortType == 4) {
        comicList.sort((a, b) => b.downloadTime.compareTo(a.downloadTime));
      }

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

      emit(state.copyWith(status: DownloadStatus.success, comicList: temp));
    } catch (e) {
      logger.e(e);
      emit(
        state.copyWith(status: DownloadStatus.failure, result: e.toString()),
      );
    }
  }
}
