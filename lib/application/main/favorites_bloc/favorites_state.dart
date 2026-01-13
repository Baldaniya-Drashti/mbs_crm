part of 'favorites_bloc.dart';

@freezed
class FavoritesState with _$FavoritesState {
  factory FavoritesState({
    required bool isSubmitting,
    required bool isLoading,
    required bool showError,
    required bool isNoDataFound,
    required List<int> favouriteIds,
  }) = _FavoritesState;
  factory FavoritesState.initial() => FavoritesState(
    isSubmitting: false,
    isLoading: false,
    showError: false,
    isNoDataFound: false,
    favouriteIds: [],
  );
}
