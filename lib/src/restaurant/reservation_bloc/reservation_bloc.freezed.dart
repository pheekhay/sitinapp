// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reservation_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReservationEventTearOff {
  const _$ReservationEventTearOff();

  GetRestaurants getRestaurants({double? latitude, double? longitude}) {
    return GetRestaurants(
      latitude: latitude,
      longitude: longitude,
    );
  }

  RateRestaurant rateRestaurants(
      {required double stars,
      required String customerId,
      required String customerName,
      required String restaurantId,
      required String comment}) {
    return RateRestaurant(
      stars: stars,
      customerId: customerId,
      customerName: customerName,
      restaurantId: restaurantId,
      comment: comment,
    );
  }

  UpdateTable updateTable(
      {required String restaurantId, required SitTable table}) {
    return UpdateTable(
      restaurantId: restaurantId,
      table: table,
    );
  }

  MakeReservation makeReservation({required Reservation reservation}) {
    return MakeReservation(
      reservation: reservation,
    );
  }

  GetReservation getReservation(String id) {
    return GetReservation(
      id,
    );
  }

  CancelReservation cancelReservation(
      {required String userId, required String reservationId}) {
    return CancelReservation(
      userId: userId,
      reservationId: reservationId,
    );
  }
}

/// @nodoc
const $ReservationEvent = _$ReservationEventTearOff();

