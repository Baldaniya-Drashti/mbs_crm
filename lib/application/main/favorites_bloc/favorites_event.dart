part of 'favorites_bloc.dart';

@freezed
class FavoritesEvent with _$FavoritesEvent {
  const factory FavoritesEvent.getFavoritesList(bool isRefresh) =
      GetFavoritesList;
  const factory FavoritesEvent.toggleFavourite(int id) = ToggleFavourite;
}
