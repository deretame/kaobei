part of 'favorite_bloc.dart';

class FavoriteEvent extends Equatable {
  final FavoriteStatus favoriteStatus;
  final SearchEnter searchEnter;

  const FavoriteEvent(this.favoriteStatus, this.searchEnter);

  @override
  List<Object> get props => [favoriteStatus, searchEnter];
}
