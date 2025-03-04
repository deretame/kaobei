part of 'comic_info_bloc.dart';

enum ComicInfoStatus { initial, success, failure }

class ComicInfoState extends Equatable {
  final ComicInfoStatus status;
  final ComicInfo? comicInfo;
  final String result;

  const ComicInfoState({
    this.status = ComicInfoStatus.initial,
    this.comicInfo,
    this.result = '',
  });

  ComicInfoState copyWith({
    ComicInfoStatus? status,
    ComicInfo? comicInfo,
    String? result,
  }) {
    return ComicInfoState(
      status: status ?? this.status,
      comicInfo: comicInfo ?? this.comicInfo,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, comicInfo, result];
}
