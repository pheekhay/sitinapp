part of 'cached_bloc.dart';

@freezed
class CachedState with _$CachedState {
  const factory CachedState.initial() = _Initial;
  const factory CachedState.userLoaded(Customer customer) = _UserLoaded;
  const factory CachedState.noUserFound() = _NoUserFound;
  const factory CachedState.localCacheError() = _LocalCacheError;
}
