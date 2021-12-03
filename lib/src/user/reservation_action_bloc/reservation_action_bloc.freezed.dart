// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reservation_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReservationActionEventTearOff {
  const _$ReservationActionEventTearOff();

  _StreamReservations streamReservations(String customerId) {
    return _StreamReservations(
      customerId,
    );
  }

  _LoadedReservationList loadedReservationList(
      List<Reservation>? reservations) {
    return _LoadedReservationList(
      reservations,
    );
  }

  _Arrived arrived(String id) {
    return _Arrived(
      id,
    );
  }

  _Done done(String id) {
    return _Done(
      id,
    );
  }
}

/// @nodoc
const $ReservationActionEvent = _$ReservationActionEventTearOff();

/// @nodoc
mixin _$ReservationActionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) streamReservations,
    required TResult Function(List<Reservation>? reservations)
        loadedReservationList,
    required TResult Function(String id) arrived,
    required TResult Function(String id) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StreamReservations value) streamReservations,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_Arrived value) arrived,
    required TResult Function(_Done value) done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationActionEventCopyWith<$Res> {
  factory $ReservationActionEventCopyWith(ReservationActionEvent value,
          $Res Function(ReservationActionEvent) then) =
      _$ReservationActionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReservationActionEventCopyWithImpl<$Res>
    implements $ReservationActionEventCopyWith<$Res> {
  _$ReservationActionEventCopyWithImpl(this._value, this._then);

  final ReservationActionEvent _value;
  // ignore: unused_field
  final $Res Function(ReservationActionEvent) _then;
}

/// @nodoc
abstract class _$StreamReservationsCopyWith<$Res> {
  factory _$StreamReservationsCopyWith(
          _StreamReservations value, $Res Function(_StreamReservations) then) =
      __$StreamReservationsCopyWithImpl<$Res>;
  $Res call({String customerId});
}

/// @nodoc
class __$StreamReservationsCopyWithImpl<$Res>
    extends _$ReservationActionEventCopyWithImpl<$Res>
    implements _$StreamReservationsCopyWith<$Res> {
  __$StreamReservationsCopyWithImpl(
      _StreamReservations _value, $Res Function(_StreamReservations) _then)
      : super(_value, (v) => _then(v as _StreamReservations));

  @override
  _StreamReservations get _value => super._value as _StreamReservations;

  @override
  $Res call({
    Object? customerId = freezed,
  }) {
    return _then(_StreamReservations(
      customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StreamReservations implements _StreamReservations {
  const _$_StreamReservations(this.customerId);

  @override
  final String customerId;

  @override
  String toString() {
    return 'ReservationActionEvent.streamReservations(customerId: $customerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _StreamReservations &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, customerId);

  @JsonKey(ignore: true)
  @override
  _$StreamReservationsCopyWith<_StreamReservations> get copyWith =>
      __$StreamReservationsCopyWithImpl<_StreamReservations>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) streamReservations,
    required TResult Function(List<Reservation>? reservations)
        loadedReservationList,
    required TResult Function(String id) arrived,
    required TResult Function(String id) done,
  }) {
    return streamReservations(customerId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
  }) {
    return streamReservations?.call(customerId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
    required TResult orElse(),
  }) {
    if (streamReservations != null) {
      return streamReservations(customerId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StreamReservations value) streamReservations,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_Arrived value) arrived,
    required TResult Function(_Done value) done,
  }) {
    return streamReservations(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
  }) {
    return streamReservations?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (streamReservations != null) {
      return streamReservations(this);
    }
    return orElse();
  }
}

abstract class _StreamReservations implements ReservationActionEvent {
  const factory _StreamReservations(String customerId) = _$_StreamReservations;

  String get customerId;
  @JsonKey(ignore: true)
  _$StreamReservationsCopyWith<_StreamReservations> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedReservationListCopyWith<$Res> {
  factory _$LoadedReservationListCopyWith(_LoadedReservationList value,
          $Res Function(_LoadedReservationList) then) =
      __$LoadedReservationListCopyWithImpl<$Res>;
  $Res call({List<Reservation>? reservations});
}

/// @nodoc
class __$LoadedReservationListCopyWithImpl<$Res>
    extends _$ReservationActionEventCopyWithImpl<$Res>
    implements _$LoadedReservationListCopyWith<$Res> {
  __$LoadedReservationListCopyWithImpl(_LoadedReservationList _value,
      $Res Function(_LoadedReservationList) _then)
      : super(_value, (v) => _then(v as _LoadedReservationList));

  @override
  _LoadedReservationList get _value => super._value as _LoadedReservationList;

  @override
  $Res call({
    Object? reservations = freezed,
  }) {
    return _then(_LoadedReservationList(
      reservations == freezed
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>?,
    ));
  }
}

/// @nodoc

class _$_LoadedReservationList implements _LoadedReservationList {
  const _$_LoadedReservationList(this.reservations);

  @override
  final List<Reservation>? reservations;

  @override
  String toString() {
    return 'ReservationActionEvent.loadedReservationList(reservations: $reservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedReservationList &&
            const DeepCollectionEquality()
                .equals(other.reservations, reservations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reservations));

  @JsonKey(ignore: true)
  @override
  _$LoadedReservationListCopyWith<_LoadedReservationList> get copyWith =>
      __$LoadedReservationListCopyWithImpl<_LoadedReservationList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) streamReservations,
    required TResult Function(List<Reservation>? reservations)
        loadedReservationList,
    required TResult Function(String id) arrived,
    required TResult Function(String id) done,
  }) {
    return loadedReservationList(reservations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
  }) {
    return loadedReservationList?.call(reservations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
    required TResult orElse(),
  }) {
    if (loadedReservationList != null) {
      return loadedReservationList(reservations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StreamReservations value) streamReservations,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_Arrived value) arrived,
    required TResult Function(_Done value) done,
  }) {
    return loadedReservationList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
  }) {
    return loadedReservationList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (loadedReservationList != null) {
      return loadedReservationList(this);
    }
    return orElse();
  }
}

