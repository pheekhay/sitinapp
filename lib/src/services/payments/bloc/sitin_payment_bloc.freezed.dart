// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sitin_payment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SitinPaymentEventTearOff {
  const _$SitinPaymentEventTearOff();

  InitiatePayment initiatePayment(
      {required Reservation reservation, required BuildContext context}) {
    return InitiatePayment(
      reservation: reservation,
      context: context,
    );
  }
}

/// @nodoc
const $SitinPaymentEvent = _$SitinPaymentEventTearOff();

/// @nodoc
mixin _$SitinPaymentEvent {
  Reservation get reservation => throw _privateConstructorUsedError;
  BuildContext get context => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation, BuildContext context)
        initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Reservation reservation, BuildContext context)?
        initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation, BuildContext context)?
        initiatePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitiatePayment value) initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitiatePayment value)? initiatePayment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitiatePayment value)? initiatePayment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SitinPaymentEventCopyWith<SitinPaymentEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitinPaymentEventCopyWith<$Res> {
  factory $SitinPaymentEventCopyWith(
          SitinPaymentEvent value, $Res Function(SitinPaymentEvent) then) =
      _$SitinPaymentEventCopyWithImpl<$Res>;
  $Res call({Reservation reservation, BuildContext context});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class _$SitinPaymentEventCopyWithImpl<$Res>
    implements $SitinPaymentEventCopyWith<$Res> {
  _$SitinPaymentEventCopyWithImpl(this._value, this._then);

  final SitinPaymentEvent _value;
  // ignore: unused_field
  final $Res Function(SitinPaymentEvent) _then;

  @override
  $Res call({
    Object? reservation = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }

  @override
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc
abstract class $InitiatePaymentCopyWith<$Res>
    implements $SitinPaymentEventCopyWith<$Res> {
  factory $InitiatePaymentCopyWith(
          InitiatePayment value, $Res Function(InitiatePayment) then) =
      _$InitiatePaymentCopyWithImpl<$Res>;
  @override
  $Res call({Reservation reservation, BuildContext context});

  @override
  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class _$InitiatePaymentCopyWithImpl<$Res>
    extends _$SitinPaymentEventCopyWithImpl<$Res>
    implements $InitiatePaymentCopyWith<$Res> {
  _$InitiatePaymentCopyWithImpl(
      InitiatePayment _value, $Res Function(InitiatePayment) _then)
      : super(_value, (v) => _then(v as InitiatePayment));

  @override
  InitiatePayment get _value => super._value as InitiatePayment;

  @override
  $Res call({
    Object? reservation = freezed,
    Object? context = freezed,
  }) {
    return _then(InitiatePayment(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$InitiatePayment implements InitiatePayment {
  const _$InitiatePayment({required this.reservation, required this.context});

  @override
  final Reservation reservation;
  @override
  final BuildContext context;

  @override
  String toString() {
    return 'SitinPaymentEvent.initiatePayment(reservation: $reservation, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is InitiatePayment &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation) &&
            (identical(other.context, context) || other.context == context));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation, context);

  @JsonKey(ignore: true)
  @override
  $InitiatePaymentCopyWith<InitiatePayment> get copyWith =>
      _$InitiatePaymentCopyWithImpl<InitiatePayment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Reservation reservation, BuildContext context)
        initiatePayment,
  }) {
    return initiatePayment(reservation, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Reservation reservation, BuildContext context)?
        initiatePayment,
  }) {
    return initiatePayment?.call(reservation, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Reservation reservation, BuildContext context)?
        initiatePayment,
    required TResult orElse(),
  }) {
    if (initiatePayment != null) {
      return initiatePayment(reservation, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitiatePayment value) initiatePayment,
  }) {
    return initiatePayment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitiatePayment value)? initiatePayment,
  }) {
    return initiatePayment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitiatePayment value)? initiatePayment,
    required TResult orElse(),
  }) {
    if (initiatePayment != null) {
      return initiatePayment(this);
    }
    return orElse();
  }
}

abstract class InitiatePayment implements SitinPaymentEvent {
  const factory InitiatePayment(
      {required Reservation reservation,
      required BuildContext context}) = _$InitiatePayment;

