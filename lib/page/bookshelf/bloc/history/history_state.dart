part of 'history_bloc.dart';

enum HistoryStatus { initial, success, failure, refresh }

class HistoryState extends Equatable {
  final HistoryStatus status;
  final List<ComicBaseInfo>? comicList;
  final String result;

  const HistoryState({
    this.status = HistoryStatus.initial,
    this.comicList,
    this.result = '',
  });

  HistoryState copyWith({
    HistoryStatus? status,
    List<ComicBaseInfo>? comicList,
    String? result,
  }) {
    return HistoryState(
      status: status ?? this.status,
      comicList: comicList ?? this.comicList,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, comicList, result];
}
