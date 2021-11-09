// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cached_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CachedEventTearOff {
  const _$CachedEventTearOff();

  Started started() {
    return const Started();
  }

  LoadFromLocal loadFromLocal() {
    return const LoadFromLocal();
  }
}

/// @nodoc
const $CachedEvent = _$CachedEventTearOff();

/// @nodoc
mixin _$CachedEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFromLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFromLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFromLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFromLocal value) loadFromLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFromLocal value)? loadFromLocal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFromLocal value)? loadFromLocal,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedEventCopyWith<$Res> {
  factory $CachedEventCopyWith(
          CachedEvent value, $Res Function(CachedEvent) then) =
      _$CachedEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CachedEventCopyWithImpl<$Res> implements $CachedEventCopyWith<$Res> {
  _$CachedEventCopyWithImpl(this._value, this._then);

  final CachedEvent _value;
  // ignore: unused_field
  final $Res Function(CachedEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$CachedEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'CachedEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFromLocal,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFromLocal,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFromLocal,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFromLocal value) loadFromLocal,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFromLocal value)? loadFromLocal,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFromLocal value)? loadFromLocal,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements CachedEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $LoadFromLocalCopyWith<$Res> {
  factory $LoadFromLocalCopyWith(
          LoadFromLocal value, $Res Function(LoadFromLocal) then) =
      _$LoadFromLocalCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadFromLocalCopyWithImpl<$Res> extends _$CachedEventCopyWithImpl<$Res>
    implements $LoadFromLocalCopyWith<$Res> {
  _$LoadFromLocalCopyWithImpl(
      LoadFromLocal _value, $Res Function(LoadFromLocal) _then)
      : super(_value, (v) => _then(v as LoadFromLocal));

  @override
  LoadFromLocal get _value => super._value as LoadFromLocal;
}

/// @nodoc

class _$LoadFromLocal implements LoadFromLocal {
  const _$LoadFromLocal();

  @override
  String toString() {
    return 'CachedEvent.loadFromLocal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadFromLocal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() loadFromLocal,
  }) {
    return loadFromLocal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFromLocal,
  }) {
    return loadFromLocal?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? loadFromLocal,
    required TResult orElse(),
  }) {
    if (loadFromLocal != null) {
      return loadFromLocal();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(LoadFromLocal value) loadFromLocal,
  }) {
    return loadFromLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFromLocal value)? loadFromLocal,
  }) {
    return loadFromLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(LoadFromLocal value)? loadFromLocal,
    required TResult orElse(),
  }) {
    if (loadFromLocal != null) {
      return loadFromLocal(this);
    }
    return orElse();
  }
}

abstract class LoadFromLocal implements CachedEvent {
  const factory LoadFromLocal() = _$LoadFromLocal;
}

/// @nodoc
class _$CachedStateTearOff {
  const _$CachedStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _UserLoaded userLoaded(Customer customer) {
    return _UserLoaded(
      customer,
    );
  }

  _NoUserFound noUserFound() {
    return const _NoUserFound();
  }

  _LocalCacheError localCacheError() {
    return const _LocalCacheError();
  }
}

/// @nodoc
const $CachedState = _$CachedStateTearOff();

/// @nodoc
mixin _$CachedState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Customer customer) userLoaded,
    required TResult Function() noUserFound,
    required TResult Function() localCacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_NoUserFound value) noUserFound,
    required TResult Function(_LocalCacheError value) localCacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedStateCopyWith<$Res> {
  factory $CachedStateCopyWith(
          CachedState value, $Res Function(CachedState) then) =
      _$CachedStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CachedStateCopyWithImpl<$Res> implements $CachedStateCopyWith<$Res> {
  _$CachedStateCopyWithImpl(this._value, this._then);

  final CachedState _value;
  // ignore: unused_field
  final $Res Function(CachedState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$CachedStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CachedState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Customer customer) userLoaded,
    required TResult Function() noUserFound,
    required TResult Function() localCacheError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_NoUserFound value) noUserFound,
    required TResult Function(_LocalCacheError value) localCacheError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CachedState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$UserLoadedCopyWith<$Res> {
  factory _$UserLoadedCopyWith(
          _UserLoaded value, $Res Function(_UserLoaded) then) =
      __$UserLoadedCopyWithImpl<$Res>;
  $Res call({Customer customer});

  $CustomerCopyWith<$Res> get customer;
}

/// @nodoc
class __$UserLoadedCopyWithImpl<$Res> extends _$CachedStateCopyWithImpl<$Res>
    implements _$UserLoadedCopyWith<$Res> {
  __$UserLoadedCopyWithImpl(
      _UserLoaded _value, $Res Function(_UserLoaded) _then)
      : super(_value, (v) => _then(v as _UserLoaded));

  @override
  _UserLoaded get _value => super._value as _UserLoaded;

  @override
  $Res call({
    Object? customer = freezed,
  }) {
    return _then(_UserLoaded(
      customer == freezed
          ? _value.customer
          : customer // ignore: cast_nullable_to_non_nullable
              as Customer,
    ));
  }

  @override
  $CustomerCopyWith<$Res> get customer {
    return $CustomerCopyWith<$Res>(_value.customer, (value) {
      return _then(_value.copyWith(customer: value));
    });
  }
}

/// @nodoc

class _$_UserLoaded implements _UserLoaded {
  const _$_UserLoaded(this.customer);

  @override
  final Customer customer;

  @override
  String toString() {
    return 'CachedState.userLoaded(customer: $customer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserLoaded &&
            (identical(other.customer, customer) ||
                other.customer == customer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customer);

  @JsonKey(ignore: true)
  @override
  _$UserLoadedCopyWith<_UserLoaded> get copyWith =>
      __$UserLoadedCopyWithImpl<_UserLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Customer customer) userLoaded,
    required TResult Function() noUserFound,
    required TResult Function() localCacheError,
  }) {
    return userLoaded(customer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
  }) {
    return userLoaded?.call(customer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(customer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_NoUserFound value) noUserFound,
    required TResult Function(_LocalCacheError value) localCacheError,
  }) {
    return userLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
  }) {
    return userLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
    required TResult orElse(),
  }) {
    if (userLoaded != null) {
      return userLoaded(this);
    }
    return orElse();
  }
}

