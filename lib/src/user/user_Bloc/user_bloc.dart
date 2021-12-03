import 'dart:developer';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sitinapp/src/models/sitin_user.dart';
import 'package:sitinapp/src/services/db/local/user_cache.dart';
import 'package:sitinapp/src/services/db/registration_service.dart';
import 'package:sitinapp/src/services/db/user_database_service.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userdb, this.cache) : super(const ReadyState()) {
    on<UserEvent>((event, emit) async {
      if (event is _SignInUser) {
        emit(const LoadingUser());
        try {
          if (event.isAnon) {
            final user = await RegistationService.signInAnonymously();
            add(UserEvent.saveUser(user));
          } else {
            final user = await RegistationService.signInWithGoogle();
            add(UserEvent.saveUser(user));
          }
        } catch (e) {
          log("user_bloc: ${e.toString()}");
          emit(LoadingError(e.toString()));
        }
      } else if (event is _ConvertAnonymousUser) {
        emit(const LoadingUser());
        try {
          var user = await RegistationService.signInWithGoogle();
          user = user.copyWith(id: event.id);
          add(UserEvent.updateUser(user));
        } catch (e) {
          log("user_bloc: ${e.toString()}");
          emit(LoadingError(e.toString()));
        }
      } else if (event is _SignOutUser) {
        try {
          await RegistationService.signOut();
        } catch (e) {
          emit(LoadingError(e.toString()));
        }
      } else if (event is _GetUser) {
        emit(const LoadingUser());
        try {
          final cachedUser = cache.getLocalUser();
          if (cachedUser != null) {
            emit(LoadedUser(cachedUser));
          } else {
            final user = await userdb.getUser(event.userId);
            emit(LoadedUser(user));
          }
        } catch (e) {
          emit(LoadingError(e.toString()));
        }
      } else if (event is _SaveUser) {
        emit(const LoadingUser());
        try {
          final user = await userdb.createUser(event.user);
          await cache.saveToCache(user);

          emit(LoadedUser(user));
        } catch (e) {
          emit(LoadingError(e.toString()));
        }
      } else if (event is _UpdateUser) {
        emit(const LoadingUser());
        try {
          final user = await userdb.updateUser(event.user);
          await cache.saveToCache(user);

          emit(LoadedUser(user));
        } catch (e) {
          emit(LoadingError(e.toString()));
        }
      }
    });
  }

  final UserDatabaseServiceInterface userdb;
  final LocalCacheInterface cache;
}
