part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.searchInitial() = _SearchInitial;
  const factory SearchState.searchLoading() = _SearchLoading;
  const factory SearchState.searchLoaded(List<Restaurant> restaurants) =
      _SearchLoaded;
  const factory SearchState.searchError() = _SearchError;
}
