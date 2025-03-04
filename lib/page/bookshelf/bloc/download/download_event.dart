part of 'download_bloc.dart';

class DownloadEvent extends Equatable {
  final DownloadStatus downloadStatus;
  final SearchEnter searchEnter;

  const DownloadEvent(this.downloadStatus, this.searchEnter);

  @override
  List<Object> get props => [DownloadStatus, searchEnter];
}
