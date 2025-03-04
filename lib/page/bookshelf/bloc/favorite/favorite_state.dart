part of 'favorite_bloc.dart';

enum FavoriteStatus { initial, success, failure, refresh }

class FavoriteState extends Equatable {
  final FavoriteStatus status;
  final List<ComicBaseInfo>? comicList;
  final String result;

  const FavoriteState({
    this.status = FavoriteStatus.initial,
    this.comicList,
    this.result = '',
  });

  FavoriteState copyWith({
    FavoriteStatus? status,
    List<ComicBaseInfo>? comicList,
    String? result,
  }) {
    return FavoriteState(
      status: status ?? this.status,
      comicList: comicList ?? this.comicList,
      result: result ?? this.result,
    );
  }

  @override
  List<Object?> get props => [status, comicList, result];
}
