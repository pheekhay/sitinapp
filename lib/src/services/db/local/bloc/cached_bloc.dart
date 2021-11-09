import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sitinapp/src/models/sitin_user.dart';
import 'package:sitinapp/src/services/db/local/user_cache.dart';

part 'cached_event.dart';
part 'cached_state.dart';
part 'cached_bloc.freezed.dart';

class CachedBloc extends Bloc<CachedEvent, CachedState> {
  CachedBloc(this.cache) : super(const _Initial()) {
    on<LoadFromLocal>((event, emit) {
      try {
        final user = cache.getLocalUser();
        if (user != null) {
          emit(CachedState.userLoaded(user));
        } else {
          emit(const CachedState.noUserFound());
        }
      } catch (e) {
        emit(const CachedState.localCacheError());
      }
    });
  }

  final LocalCacheInterface cache;
}
