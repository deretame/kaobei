part of 'history_bloc.dart';

class HistoryEvent extends Equatable {
  final HistoryStatus downloadStatus;
  final SearchEnter searchEnter;

  const HistoryEvent(this.downloadStatus, this.searchEnter);

  @override
  List<Object> get props => [downloadStatus, searchEnter];
}