abstract class _LoadedReservationList implements ReservationActionEvent {
  const factory _LoadedReservationList(List<Reservation>? reservations) =
      _$_LoadedReservationList;

  List<Reservation>? get reservations;
  @JsonKey(ignore: true)
  _$LoadedReservationListCopyWith<_LoadedReservationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ArrivedCopyWith<$Res> {
  factory _$ArrivedCopyWith(_Arrived value, $Res Function(_Arrived) then) =
      __$ArrivedCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$ArrivedCopyWithImpl<$Res>
    extends _$ReservationActionEventCopyWithImpl<$Res>
    implements _$ArrivedCopyWith<$Res> {
  __$ArrivedCopyWithImpl(_Arrived _value, $Res Function(_Arrived) _then)
      : super(_value, (v) => _then(v as _Arrived));

  @override
  _Arrived get _value => super._value as _Arrived;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Arrived(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Arrived implements _Arrived {
  const _$_Arrived(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReservationActionEvent.arrived(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Arrived &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$ArrivedCopyWith<_Arrived> get copyWith =>
      __$ArrivedCopyWithImpl<_Arrived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) streamReservations,
    required TResult Function(List<Reservation>? reservations)
        loadedReservationList,
    required TResult Function(String id) arrived,
    required TResult Function(String id) done,
  }) {
    return arrived(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
  }) {
    return arrived?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
    required TResult orElse(),
  }) {
    if (arrived != null) {
      return arrived(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StreamReservations value) streamReservations,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_Arrived value) arrived,
    required TResult Function(_Done value) done,
  }) {
    return arrived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
  }) {
    return arrived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (arrived != null) {
      return arrived(this);
    }
    return orElse();
  }
}

abstract class _Arrived implements ReservationActionEvent {
  const factory _Arrived(String id) = _$_Arrived;