  @override
  Reservation get reservation;
  @override
  BuildContext get context;
  @override
  @JsonKey(ignore: true)
  $InitiatePaymentCopyWith<InitiatePayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SitinPaymentStateTearOff {
  const _$SitinPaymentStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Started started() {
    return const _Started();
  }

  _Completed completed(Reservation reservation) {
    return _Completed(
      reservation,
    );
  }

  _Failed failed() {
    return const _Failed();
  }

  _Cancelled cancelled() {
    return const _Cancelled();
  }

  _PaymentError paymentError() {
    return const _PaymentError();
  }
}

/// @nodoc
const $SitinPaymentState = _$SitinPaymentStateTearOff();

/// @nodoc
mixin _$SitinPaymentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitinPaymentStateCopyWith<$Res> {
  factory $SitinPaymentStateCopyWith(
          SitinPaymentState value, $Res Function(SitinPaymentState) then) =
      _$SitinPaymentStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SitinPaymentStateCopyWithImpl<$Res>
    implements $SitinPaymentStateCopyWith<$Res> {
  _$SitinPaymentStateCopyWithImpl(this._value, this._then);

  final SitinPaymentState _value;
  // ignore: unused_field
  final $Res Function(SitinPaymentState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$SitinPaymentStateCopyWithImpl<$Res>
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
    return 'SitinPaymentState.initial()';
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
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
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
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SitinPaymentState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$SitinPaymentStateCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'SitinPaymentState.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SitinPaymentState {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$CompletedCopyWith<$Res> {
  factory _$CompletedCopyWith(
          _Completed value, $Res Function(_Completed) then) =
      __$CompletedCopyWithImpl<$Res>;
  $Res call({Reservation reservation});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class __$CompletedCopyWithImpl<$Res>
    extends _$SitinPaymentStateCopyWithImpl<$Res>
    implements _$CompletedCopyWith<$Res> {
  __$CompletedCopyWithImpl(_Completed _value, $Res Function(_Completed) _then)
      : super(_value, (v) => _then(v as _Completed));

  @override
  _Completed get _value => super._value as _Completed;

  @override
  $Res call({
    Object? reservation = freezed,
  }) {
    return _then(_Completed(
      reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as Reservation,
    ));
  }

  @override
  $ReservationCopyWith<$Res> get reservation {
    return $ReservationCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc

class _$_Completed implements _Completed {
  const _$_Completed(this.reservation);

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'SitinPaymentState.completed(reservation: $reservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Completed &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  _$CompletedCopyWith<_Completed> get copyWith =>
      __$CompletedCopyWithImpl<_Completed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) {
    return completed(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) {
    return completed?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements SitinPaymentState {
  const factory _Completed(Reservation reservation) = _$_Completed;

  Reservation get reservation;
  @JsonKey(ignore: true)
  _$CompletedCopyWith<_Completed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$FailedCopyWith<$Res> {
  factory _$FailedCopyWith(_Failed value, $Res Function(_Failed) then) =
      __$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class __$FailedCopyWithImpl<$Res> extends _$SitinPaymentStateCopyWithImpl<$Res>
    implements _$FailedCopyWith<$Res> {
  __$FailedCopyWithImpl(_Failed _value, $Res Function(_Failed) _then)
      : super(_value, (v) => _then(v as _Failed));

  @override
  _Failed get _value => super._value as _Failed;
}

/// @nodoc

class _$_Failed implements _Failed {
  const _$_Failed();

  @override
  String toString() {
    return 'SitinPaymentState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) {
    return failed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements SitinPaymentState {
  const factory _Failed() = _$_Failed;
}

/// @nodoc
abstract class _$CancelledCopyWith<$Res> {
  factory _$CancelledCopyWith(
          _Cancelled value, $Res Function(_Cancelled) then) =
      __$CancelledCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelledCopyWithImpl<$Res>
    extends _$SitinPaymentStateCopyWithImpl<$Res>
    implements _$CancelledCopyWith<$Res> {
  __$CancelledCopyWithImpl(_Cancelled _value, $Res Function(_Cancelled) _then)
      : super(_value, (v) => _then(v as _Cancelled));

  @override
  _Cancelled get _value => super._value as _Cancelled;
}

/// @nodoc

class _$_Cancelled implements _Cancelled {
  const _$_Cancelled();

  @override
  String toString() {
    return 'SitinPaymentState.cancelled()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Cancelled);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) {
    return cancelled();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) {
    return cancelled?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) {
    return cancelled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) {
    return cancelled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (cancelled != null) {
      return cancelled(this);
    }
    return orElse();
  }
}

abstract class _Cancelled implements SitinPaymentState {
  const factory _Cancelled() = _$_Cancelled;
}

/// @nodoc
abstract class _$PaymentErrorCopyWith<$Res> {
  factory _$PaymentErrorCopyWith(
          _PaymentError value, $Res Function(_PaymentError) then) =
      __$PaymentErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$PaymentErrorCopyWithImpl<$Res>
    extends _$SitinPaymentStateCopyWithImpl<$Res>
    implements _$PaymentErrorCopyWith<$Res> {
  __$PaymentErrorCopyWithImpl(
      _PaymentError _value, $Res Function(_PaymentError) _then)
      : super(_value, (v) => _then(v as _PaymentError));

  @override
  _PaymentError get _value => super._value as _PaymentError;
}

/// @nodoc

class _$_PaymentError implements _PaymentError {
  const _$_PaymentError();

  @override
  String toString() {
    return 'SitinPaymentState.paymentError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _PaymentError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() started,
    required TResult Function(Reservation reservation) completed,
    required TResult Function() failed,
    required TResult Function() cancelled,
    required TResult Function() paymentError,
  }) {
    return paymentError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
  }) {
    return paymentError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? started,
    TResult Function(Reservation reservation)? completed,
    TResult Function()? failed,
    TResult Function()? cancelled,
    TResult Function()? paymentError,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Started value) started,
    required TResult Function(_Completed value) completed,
    required TResult Function(_Failed value) failed,
    required TResult Function(_Cancelled value) cancelled,
    required TResult Function(_PaymentError value) paymentError,
  }) {
    return paymentError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
  }) {
    return paymentError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Started value)? started,
    TResult Function(_Completed value)? completed,
    TResult Function(_Failed value)? failed,
    TResult Function(_Cancelled value)? cancelled,
    TResult Function(_PaymentError value)? paymentError,
    required TResult orElse(),
  }) {
    if (paymentError != null) {
      return paymentError(this);
    }
    return orElse();
  }
}

abstract class _PaymentError implements SitinPaymentState {
  const factory _PaymentError() = _$_PaymentError;
}
