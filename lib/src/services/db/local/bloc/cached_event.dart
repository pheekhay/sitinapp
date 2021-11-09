part of 'cached_bloc.dart';

@freezed
class CachedEvent with _$CachedEvent {
  const factory CachedEvent.started() = Started;
  const factory CachedEvent.loadFromLocal() = LoadFromLocal;
}