  String get id;
  @JsonKey(ignore: true)
  _$ArrivedCopyWith<_Arrived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DoneCopyWith<$Res> {
  factory _$DoneCopyWith(_Done value, $Res Function(_Done) then) =
      __$DoneCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class __$DoneCopyWithImpl<$Res>
    extends _$ReservationActionEventCopyWithImpl<$Res>
    implements _$DoneCopyWith<$Res> {
  __$DoneCopyWithImpl(_Done _value, $Res Function(_Done) _then)
      : super(_value, (v) => _then(v as _Done));

  @override
  _Done get _value => super._value as _Done;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_Done(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Done implements _Done {
  const _$_Done(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReservationActionEvent.done(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Done &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  _$DoneCopyWith<_Done> get copyWith =>
      __$DoneCopyWithImpl<_Done>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String customerId) streamReservations,
    required TResult Function(List<Reservation>? reservations)
        loadedReservationList,
    required TResult Function(String id) arrived,
    required TResult Function(String id) done,
  }) {
    return done(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
  }) {
    return done?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String customerId)? streamReservations,
    TResult Function(List<Reservation>? reservations)? loadedReservationList,
    TResult Function(String id)? arrived,
    TResult Function(String id)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StreamReservations value) streamReservations,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_Arrived value) arrived,
    required TResult Function(_Done value) done,
  }) {
    return done(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
  }) {
    return done?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StreamReservations value)? streamReservations,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_Arrived value)? arrived,
    TResult Function(_Done value)? done,
    required TResult orElse(),
  }) {
    if (done != null) {
      return done(this);
    }
    return orElse();
  }
}

abstract class _Done implements ReservationActionEvent {
  const factory _Done(String id) = _$_Done;

  String get id;
  @JsonKey(ignore: true)
  _$DoneCopyWith<_Done> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReservationActionStateTearOff {
  const _$ReservationActionStateTearOff();

  Initial initial() {
    return const Initial();
  }

  LoadedReservation loadedReservation(List<Reservation>? reservations) {
    return LoadedReservation(
      reservations,
    );
  }

  LoadingReservation loadingReservation() {
    return const LoadingReservation();
  }

  DoneAction doneAction() {
    return const DoneAction();
  }

  ReservationActionError reservationActionError(String msg) {
    return ReservationActionError(
      msg,
    );
  }
}

/// @nodoc
const $ReservationActionState = _$ReservationActionStateTearOff();

/// @nodoc
mixin _$ReservationActionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Reservation>? reservations)
        loadedReservation,
    required TResult Function() loadingReservation,
    required TResult Function() doneAction,
    required TResult Function(String msg) reservationActionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedReservation value) loadedReservation,
    required TResult Function(LoadingReservation value) loadingReservation,
    required TResult Function(DoneAction value) doneAction,
    required TResult Function(ReservationActionError value)
        reservationActionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationActionStateCopyWith<$Res> {
  factory $ReservationActionStateCopyWith(ReservationActionState value,
          $Res Function(ReservationActionState) then) =
      _$ReservationActionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReservationActionStateCopyWithImpl<$Res>
    implements $ReservationActionStateCopyWith<$Res> {
  _$ReservationActionStateCopyWithImpl(this._value, this._then);

  final ReservationActionState _value;
  // ignore: unused_field
  final $Res Function(ReservationActionState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$ReservationActionStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ReservationActionState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Reservation>? reservations)
        loadedReservation,
    required TResult Function() loadingReservation,
    required TResult Function() doneAction,
    required TResult Function(String msg) reservationActionError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
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
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedReservation value) loadedReservation,
    required TResult Function(LoadingReservation value) loadingReservation,
    required TResult Function(DoneAction value) doneAction,
    required TResult Function(ReservationActionError value)
        reservationActionError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ReservationActionState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $LoadedReservationCopyWith<$Res> {
  factory $LoadedReservationCopyWith(
          LoadedReservation value, $Res Function(LoadedReservation) then) =
      _$LoadedReservationCopyWithImpl<$Res>;
  $Res call({List<Reservation>? reservations});
}

/// @nodoc
class _$LoadedReservationCopyWithImpl<$Res>
    extends _$ReservationActionStateCopyWithImpl<$Res>
    implements $LoadedReservationCopyWith<$Res> {
  _$LoadedReservationCopyWithImpl(
      LoadedReservation _value, $Res Function(LoadedReservation) _then)
      : super(_value, (v) => _then(v as LoadedReservation));

  @override
  LoadedReservation get _value => super._value as LoadedReservation;

  @override
  $Res call({
    Object? reservations = freezed,
  }) {
    return _then(LoadedReservation(
      reservations == freezed
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>?,
    ));
  }
}

/// @nodoc

class _$LoadedReservation implements LoadedReservation {
  const _$LoadedReservation(this.reservations);

  @override
  final List<Reservation>? reservations;

  @override
  String toString() {
    return 'ReservationActionState.loadedReservation(reservations: $reservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LoadedReservation &&
            const DeepCollectionEquality()
                .equals(other.reservations, reservations));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(reservations));

  @JsonKey(ignore: true)
  @override
  $LoadedReservationCopyWith<LoadedReservation> get copyWith =>
      _$LoadedReservationCopyWithImpl<LoadedReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Reservation>? reservations)
        loadedReservation,
    required TResult Function() loadingReservation,
    required TResult Function() doneAction,
    required TResult Function(String msg) reservationActionError,
  }) {
    return loadedReservation(reservations);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
  }) {
    return loadedReservation?.call(reservations);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
    required TResult orElse(),
  }) {
    if (loadedReservation != null) {
      return loadedReservation(reservations);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedReservation value) loadedReservation,
    required TResult Function(LoadingReservation value) loadingReservation,
    required TResult Function(DoneAction value) doneAction,
    required TResult Function(ReservationActionError value)
        reservationActionError,
  }) {
    return loadedReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
  }) {
    return loadedReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
    required TResult orElse(),
  }) {
    if (loadedReservation != null) {
      return loadedReservation(this);
    }
    return orElse();
  }
}