abstract class _UserLoaded implements CachedState {
  const factory _UserLoaded(Customer customer) = _$_UserLoaded;

  Customer get customer;
  @JsonKey(ignore: true)
  _$UserLoadedCopyWith<_UserLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$NoUserFoundCopyWith<$Res> {
  factory _$NoUserFoundCopyWith(
          _NoUserFound value, $Res Function(_NoUserFound) then) =
      __$NoUserFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$NoUserFoundCopyWithImpl<$Res> extends _$CachedStateCopyWithImpl<$Res>
    implements _$NoUserFoundCopyWith<$Res> {
  __$NoUserFoundCopyWithImpl(
      _NoUserFound _value, $Res Function(_NoUserFound) _then)
      : super(_value, (v) => _then(v as _NoUserFound));

  @override
  _NoUserFound get _value => super._value as _NoUserFound;
}

/// @nodoc

class _$_NoUserFound implements _NoUserFound {
  const _$_NoUserFound();

  @override
  String toString() {
    return 'CachedState.noUserFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _NoUserFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Customer customer) userLoaded,
    required TResult Function() noUserFound,
    required TResult Function() localCacheError,
  }) {
    return noUserFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
  }) {
    return noUserFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_NoUserFound value) noUserFound,
    required TResult Function(_LocalCacheError value) localCacheError,
  }) {
    return noUserFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
  }) {
    return noUserFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
    required TResult orElse(),
  }) {
    if (noUserFound != null) {
      return noUserFound(this);
    }
    return orElse();
  }
}

abstract class _NoUserFound implements CachedState {
  const factory _NoUserFound() = _$_NoUserFound;
}

/// @nodoc
abstract class _$LocalCacheErrorCopyWith<$Res> {
  factory _$LocalCacheErrorCopyWith(
          _LocalCacheError value, $Res Function(_LocalCacheError) then) =
      __$LocalCacheErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$LocalCacheErrorCopyWithImpl<$Res>
    extends _$CachedStateCopyWithImpl<$Res>
    implements _$LocalCacheErrorCopyWith<$Res> {
  __$LocalCacheErrorCopyWithImpl(
      _LocalCacheError _value, $Res Function(_LocalCacheError) _then)
      : super(_value, (v) => _then(v as _LocalCacheError));

  @override
  _LocalCacheError get _value => super._value as _LocalCacheError;
}

/// @nodoc

class _$_LocalCacheError implements _LocalCacheError {
  const _$_LocalCacheError();

  @override
  String toString() {
    return 'CachedState.localCacheError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LocalCacheError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Customer customer) userLoaded,
    required TResult Function() noUserFound,
    required TResult Function() localCacheError,
  }) {
    return localCacheError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
  }) {
    return localCacheError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Customer customer)? userLoaded,
    TResult Function()? noUserFound,
    TResult Function()? localCacheError,
    required TResult orElse(),
  }) {
    if (localCacheError != null) {
      return localCacheError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_UserLoaded value) userLoaded,
    required TResult Function(_NoUserFound value) noUserFound,
    required TResult Function(_LocalCacheError value) localCacheError,
  }) {
    return localCacheError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
  }) {
    return localCacheError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_UserLoaded value)? userLoaded,
    TResult Function(_NoUserFound value)? noUserFound,
    TResult Function(_LocalCacheError value)? localCacheError,
    required TResult orElse(),
  }) {
    if (localCacheError != null) {
      return localCacheError(this);
    }
    return orElse();
  }
}

abstract class _LocalCacheError implements CachedState {
  const factory _LocalCacheError() = _$_LocalCacheError;
}
