part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class SignInUser extends UserEvent {
  final bool isAnon;

  const SignInUser([this.isAnon = false]);
  @override
  List<Object> get props => [isAnon];
}

class ConvertAnonymousUser extends UserEvent {
  final String id;
  const ConvertAnonymousUser(this.id);
  @override
  List<Object> get props => [id];
}

class SignOutUser extends UserEvent {}

class GetUser extends UserEvent {
  final String userId;

  const GetUser(this.userId);
  @override
  List<Object> get props => [userId];
}

class SaveUser extends UserEvent {
  final Customer user;

  const SaveUser(this.user);
  @override
  List<Object> get props => [user];
}

class UpdateUser extends UserEvent {
  final Customer user;

  const UpdateUser(this.user);
  @override
  List<Object> get props => [user];
}
