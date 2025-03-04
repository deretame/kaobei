part of 'comic_read_bloc.dart';

class ComicReadEvent extends Equatable {
  final ComicReadStatus status;
  final String comicId;
  final String chapterId;

  const ComicReadEvent(this.status, this.comicId, this.chapterId);

  @override
  List<Object> get props => [status, comicId, chapterId];
}
