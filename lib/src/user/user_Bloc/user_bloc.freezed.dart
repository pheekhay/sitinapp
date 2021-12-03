// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UserEventTearOff {
  const _$UserEventTearOff();

  _SignInUser signInUser([bool isAnon = false]) {
    return _SignInUser(
      isAnon,
    );
  }

  _ConvertAnonymousUser convertAnonymousUser(String id) {
    return _ConvertAnonymousUser(
      id,
    );
  }

  _SignOutUser signOutUser() {
    return const _SignOutUser();
  }

  _GetUser getUser(String userId) {
    return _GetUser(
      userId,
    );
  }

  _SaveUser saveUser(Customer user) {
    return _SaveUser(
      user,
    );
  }

  _UpdateUser updateUser(Customer user) {
    return _UpdateUser(
      user,
    );
  }
}

/// @nodoc
const $UserEvent = _$UserEventTearOff();

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res> implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  final UserEvent _value;
  // ignore: unused_field
  final $Res Function(UserEvent) _then;
}

/// @nodoc
abstract class _$SignInUserCopyWith<$Res> {
  factory _$SignInUserCopyWith(
          _SignInUser value, $Res Function(_SignInUser) then) =
      __$SignInUserCopyWithImpl<$Res>;
  $Res call({bool isAnon});
}

/// @nodoc
class __$SignInUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$SignInUserCopyWith<$Res> {
  __$SignInUserCopyWithImpl(
      _SignInUser _value, $Res Function(_SignInUser) _then)
      : super(_value, (v) => _then(v as _SignInUser));

  @override
  _SignInUser get _value => super._value as _SignInUser;