/// @nodoc
mixin _$ReservationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationEventCopyWith<$Res> {
  factory $ReservationEventCopyWith(
          ReservationEvent value, $Res Function(ReservationEvent) then) =
      _$ReservationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReservationEventCopyWithImpl<$Res>
    implements $ReservationEventCopyWith<$Res> {
  _$ReservationEventCopyWithImpl(this._value, this._then);

  final ReservationEvent _value;
  // ignore: unused_field
  final $Res Function(ReservationEvent) _then;
}

/// @nodoc
abstract class $GetRestaurantsCopyWith<$Res> {
  factory $GetRestaurantsCopyWith(
          GetRestaurants value, $Res Function(GetRestaurants) then) =
      _$GetRestaurantsCopyWithImpl<$Res>;
  $Res call({double? latitude, double? longitude});
}

/// @nodoc
class _$GetRestaurantsCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $GetRestaurantsCopyWith<$Res> {
  _$GetRestaurantsCopyWithImpl(
      GetRestaurants _value, $Res Function(GetRestaurants) _then)
      : super(_value, (v) => _then(v as GetRestaurants));

  @override
  GetRestaurants get _value => super._value as GetRestaurants;

  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
  }) {
    return _then(GetRestaurants(
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$GetRestaurants implements GetRestaurants {
  const _$GetRestaurants({this.latitude, this.longitude});

  @override
  final double? latitude;
  @override
  final double? longitude;

  @override
  String toString() {
    return 'ReservationEvent.getRestaurants(latitude: $latitude, longitude: $longitude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetRestaurants &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude));
  }

  @override
  int get hashCode => Object.hash(runtimeType, latitude, longitude);

  @JsonKey(ignore: true)
  @override
  $GetRestaurantsCopyWith<GetRestaurants> get copyWith =>
      _$GetRestaurantsCopyWithImpl<GetRestaurants>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) {
    return getRestaurants(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) {
    return getRestaurants?.call(latitude, longitude);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (getRestaurants != null) {
      return getRestaurants(latitude, longitude);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return getRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) {
    return getRestaurants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (getRestaurants != null) {
      return getRestaurants(this);
    }
    return orElse();
  }
}

abstract class GetRestaurants implements ReservationEvent {
  const factory GetRestaurants({double? latitude, double? longitude}) =
      _$GetRestaurants;

  double? get latitude;
  double? get longitude;
  @JsonKey(ignore: true)
  $GetRestaurantsCopyWith<GetRestaurants> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateRestaurantCopyWith<$Res> {
  factory $RateRestaurantCopyWith(
          RateRestaurant value, $Res Function(RateRestaurant) then) =
      _$RateRestaurantCopyWithImpl<$Res>;
  $Res call(
      {double stars,
      String customerId,
      String customerName,
      String restaurantId,
      String comment});
}

/// @nodoc
class _$RateRestaurantCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $RateRestaurantCopyWith<$Res> {
  _$RateRestaurantCopyWithImpl(
      RateRestaurant _value, $Res Function(RateRestaurant) _then)
      : super(_value, (v) => _then(v as RateRestaurant));

  @override
  RateRestaurant get _value => super._value as RateRestaurant;

  @override
  $Res call({
    Object? stars = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? restaurantId = freezed,
    Object? comment = freezed,
  }) {
    return _then(RateRestaurant(
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: comment == freezed
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RateRestaurant implements RateRestaurant {
  const _$RateRestaurant(
      {required this.stars,
      required this.customerId,
      required this.customerName,
      required this.restaurantId,
      required this.comment});

  @override
  final double stars;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final String restaurantId;
  @override
  final String comment;

  @override
  String toString() {
    return 'ReservationEvent.rateRestaurants(stars: $stars, customerId: $customerId, customerName: $customerName, restaurantId: $restaurantId, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RateRestaurant &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, stars, customerId, customerName, restaurantId, comment);

  @JsonKey(ignore: true)
  @override
  $RateRestaurantCopyWith<RateRestaurant> get copyWith =>
      _$RateRestaurantCopyWithImpl<RateRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) {
    return rateRestaurants(
        stars, customerId, customerName, restaurantId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) {
    return rateRestaurants?.call(
        stars, customerId, customerName, restaurantId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (rateRestaurants != null) {
      return rateRestaurants(
          stars, customerId, customerName, restaurantId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return rateRestaurants(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) {
    return rateRestaurants?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (rateRestaurants != null) {
      return rateRestaurants(this);
    }
    return orElse();
  }
}

abstract class RateRestaurant implements ReservationEvent {
  const factory RateRestaurant(
      {required double stars,
      required String customerId,
      required String customerName,
      required String restaurantId,
      required String comment}) = _$RateRestaurant;

  double get stars;
  String get customerId;
  String get customerName;
  String get restaurantId;
  String get comment;
  @JsonKey(ignore: true)
  $RateRestaurantCopyWith<RateRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateTableCopyWith<$Res> {
  factory $UpdateTableCopyWith(
          UpdateTable value, $Res Function(UpdateTable) then) =
      _$UpdateTableCopyWithImpl<$Res>;
  $Res call({String restaurantId, SitTable table});

  $SitTableCopyWith<$Res> get table;
}

/// @nodoc
class _$UpdateTableCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $UpdateTableCopyWith<$Res> {
  _$UpdateTableCopyWithImpl(
      UpdateTable _value, $Res Function(UpdateTable) _then)
      : super(_value, (v) => _then(v as UpdateTable));

  @override
  UpdateTable get _value => super._value as UpdateTable;

  @override
  $Res call({
    Object? restaurantId = freezed,
    Object? table = freezed,
  }) {
    return _then(UpdateTable(
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as SitTable,
    ));
  }

  @override
  $SitTableCopyWith<$Res> get table {
    return $SitTableCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value));
    });
  }
}

/// @nodoc

class _$UpdateTable implements UpdateTable {
  const _$UpdateTable({required this.restaurantId, required this.table});

  @override
  final String restaurantId;
  @override
  final SitTable table;

  @override
  String toString() {
    return 'ReservationEvent.updateTable(restaurantId: $restaurantId, table: $table)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UpdateTable &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.table, table) || other.table == table));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurantId, table);

  @JsonKey(ignore: true)
  @override
  $UpdateTableCopyWith<UpdateTable> get copyWith =>
      _$UpdateTableCopyWithImpl<UpdateTable>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) {
    return updateTable(restaurantId, table);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) {
    return updateTable?.call(restaurantId, table);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (updateTable != null) {
      return updateTable(restaurantId, table);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return updateTable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) {
    return updateTable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (updateTable != null) {
      return updateTable(this);
    }
    return orElse();
  }
}

abstract class UpdateTable implements ReservationEvent {
  const factory UpdateTable(
      {required String restaurantId, required SitTable table}) = _$UpdateTable;

  String get restaurantId;
  SitTable get table;
  @JsonKey(ignore: true)
  $UpdateTableCopyWith<UpdateTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeReservationCopyWith<$Res> {
  factory $MakeReservationCopyWith(
          MakeReservation value, $Res Function(MakeReservation) then) =
      _$MakeReservationCopyWithImpl<$Res>;
  $Res call({Reservation reservation});

  $ReservationCopyWith<$Res> get reservation;
}

/// @nodoc
class _$MakeReservationCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $MakeReservationCopyWith<$Res> {
  _$MakeReservationCopyWithImpl(
      MakeReservation _value, $Res Function(MakeReservation) _then)
      : super(_value, (v) => _then(v as MakeReservation));

  @override
  MakeReservation get _value => super._value as MakeReservation;

  @override
  $Res call({
    Object? reservation = freezed,
  }) {
    return _then(MakeReservation(
      reservation: reservation == freezed
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

class _$MakeReservation implements MakeReservation {
  const _$MakeReservation({required this.reservation});

  @override
  final Reservation reservation;

  @override
  String toString() {
    return 'ReservationEvent.makeReservation(reservation: $reservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeReservation &&
            (identical(other.reservation, reservation) ||
                other.reservation == reservation));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reservation);

  @JsonKey(ignore: true)
  @override
  $MakeReservationCopyWith<MakeReservation> get copyWith =>
      _$MakeReservationCopyWithImpl<MakeReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) {
    return makeReservation(reservation);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) {
    return makeReservation?.call(reservation);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (makeReservation != null) {
      return makeReservation(reservation);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return makeReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) {
    return makeReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (makeReservation != null) {
      return makeReservation(this);
    }
    return orElse();
  }
}

abstract class MakeReservation implements ReservationEvent {
  const factory MakeReservation({required Reservation reservation}) =
      _$MakeReservation;

  Reservation get reservation;
  @JsonKey(ignore: true)
  $MakeReservationCopyWith<MakeReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetReservationCopyWith<$Res> {
  factory $GetReservationCopyWith(
          GetReservation value, $Res Function(GetReservation) then) =
      _$GetReservationCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$GetReservationCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $GetReservationCopyWith<$Res> {
  _$GetReservationCopyWithImpl(
      GetReservation _value, $Res Function(GetReservation) _then)
      : super(_value, (v) => _then(v as GetReservation));

  @override
  GetReservation get _value => super._value as GetReservation;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(GetReservation(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetReservation implements GetReservation {
  const _$GetReservation(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'ReservationEvent.getReservation(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is GetReservation &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  $GetReservationCopyWith<GetReservation> get copyWith =>
      _$GetReservationCopyWithImpl<GetReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) {
    return getReservation(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) {
    return getReservation?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (getReservation != null) {
      return getReservation(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return getReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) {
    return getReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (getReservation != null) {
      return getReservation(this);
    }
    return orElse();
  }
}

abstract class GetReservation implements ReservationEvent {
  const factory GetReservation(String id) = _$GetReservation;

  String get id;
  @JsonKey(ignore: true)
  $GetReservationCopyWith<GetReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CancelReservationCopyWith<$Res> {
  factory $CancelReservationCopyWith(
          CancelReservation value, $Res Function(CancelReservation) then) =
      _$CancelReservationCopyWithImpl<$Res>;
  $Res call({String userId, String reservationId});
}

/// @nodoc
class _$CancelReservationCopyWithImpl<$Res>
    extends _$ReservationEventCopyWithImpl<$Res>
    implements $CancelReservationCopyWith<$Res> {
  _$CancelReservationCopyWithImpl(
      CancelReservation _value, $Res Function(CancelReservation) _then)
      : super(_value, (v) => _then(v as CancelReservation));

  @override
  CancelReservation get _value => super._value as CancelReservation;

  @override
  $Res call({
    Object? userId = freezed,
    Object? reservationId = freezed,
  }) {
    return _then(CancelReservation(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      reservationId: reservationId == freezed
          ? _value.reservationId
          : reservationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CancelReservation implements CancelReservation {
  const _$CancelReservation(
      {required this.userId, required this.reservationId});

  @override
  final String userId;
  @override
  final String reservationId;

  @override
  String toString() {
    return 'ReservationEvent.cancelReservation(userId: $userId, reservationId: $reservationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CancelReservation &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reservationId, reservationId) ||
                other.reservationId == reservationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userId, reservationId);

  @JsonKey(ignore: true)
  @override
  $CancelReservationCopyWith<CancelReservation> get copyWith =>
      _$CancelReservationCopyWithImpl<CancelReservation>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? latitude, double? longitude)
        getRestaurants,
    required TResult Function(double stars, String customerId,
            String customerName, String restaurantId, String comment)
        rateRestaurants,
    required TResult Function(String restaurantId, SitTable table) updateTable,
    required TResult Function(Reservation reservation) makeReservation,
    required TResult Function(String id) getReservation,
    required TResult Function(String userId, String reservationId)
        cancelReservation,
  }) {
    return cancelReservation(userId, reservationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
  }) {
    return cancelReservation?.call(userId, reservationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? latitude, double? longitude)? getRestaurants,
    TResult Function(double stars, String customerId, String customerName,
            String restaurantId, String comment)?
        rateRestaurants,
    TResult Function(String restaurantId, SitTable table)? updateTable,
    TResult Function(Reservation reservation)? makeReservation,
    TResult Function(String id)? getReservation,
    TResult Function(String userId, String reservationId)? cancelReservation,
    required TResult orElse(),
  }) {
    if (cancelReservation != null) {
      return cancelReservation(userId, reservationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetRestaurants value) getRestaurants,
    required TResult Function(RateRestaurant value) rateRestaurants,
    required TResult Function(UpdateTable value) updateTable,
    required TResult Function(MakeReservation value) makeReservation,
    required TResult Function(GetReservation value) getReservation,
    required TResult Function(CancelReservation value) cancelReservation,
  }) {
    return cancelReservation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
  }) {
    return cancelReservation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetRestaurants value)? getRestaurants,
    TResult Function(RateRestaurant value)? rateRestaurants,
    TResult Function(UpdateTable value)? updateTable,
    TResult Function(MakeReservation value)? makeReservation,
    TResult Function(GetReservation value)? getReservation,
    TResult Function(CancelReservation value)? cancelReservation,
    required TResult orElse(),
  }) {
    if (cancelReservation != null) {
      return cancelReservation(this);
    }
    return orElse();
  }
}

abstract class CancelReservation implements ReservationEvent {
  const factory CancelReservation(
      {required String userId,
      required String reservationId}) = _$CancelReservation;

  String get userId;
  String get reservationId;
  @JsonKey(ignore: true)
  $CancelReservationCopyWith<CancelReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ReservationStateTearOff {
  const _$ReservationStateTearOff();

  _ReservationInitial initial() {
    return const _ReservationInitial();
  }

  _LoadingReservation loading() {
    return const _LoadingReservation();
  }

  _LoadedReservationList loadedReservationList(List<Restaurant>? restaurants) {
    return _LoadedReservationList(
      restaurants,
    );
  }

  _LoadedRestaurant loadedRestaurant(Restaurant restaurant) {
    return _LoadedRestaurant(
      restaurant,
    );
  }

  _ReservationError error(String err) {
    return _ReservationError(
      err,
    );
  }
}

/// @nodoc
const $ReservationState = _$ReservationStateTearOff();

/// @nodoc
mixin _$ReservationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Restaurant>? restaurants)
        loadedReservationList,
    required TResult Function(Restaurant restaurant) loadedRestaurant,
    required TResult Function(String err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReservationInitial value) initial,
    required TResult Function(_LoadingReservation value) loading,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_LoadedRestaurant value) loadedRestaurant,
    required TResult Function(_ReservationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationStateCopyWith<$Res> {
  factory $ReservationStateCopyWith(
          ReservationState value, $Res Function(ReservationState) then) =
      _$ReservationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ReservationStateCopyWithImpl<$Res>
    implements $ReservationStateCopyWith<$Res> {
  _$ReservationStateCopyWithImpl(this._value, this._then);

  final ReservationState _value;
  // ignore: unused_field
  final $Res Function(ReservationState) _then;
}

/// @nodoc
abstract class _$ReservationInitialCopyWith<$Res> {
  factory _$ReservationInitialCopyWith(
          _ReservationInitial value, $Res Function(_ReservationInitial) then) =
      __$ReservationInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$ReservationInitialCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res>
    implements _$ReservationInitialCopyWith<$Res> {
  __$ReservationInitialCopyWithImpl(
      _ReservationInitial _value, $Res Function(_ReservationInitial) _then)
      : super(_value, (v) => _then(v as _ReservationInitial));

  @override
  _ReservationInitial get _value => super._value as _ReservationInitial;
}

/// @nodoc

class _$_ReservationInitial implements _ReservationInitial {
  const _$_ReservationInitial();

  @override
  String toString() {
    return 'ReservationState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ReservationInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Restaurant>? restaurants)
        loadedReservationList,
    required TResult Function(Restaurant restaurant) loadedRestaurant,
    required TResult Function(String err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
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
    required TResult Function(_ReservationInitial value) initial,
    required TResult Function(_LoadingReservation value) loading,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_LoadedRestaurant value) loadedRestaurant,
    required TResult Function(_ReservationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ReservationInitial implements ReservationState {
  const factory _ReservationInitial() = _$_ReservationInitial;
}

/// @nodoc
abstract class _$LoadingReservationCopyWith<$Res> {
  factory _$LoadingReservationCopyWith(
          _LoadingReservation value, $Res Function(_LoadingReservation) then) =
      __$LoadingReservationCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingReservationCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res>
    implements _$LoadingReservationCopyWith<$Res> {
  __$LoadingReservationCopyWithImpl(
      _LoadingReservation _value, $Res Function(_LoadingReservation) _then)
      : super(_value, (v) => _then(v as _LoadingReservation));

  @override
  _LoadingReservation get _value => super._value as _LoadingReservation;
}

/// @nodoc

class _$_LoadingReservation implements _LoadingReservation {
  const _$_LoadingReservation();

  @override
  String toString() {
    return 'ReservationState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _LoadingReservation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Restaurant>? restaurants)
        loadedReservationList,
    required TResult Function(Restaurant restaurant) loadedRestaurant,
    required TResult Function(String err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReservationInitial value) initial,
    required TResult Function(_LoadingReservation value) loading,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_LoadedRestaurant value) loadedRestaurant,
    required TResult Function(_ReservationError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingReservation implements ReservationState {
  const factory _LoadingReservation() = _$_LoadingReservation;
}

/// @nodoc
abstract class _$LoadedReservationListCopyWith<$Res> {
  factory _$LoadedReservationListCopyWith(_LoadedReservationList value,
          $Res Function(_LoadedReservationList) then) =
      __$LoadedReservationListCopyWithImpl<$Res>;
  $Res call({List<Restaurant>? restaurants});
}

/// @nodoc
class __$LoadedReservationListCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res>
    implements _$LoadedReservationListCopyWith<$Res> {
  __$LoadedReservationListCopyWithImpl(_LoadedReservationList _value,
      $Res Function(_LoadedReservationList) _then)
      : super(_value, (v) => _then(v as _LoadedReservationList));

  @override
  _LoadedReservationList get _value => super._value as _LoadedReservationList;

  @override
  $Res call({
    Object? restaurants = freezed,
  }) {
    return _then(_LoadedReservationList(
      restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>?,
    ));
  }
}

/// @nodoc

class _$_LoadedReservationList implements _LoadedReservationList {
  const _$_LoadedReservationList(this.restaurants);

  @override
  final List<Restaurant>? restaurants;

  @override
  String toString() {
    return 'ReservationState.loadedReservationList(restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedReservationList &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurants));

  @JsonKey(ignore: true)
  @override
  _$LoadedReservationListCopyWith<_LoadedReservationList> get copyWith =>
      __$LoadedReservationListCopyWithImpl<_LoadedReservationList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Restaurant>? restaurants)
        loadedReservationList,
    required TResult Function(Restaurant restaurant) loadedRestaurant,
    required TResult Function(String err) error,
  }) {
    return loadedReservationList(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
  }) {
    return loadedReservationList?.call(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (loadedReservationList != null) {
      return loadedReservationList(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReservationInitial value) initial,
    required TResult Function(_LoadingReservation value) loading,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_LoadedRestaurant value) loadedRestaurant,
    required TResult Function(_ReservationError value) error,
  }) {
    return loadedReservationList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
  }) {
    return loadedReservationList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
    required TResult orElse(),
  }) {
    if (loadedReservationList != null) {
      return loadedReservationList(this);
    }
    return orElse();
  }
}

abstract class _LoadedReservationList implements ReservationState {
  const factory _LoadedReservationList(List<Restaurant>? restaurants) =
      _$_LoadedReservationList;

  List<Restaurant>? get restaurants;
  @JsonKey(ignore: true)
  _$LoadedReservationListCopyWith<_LoadedReservationList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedRestaurantCopyWith<$Res> {
  factory _$LoadedRestaurantCopyWith(
          _LoadedRestaurant value, $Res Function(_LoadedRestaurant) then) =
      __$LoadedRestaurantCopyWithImpl<$Res>;
  $Res call({Restaurant restaurant});

  $RestaurantCopyWith<$Res> get restaurant;
}

/// @nodoc
class __$LoadedRestaurantCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res>
    implements _$LoadedRestaurantCopyWith<$Res> {
  __$LoadedRestaurantCopyWithImpl(
      _LoadedRestaurant _value, $Res Function(_LoadedRestaurant) _then)
      : super(_value, (v) => _then(v as _LoadedRestaurant));

  @override
  _LoadedRestaurant get _value => super._value as _LoadedRestaurant;

  @override
  $Res call({
    Object? restaurant = freezed,
  }) {
    return _then(_LoadedRestaurant(
      restaurant == freezed
          ? _value.restaurant
          : restaurant // ignore: cast_nullable_to_non_nullable
              as Restaurant,
    ));
  }

  @override
  $RestaurantCopyWith<$Res> get restaurant {
    return $RestaurantCopyWith<$Res>(_value.restaurant, (value) {
      return _then(_value.copyWith(restaurant: value));
    });
  }
}

/// @nodoc

class _$_LoadedRestaurant implements _LoadedRestaurant {
  const _$_LoadedRestaurant(this.restaurant);

  @override
  final Restaurant restaurant;

  @override
  String toString() {
    return 'ReservationState.loadedRestaurant(restaurant: $restaurant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoadedRestaurant &&
            (identical(other.restaurant, restaurant) ||
                other.restaurant == restaurant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, restaurant);

  @JsonKey(ignore: true)
  @override
  _$LoadedRestaurantCopyWith<_LoadedRestaurant> get copyWith =>
      __$LoadedRestaurantCopyWithImpl<_LoadedRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Restaurant>? restaurants)
        loadedReservationList,
    required TResult Function(Restaurant restaurant) loadedRestaurant,
    required TResult Function(String err) error,
  }) {
    return loadedRestaurant(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
  }) {
    return loadedRestaurant?.call(restaurant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (loadedRestaurant != null) {
      return loadedRestaurant(restaurant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReservationInitial value) initial,
    required TResult Function(_LoadingReservation value) loading,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_LoadedRestaurant value) loadedRestaurant,
    required TResult Function(_ReservationError value) error,
  }) {
    return loadedRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
  }) {
    return loadedRestaurant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
    required TResult orElse(),
  }) {
    if (loadedRestaurant != null) {
      return loadedRestaurant(this);
    }
    return orElse();
  }
}

abstract class _LoadedRestaurant implements ReservationState {
  const factory _LoadedRestaurant(Restaurant restaurant) = _$_LoadedRestaurant;

  Restaurant get restaurant;
  @JsonKey(ignore: true)
  _$LoadedRestaurantCopyWith<_LoadedRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ReservationErrorCopyWith<$Res> {
  factory _$ReservationErrorCopyWith(
          _ReservationError value, $Res Function(_ReservationError) then) =
      __$ReservationErrorCopyWithImpl<$Res>;
  $Res call({String err});
}

/// @nodoc
class __$ReservationErrorCopyWithImpl<$Res>
    extends _$ReservationStateCopyWithImpl<$Res>
    implements _$ReservationErrorCopyWith<$Res> {
  __$ReservationErrorCopyWithImpl(
      _ReservationError _value, $Res Function(_ReservationError) _then)
      : super(_value, (v) => _then(v as _ReservationError));

  @override
  _ReservationError get _value => super._value as _ReservationError;

  @override
  $Res call({
    Object? err = freezed,
  }) {
    return _then(_ReservationError(
      err == freezed
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReservationError implements _ReservationError {
  const _$_ReservationError(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'ReservationState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReservationError &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  _$ReservationErrorCopyWith<_ReservationError> get copyWith =>
      __$ReservationErrorCopyWithImpl<_ReservationError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Restaurant>? restaurants)
        loadedReservationList,
    required TResult Function(Restaurant restaurant) loadedRestaurant,
    required TResult Function(String err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Restaurant>? restaurants)? loadedReservationList,
    TResult Function(Restaurant restaurant)? loadedRestaurant,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ReservationInitial value) initial,
    required TResult Function(_LoadingReservation value) loading,
    required TResult Function(_LoadedReservationList value)
        loadedReservationList,
    required TResult Function(_LoadedRestaurant value) loadedRestaurant,
    required TResult Function(_ReservationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ReservationInitial value)? initial,
    TResult Function(_LoadingReservation value)? loading,
    TResult Function(_LoadedReservationList value)? loadedReservationList,
    TResult Function(_LoadedRestaurant value)? loadedRestaurant,
    TResult Function(_ReservationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ReservationError implements ReservationState {
  const factory _ReservationError(String err) = _$_ReservationError;

  String get err;
  @JsonKey(ignore: true)
  _$ReservationErrorCopyWith<_ReservationError> get copyWith =>
      throw _privateConstructorUsedError;
}
