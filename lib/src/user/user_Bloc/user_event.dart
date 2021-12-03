part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.signInUser([@Default(false) bool isAnon]) = _SignInUser;
  const factory UserEvent.convertAnonymousUser(String id) = _ConvertAnonymousUser;

  const factory UserEvent.signOutUser() = _SignOutUser;
  const factory UserEvent.getUser(String userId) = _GetUser;
  const factory UserEvent.saveUser(Customer user) = _SaveUser;
  const factory UserEvent.updateUser(Customer user) = _UpdateUser;
}
