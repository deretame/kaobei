part of 'download_bloc.dart';

enum DownloadStatus { initial, success, failure, refresh }

class DownloadState extends Equatable {
  final DownloadStatus status;
  final List<ComicBaseInfo>? comicList;
  final String result;

  const DownloadState({
    this.status = DownloadStatus.initial,
    this.comicList,
    this.result = '',
  });

  DownloadState copyWith({
    DownloadStatus? status,
    List<ComicBaseInfo>? comicList,
    String? result,
  }) {
    return DownloadState(
      status: status ?? this.status,
      comicList: comicList ?? this.comicList,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, comicList, result];
}
