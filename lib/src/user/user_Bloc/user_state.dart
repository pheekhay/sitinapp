part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.readyState() = ReadyState;
  const factory UserState.loadingUser() = LoadingUser;
  const factory UserState.loadedUser(Customer? user) = LoadedUser;
  const factory UserState.loadingError(String msg) = LoadingError;
}