abstract class LoadedReservation implements ReservationActionState {
  const factory LoadedReservation(List<Reservation>? reservations) =
      _$LoadedReservation;

  List<Reservation>? get reservations;
  @JsonKey(ignore: true)
  $LoadedReservationCopyWith<LoadedReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingReservationCopyWith<$Res> {
  factory $LoadingReservationCopyWith(
          LoadingReservation value, $Res Function(LoadingReservation) then) =
      _$LoadingReservationCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingReservationCopyWithImpl<$Res>
    extends _$ReservationActionStateCopyWithImpl<$Res>
    implements $LoadingReservationCopyWith<$Res> {
  _$LoadingReservationCopyWithImpl(
      LoadingReservation _value, $Res Function(LoadingReservation) _then)
      : super(_value, (v) => _then(v as LoadingReservation));

  @override
  LoadingReservation get _value => super._value as LoadingReservation;
}

/// @nodoc

class _$LoadingReservation implements LoadingReservation {
  const _$LoadingReservation();

  @override
  String toString() {
    return 'ReservationActionState.loadingReservation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is LoadingReservation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Reservation>? reservations)
        loadedReservation,
    required TResult Function() loadingReservation,
    required TResult Function() doneAction,
    required TResult Function(String msg) reservationActionError,
  }) {
    return loadingReservation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
  }) {
    return loadingReservation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
    required TResult orElse(),
  }) {
    if (loadingReservation != null) {
      return loadingReservation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedReservation value) loadedReservation,
    required TResult Function(LoadingReservation value) loadingReservation,
    required TResult Function(DoneAction value) doneAction,
    required TResult Function(ReservationActionError value)
        reservationActionError,
  }) {
    return loadingReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
  }) {
    return loadingReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
    required TResult orElse(),
  }) {
    if (loadingReservation != null) {
      return loadingReservation(this);
    }
    return orElse();
  }
}

abstract class LoadingReservation implements ReservationActionState {
  const factory LoadingReservation() = _$LoadingReservation;
}

/// @nodoc
abstract class $DoneActionCopyWith<$Res> {
  factory $DoneActionCopyWith(
          DoneAction value, $Res Function(DoneAction) then) =
      _$DoneActionCopyWithImpl<$Res>;
}

/// @nodoc
class _$DoneActionCopyWithImpl<$Res>
    extends _$ReservationActionStateCopyWithImpl<$Res>
    implements $DoneActionCopyWith<$Res> {
  _$DoneActionCopyWithImpl(DoneAction _value, $Res Function(DoneAction) _then)
      : super(_value, (v) => _then(v as DoneAction));

  @override
  DoneAction get _value => super._value as DoneAction;
}

