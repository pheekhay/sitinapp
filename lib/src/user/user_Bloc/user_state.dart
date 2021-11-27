part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class ReadyState extends UserState {}

class LoadingUser extends UserState {}

class LoadedUser extends UserState {
  final Customer? user;

  const LoadedUser(this.user);
  @override
  List<Object?> get props => [user];
}

class LoadingError extends UserState {
  final String msg;

  const LoadingError(this.msg);

  @override
  List<Object> get props => [msg];
}