  @override
  $Res call({
    Object? isAnon = freezed,
  }) {
    return _then(_SignInUser(
      isAnon == freezed
          ? _value.isAnon
          : isAnon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInUser implements _SignInUser {
  const _$_SignInUser([this.isAnon = false]);

  @JsonKey(defaultValue: false)
  @override
  final bool isAnon;

  @override
  String toString() {
    return 'UserEvent.signInUser(isAnon: $isAnon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInUser &&
            (identical(other.isAnon, isAnon) || other.isAnon == isAnon));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAnon);

  @JsonKey(ignore: true)
  @override
  _$SignInUserCopyWith<_SignInUser> get copyWith =>
      __$SignInUserCopyWithImpl<_SignInUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) {
    return signInUser(isAnon);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) {
    return signInUser?.call(isAnon);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(isAnon);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return signInUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) {
    return signInUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (signInUser != null) {
      return signInUser(this);
    }
    return orElse();
  }
}

abstract class _SignInUser implements UserEvent {
  const factory _SignInUser([bool isAnon]) = _$_SignInUser;

  bool get isAnon;
  @JsonKey(ignore: true)
  _$SignInUserCopyWith<_SignInUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ConvertAnonymousUserCopyWith<$Res> {
  factory _$ConvertAnonymousUserCopyWith(_ConvertAnonymousUser value,
          $Res Function(_ConvertAnonymousUser) then) =
      __$ConvertAnonymousUserCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ConvertAnonymousUserCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res>
    implements _$ConvertAnonymousUserCopyWith<$Res> {
  __$ConvertAnonymousUserCopyWithImpl(
      _ConvertAnonymousUser _value, $Res Function(_ConvertAnonymousUser) _then)
      : super(_value, (v) => _then(v as _ConvertAnonymousUser));

  @override
  _ConvertAnonymousUser get _value => super._value as _ConvertAnonymousUser;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_ConvertAnonymousUser(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ConvertAnonymousUser implements _ConvertAnonymousUser {
  const _$_ConvertAnonymousUser(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserEvent.convertAnonymousUser(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ConvertAnonymousUser &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$ConvertAnonymousUserCopyWith<_ConvertAnonymousUser> get copyWith =>
      __$ConvertAnonymousUserCopyWithImpl<_ConvertAnonymousUser>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) {
    return convertAnonymousUser(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) {
    return convertAnonymousUser?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) {
    if (convertAnonymousUser != null) {
      return convertAnonymousUser(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return convertAnonymousUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) {
    return convertAnonymousUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (convertAnonymousUser != null) {
      return convertAnonymousUser(this);
    }
    return orElse();
  }
}

abstract class _ConvertAnonymousUser implements UserEvent {
  const factory _ConvertAnonymousUser(String id) = _$_ConvertAnonymousUser;

  String get id;
  @JsonKey(ignore: true)
  _$ConvertAnonymousUserCopyWith<_ConvertAnonymousUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SignOutUserCopyWith<$Res> {
  factory _$SignOutUserCopyWith(
          _SignOutUser value, $Res Function(_SignOutUser) then) =
      __$SignOutUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$SignOutUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$SignOutUserCopyWith<$Res> {
  __$SignOutUserCopyWithImpl(
      _SignOutUser _value, $Res Function(_SignOutUser) _then)
      : super(_value, (v) => _then(v as _SignOutUser));

  @override
  _SignOutUser get _value => super._value as _SignOutUser;
}

/// @nodoc

class _$_SignOutUser implements _SignOutUser {
  const _$_SignOutUser();

  @override
  String toString() {
    return 'UserEvent.signOutUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SignOutUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) {
    return signOutUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) {
    return signOutUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) {
    if (signOutUser != null) {
      return signOutUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return signOutUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) {
    return signOutUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (signOutUser != null) {
      return signOutUser(this);
    }
    return orElse();
  }
}

abstract class _SignOutUser implements UserEvent {
  const factory _SignOutUser() = _$_SignOutUser;
}

/// @nodoc
abstract class _$GetUserCopyWith<$Res> {
  factory _$GetUserCopyWith(_GetUser value, $Res Function(_GetUser) then) =
      __$GetUserCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class __$GetUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$GetUserCopyWith<$Res> {
  __$GetUserCopyWithImpl(_GetUser _value, $Res Function(_GetUser) _then)
      : super(_value, (v) => _then(v as _GetUser));

  @override
  _GetUser get _value => super._value as _GetUser;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_GetUser(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GetUser implements _GetUser {
  const _$_GetUser(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'UserEvent.getUser(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GetUser &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  _$GetUserCopyWith<_GetUser> get copyWith =>
      __$GetUserCopyWithImpl<_GetUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) {
    return getUser(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) {
    return getUser?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return getUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) {
    return getUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (getUser != null) {
      return getUser(this);
    }
    return orElse();
  }
}

abstract class _GetUser implements UserEvent {
  const factory _GetUser(String userId) = _$_GetUser;

  String get userId;
  @JsonKey(ignore: true)
  _$GetUserCopyWith<_GetUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SaveUserCopyWith<$Res> {
  factory _$SaveUserCopyWith(_SaveUser value, $Res Function(_SaveUser) then) =
      __$SaveUserCopyWithImpl<$Res>;
  $Res call({Customer user});

  $CustomerCopyWith<$Res> get user;
}

/// @nodoc
class __$SaveUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$SaveUserCopyWith<$Res> {
  __$SaveUserCopyWithImpl(_SaveUser _value, $Res Function(_SaveUser) _then)
      : super(_value, (v) => _then(v as _SaveUser));

  @override
  _SaveUser get _value => super._value as _SaveUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_SaveUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  $CustomerCopyWith<$Res> get user {
    return $CustomerCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_SaveUser implements _SaveUser {
  const _$_SaveUser(this.user);

  @override
  final Customer user;

  @override
  String toString() {
    return 'UserEvent.saveUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SaveUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$SaveUserCopyWith<_SaveUser> get copyWith =>
      __$SaveUserCopyWithImpl<_SaveUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) {
    return saveUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) {
    return saveUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements UserEvent {
  const factory _SaveUser(Customer user) = _$_SaveUser;

  Customer get user;
  @JsonKey(ignore: true)
  _$SaveUserCopyWith<_SaveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$UpdateUserCopyWith<$Res> {
  factory _$UpdateUserCopyWith(
          _UpdateUser value, $Res Function(_UpdateUser) then) =
      __$UpdateUserCopyWithImpl<$Res>;
  $Res call({Customer user});

  $CustomerCopyWith<$Res> get user;
}

/// @nodoc
class __$UpdateUserCopyWithImpl<$Res> extends _$UserEventCopyWithImpl<$Res>
    implements _$UpdateUserCopyWith<$Res> {
  __$UpdateUserCopyWithImpl(
      _UpdateUser _value, $Res Function(_UpdateUser) _then)
      : super(_value, (v) => _then(v as _UpdateUser));

  @override
  _UpdateUser get _value => super._value as _UpdateUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_UpdateUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  $CustomerCopyWith<$Res> get user {
    return $CustomerCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$_UpdateUser implements _UpdateUser {
  const _$_UpdateUser(this.user);

  @override
  final Customer user;

  @override
  String toString() {
    return 'UserEvent.updateUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  _$UpdateUserCopyWith<_UpdateUser> get copyWith =>
      __$UpdateUserCopyWithImpl<_UpdateUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isAnon) signInUser,
    required TResult Function(String id) convertAnonymousUser,
    required TResult Function() signOutUser,
    required TResult Function(String userId) getUser,
    required TResult Function(Customer user) saveUser,
    required TResult Function(Customer user) updateUser,
  }) {
    return updateUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
  }) {
    return updateUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isAnon)? signInUser,
    TResult Function(String id)? convertAnonymousUser,
    TResult Function()? signOutUser,
    TResult Function(String userId)? getUser,
    TResult Function(Customer user)? saveUser,
    TResult Function(Customer user)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SignInUser value) signInUser,
    required TResult Function(_ConvertAnonymousUser value) convertAnonymousUser,
    required TResult Function(_SignOutUser value) signOutUser,
    required TResult Function(_GetUser value) getUser,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_UpdateUser value) updateUser,
  }) {
    return updateUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
  }) {
    return updateUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SignInUser value)? signInUser,
    TResult Function(_ConvertAnonymousUser value)? convertAnonymousUser,
    TResult Function(_SignOutUser value)? signOutUser,
    TResult Function(_GetUser value)? getUser,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_UpdateUser value)? updateUser,
    required TResult orElse(),
  }) {
    if (updateUser != null) {
      return updateUser(this);
    }
    return orElse();
  }
}

abstract class _UpdateUser implements UserEvent {
  const factory _UpdateUser(Customer user) = _$_UpdateUser;

  Customer get user;
  @JsonKey(ignore: true)
  _$UpdateUserCopyWith<_UpdateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserStateTearOff {
  const _$UserStateTearOff();

  ReadyState readyState() {
    return const ReadyState();
  }

  LoadingUser loadingUser() {
    return const LoadingUser();
  }

  LoadedUser loadedUser(Customer? user) {
    return LoadedUser(
      user,
    );
  }

  LoadingError loadingError(String msg) {
    return LoadingError(
      msg,
    );
  }
}

/// @nodoc
const $UserState = _$UserStateTearOff();

/// @nodoc
mixin _$UserState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readyState,
    required TResult Function() loadingUser,
    required TResult Function(Customer? user) loadedUser,
    required TResult Function(String msg) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) readyState,
    required TResult Function(LoadingUser value) loadingUser,
    required TResult Function(LoadedUser value) loadedUser,
    required TResult Function(LoadingError value) loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res> implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  final UserState _value;
  // ignore: unused_field
  final $Res Function(UserState) _then;
}

/// @nodoc
abstract class $ReadyStateCopyWith<$Res> {
  factory $ReadyStateCopyWith(
          ReadyState value, $Res Function(ReadyState) then) =
      _$ReadyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReadyStateCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $ReadyStateCopyWith<$Res> {
  _$ReadyStateCopyWithImpl(ReadyState _value, $Res Function(ReadyState) _then)
      : super(_value, (v) => _then(v as ReadyState));

  @override
  ReadyState get _value => super._value as ReadyState;
}

/// @nodoc

class _$ReadyState implements ReadyState {
  const _$ReadyState();

  @override
  String toString() {
    return 'UserState.readyState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ReadyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readyState,
    required TResult Function() loadingUser,
    required TResult Function(Customer? user) loadedUser,
    required TResult Function(String msg) loadingError,
  }) {
    return readyState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
  }) {
    return readyState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
    required TResult orElse(),
  }) {
    if (readyState != null) {
      return readyState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) readyState,
    required TResult Function(LoadingUser value) loadingUser,
    required TResult Function(LoadedUser value) loadedUser,
    required TResult Function(LoadingError value) loadingError,
  }) {
    return readyState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
  }) {
    return readyState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (readyState != null) {
      return readyState(this);
    }
    return orElse();
  }
}

abstract class ReadyState implements UserState {
  const factory ReadyState() = _$ReadyState;
}

/// @nodoc
abstract class $LoadingUserCopyWith<$Res> {
  factory $LoadingUserCopyWith(
          LoadingUser value, $Res Function(LoadingUser) then) =
      _$LoadingUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $LoadingUserCopyWith<$Res> {
  _$LoadingUserCopyWithImpl(
      LoadingUser _value, $Res Function(LoadingUser) _then)
      : super(_value, (v) => _then(v as LoadingUser));

  @override
  LoadingUser get _value => super._value as LoadingUser;
}

/// @nodoc

class _$LoadingUser implements LoadingUser {
  const _$LoadingUser();

  @override
  String toString() {
    return 'UserState.loadingUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readyState,
    required TResult Function() loadingUser,
    required TResult Function(Customer? user) loadedUser,
    required TResult Function(String msg) loadingError,
  }) {
    return loadingUser();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
  }) {
    return loadingUser?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingUser != null) {
      return loadingUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) readyState,
    required TResult Function(LoadingUser value) loadingUser,
    required TResult Function(LoadedUser value) loadedUser,
    required TResult Function(LoadingError value) loadingError,
  }) {
    return loadingUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
  }) {
    return loadingUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingUser != null) {
      return loadingUser(this);
    }
    return orElse();
  }
}

abstract class LoadingUser implements UserState {
  const factory LoadingUser() = _$LoadingUser;
}

/// @nodoc
abstract class $LoadedUserCopyWith<$Res> {
  factory $LoadedUserCopyWith(
          LoadedUser value, $Res Function(LoadedUser) then) =
      _$LoadedUserCopyWithImpl<$Res>;
  $Res call({Customer? user});

  $CustomerCopyWith<$Res>? get user;
}

/// @nodoc
class _$LoadedUserCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $LoadedUserCopyWith<$Res> {
  _$LoadedUserCopyWithImpl(LoadedUser _value, $Res Function(LoadedUser) _then)
      : super(_value, (v) => _then(v as LoadedUser));

  @override
  LoadedUser get _value => super._value as LoadedUser;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(LoadedUser(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as Customer?,
    ));
  }

  @override
  $CustomerCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $CustomerCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$LoadedUser implements LoadedUser {
  const _$LoadedUser(this.user);

  @override
  final Customer? user;

  @override
  String toString() {
    return 'UserState.loadedUser(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  $LoadedUserCopyWith<LoadedUser> get copyWith =>
      _$LoadedUserCopyWithImpl<LoadedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readyState,
    required TResult Function() loadingUser,
    required TResult Function(Customer? user) loadedUser,
    required TResult Function(String msg) loadingError,
  }) {
    return loadedUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
  }) {
    return loadedUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
    required TResult orElse(),
  }) {
    if (loadedUser != null) {
      return loadedUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) readyState,
    required TResult Function(LoadingUser value) loadingUser,
    required TResult Function(LoadedUser value) loadedUser,
    required TResult Function(LoadingError value) loadingError,
  }) {
    return loadedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
  }) {
    return loadedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadedUser != null) {
      return loadedUser(this);
    }
    return orElse();
  }
}