/// @nodoc

class _$DoneAction implements DoneAction {
  const _$DoneAction();

  @override
  String toString() {
    return 'ReservationActionState.doneAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DoneAction);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Reservation>? reservations)
        loadedReservation,
    required TResult Function() loadingReservation,
    required TResult Function() doneAction,
    required TResult Function(String msg) reservationActionError,
  }) {
    return doneAction();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
  }) {
    return doneAction?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
    required TResult orElse(),
  }) {
    if (doneAction != null) {
      return doneAction();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedReservation value) loadedReservation,
    required TResult Function(LoadingReservation value) loadingReservation,
    required TResult Function(DoneAction value) doneAction,
    required TResult Function(ReservationActionError value)
        reservationActionError,
  }) {
    return doneAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
  }) {
    return doneAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
    required TResult orElse(),
  }) {
    if (doneAction != null) {
      return doneAction(this);
    }
    return orElse();
  }
}

abstract class DoneAction implements ReservationActionState {
  const factory DoneAction() = _$DoneAction;
}

/// @nodoc
abstract class $ReservationActionErrorCopyWith<$Res> {
  factory $ReservationActionErrorCopyWith(ReservationActionError value,
          $Res Function(ReservationActionError) then) =
      _$ReservationActionErrorCopyWithImpl<$Res>;
  $Res call({String msg});
}

/// @nodoc
class _$ReservationActionErrorCopyWithImpl<$Res>
    extends _$ReservationActionStateCopyWithImpl<$Res>
    implements $ReservationActionErrorCopyWith<$Res> {
  _$ReservationActionErrorCopyWithImpl(ReservationActionError _value,
      $Res Function(ReservationActionError) _then)
      : super(_value, (v) => _then(v as ReservationActionError));

  @override
  ReservationActionError get _value => super._value as ReservationActionError;

  @override
  $Res call({
    Object? msg = freezed,
  }) {
    return _then(ReservationActionError(
      msg == freezed
          ? _value.msg
          : msg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReservationActionError implements ReservationActionError {
  const _$ReservationActionError(this.msg);

  @override
  final String msg;

  @override
  String toString() {
    return 'ReservationActionState.reservationActionError(msg: $msg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReservationActionError &&
            (identical(other.msg, msg) || other.msg == msg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, msg);

  @JsonKey(ignore: true)
  @override
  $ReservationActionErrorCopyWith<ReservationActionError> get copyWith =>
      _$ReservationActionErrorCopyWithImpl<ReservationActionError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Reservation>? reservations)
        loadedReservation,
    required TResult Function() loadingReservation,
    required TResult Function() doneAction,
    required TResult Function(String msg) reservationActionError,
  }) {
    return reservationActionError(msg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
  }) {
    return reservationActionError?.call(msg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Reservation>? reservations)? loadedReservation,
    TResult Function()? loadingReservation,
    TResult Function()? doneAction,
    TResult Function(String msg)? reservationActionError,
    required TResult orElse(),
  }) {
    if (reservationActionError != null) {
      return reservationActionError(msg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadedReservation value) loadedReservation,
    required TResult Function(LoadingReservation value) loadingReservation,
    required TResult Function(DoneAction value) doneAction,
    required TResult Function(ReservationActionError value)
        reservationActionError,
  }) {
    return reservationActionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
  }) {
    return reservationActionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadedReservation value)? loadedReservation,
    TResult Function(LoadingReservation value)? loadingReservation,
    TResult Function(DoneAction value)? doneAction,
    TResult Function(ReservationActionError value)? reservationActionError,
    required TResult orElse(),
  }) {
    if (reservationActionError != null) {
      return reservationActionError(this);
    }
    return orElse();
  }
}

abstract class ReservationActionError implements ReservationActionState {
  const factory ReservationActionError(String msg) = _$ReservationActionError;

  String get msg;
  @JsonKey(ignore: true)
  $ReservationActionErrorCopyWith<ReservationActionError> get copyWith =>
      throw _privateConstructorUsedError;
}
