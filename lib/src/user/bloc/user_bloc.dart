import 'dart:developer';

import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:sitinapp/src/models/sitin_user.dart';
import 'package:sitinapp/src/services/db/local/user_cache.dart';
import 'package:sitinapp/src/services/db/registration_service.dart';
import 'package:sitinapp/src/services/db/user_database_service.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc(this.userdb, this.cache) : super(ReadyState()) {
    on<UserEvent>((event, emit) async {
      if (event is SignInUser) {
        emit(LoadingUser());
        try {
          if (event.isAnon) {
            final user = await RegistationService.signInAnonymously();
            add(SaveUser(user));
          } else {
            final user = await RegistationService.signInWithGoogle();
            add(SaveUser(user));
          }
        } catch (e) {
          log(e.toString());
          emit(LoadingError(e.toString()));
        }
      } else if (event is SignOutUser) {
        try {
          await RegistationService.signOut();
        } catch (e) {
          emit(LoadingError(e.toString()));
        }
      } else if (event is GetUser) {
        emit(LoadingUser());
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
      } else if (event is SaveUser) {
        emit(LoadingUser());
        try {
          final user = await userdb.createUser(event.user);
          await cache.saveToCache(user);

          emit(LoadedUser(user));
        } catch (e) {
          emit(LoadingError(e.toString()));
        }
      } else if (event is UpdateUser) {
        emit(LoadingUser());
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

  @override
  void onChange(Change<UserState> change) {
    log("currentstate :" + change.currentState.toString());
    log("nextState :" + change.nextState.toString());
    log(change.toString());
    super.onChange(change);
  }
}
