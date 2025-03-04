part of 'comic_info_bloc.dart';

class ComicInfoEvent extends Equatable {
  final String comicId;
  final ComicInfoStatus status;

  const ComicInfoEvent(this.comicId, this.status);

  @override
  List<Object> get props => [comicId, status];
}