abstract class LoadedUser implements UserState {
  const factory LoadedUser(Customer? user) = _$LoadedUser;

  Customer? get user;
  @JsonKey(ignore: true)
  $LoadedUserCopyWith<LoadedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingErrorCopyWith<$Res> {
  factory $LoadingErrorCopyWith(
          LoadingError value, $Res Function(LoadingError) then) =
      _$LoadingErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$LoadingErrorCopyWithImpl<$Res> extends _$UserStateCopyWithImpl<$Res>
    implements $LoadingErrorCopyWith<$Res> {
  _$LoadingErrorCopyWithImpl(
      LoadingError _value, $Res Function(LoadingError) _then)
      : super(_value, (v) => _then(v as LoadingError));

  @override
  LoadingError get _value => super._value as LoadingError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(LoadingError(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingError implements LoadingError {
  const _$LoadingError(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'UserState.loadingError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadingError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  $LoadingErrorCopyWith<LoadingError> get copyWith =>
      _$LoadingErrorCopyWithImpl<LoadingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() readyState,
    required TResult Function() loadingUser,
    required TResult Function(Customer? user) loadedUser,
    required TResult Function(String msg) loadingError,
  }) {
    return loadingError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
  }) {
    return loadingError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? readyState,
    TResult Function()? loadingUser,
    TResult Function(Customer? user)? loadedUser,
    TResult Function(String msg)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadyState value) readyState,
    required TResult Function(LoadingUser value) loadingUser,
    required TResult Function(LoadedUser value) loadedUser,
    required TResult Function(LoadingError value) loadingError,
  }) {
    return loadingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
  }) {
    return loadingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadyState value)? readyState,
    TResult Function(LoadingUser value)? loadingUser,
    TResult Function(LoadedUser value)? loadedUser,
    TResult Function(LoadingError value)? loadingError,
    required TResult orElse(),
  }) {
    if (loadingError != null) {
      return loadingError(this);
    }
    return orElse();
  }
}

abstract class LoadingError implements UserState {
  const factory LoadingError(String msg) = _$LoadingError;

  String get msg;
  @JsonKey(ignore: true)
  $LoadingErrorCopyWith<LoadingError> get copyWith =>
      throw _privateConstructorUsedError;
}
