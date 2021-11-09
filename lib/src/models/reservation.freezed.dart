// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Reservation _$ReservationFromJson(Map<String, dynamic> json) {
  return _Reservation.fromJson(json);
}

/// @nodoc
class _$ReservationTearOff {
  const _$ReservationTearOff();

  _Reservation call(
      {@HiveField(0) required String id,
      @HiveField(1) required String customerId,
      @HiveField(2) required String restaurantId,
      @HiveField(3) required String customerName,
      @HiveField(4) required DateTime reservedDate,
      @HiveField(5) required double price,
      @HiveField(6) required SitTable table,
      @HiveField(7) required bool cancelled,
      @HiveField(8) SitInPayment? payment}) {
    return _Reservation(
      id: id,
      customerId: customerId,
      restaurantId: restaurantId,
      customerName: customerName,
      reservedDate: reservedDate,
      price: price,
      table: table,
      cancelled: cancelled,
      payment: payment,
    );
  }

  Reservation fromJson(Map<String, Object?> json) {
    return Reservation.fromJson(json);
  }
}

/// @nodoc
const $Reservation = _$ReservationTearOff();

/// @nodoc
mixin _$Reservation {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get customerId => throw _privateConstructorUsedError;
  @HiveField(2)
  String get restaurantId => throw _privateConstructorUsedError;
  @HiveField(3)
  String get customerName => throw _privateConstructorUsedError;
  @HiveField(4)
  DateTime get reservedDate => throw _privateConstructorUsedError;
  @HiveField(5)
  double get price => throw _privateConstructorUsedError;
  @HiveField(6)
  SitTable get table => throw _privateConstructorUsedError;
  @HiveField(7)
  bool get cancelled => throw _privateConstructorUsedError;
  @HiveField(8)
  SitInPayment? get payment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String customerId,
      @HiveField(2) String restaurantId,
      @HiveField(3) String customerName,
      @HiveField(4) DateTime reservedDate,
      @HiveField(5) double price,
      @HiveField(6) SitTable table,
      @HiveField(7) bool cancelled,
      @HiveField(8) SitInPayment? payment});

  $SitTableCopyWith<$Res> get table;
  $SitInPaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res> implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  final Reservation _value;
  // ignore: unused_field
  final $Res Function(Reservation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? restaurantId = freezed,
    Object? customerName = freezed,
    Object? reservedDate = freezed,
    Object? price = freezed,
    Object? table = freezed,
    Object? cancelled = freezed,
    Object? payment = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      reservedDate: reservedDate == freezed
          ? _value.reservedDate
          : reservedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as SitTable,
      cancelled: cancelled == freezed
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as bool,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as SitInPayment?,
    ));
  }

  @override
  $SitTableCopyWith<$Res> get table {
    return $SitTableCopyWith<$Res>(_value.table, (value) {
      return _then(_value.copyWith(table: value));
    });
  }

  @override
  $SitInPaymentCopyWith<$Res>? get payment {
    if (_value.payment == null) {
      return null;
    }

    return $SitInPaymentCopyWith<$Res>(_value.payment!, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc
abstract class _$ReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$ReservationCopyWith(
          _Reservation value, $Res Function(_Reservation) then) =
      __$ReservationCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String customerId,
      @HiveField(2) String restaurantId,
      @HiveField(3) String customerName,
      @HiveField(4) DateTime reservedDate,
      @HiveField(5) double price,
      @HiveField(6) SitTable table,
      @HiveField(7) bool cancelled,
      @HiveField(8) SitInPayment? payment});

  @override
  $SitTableCopyWith<$Res> get table;
  @override
  $SitInPaymentCopyWith<$Res>? get payment;
}

/// @nodoc
class __$ReservationCopyWithImpl<$Res> extends _$ReservationCopyWithImpl<$Res>
    implements _$ReservationCopyWith<$Res> {
  __$ReservationCopyWithImpl(
      _Reservation _value, $Res Function(_Reservation) _then)
      : super(_value, (v) => _then(v as _Reservation));

  @override
  _Reservation get _value => super._value as _Reservation;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? restaurantId = freezed,
    Object? customerName = freezed,
    Object? reservedDate = freezed,
    Object? price = freezed,
    Object? table = freezed,
    Object? cancelled = freezed,
    Object? payment = freezed,
  }) {
    return _then(_Reservation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      restaurantId: restaurantId == freezed
          ? _value.restaurantId
          : restaurantId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      reservedDate: reservedDate == freezed
          ? _value.reservedDate
          : reservedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      price: price == freezed
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      table: table == freezed
          ? _value.table
          : table // ignore: cast_nullable_to_non_nullable
              as SitTable,
      cancelled: cancelled == freezed
          ? _value.cancelled
          : cancelled // ignore: cast_nullable_to_non_nullable
              as bool,
      payment: payment == freezed
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as SitInPayment?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Reservation implements _Reservation {
  const _$_Reservation(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.customerId,
      @HiveField(2) required this.restaurantId,
      @HiveField(3) required this.customerName,
      @HiveField(4) required this.reservedDate,
      @HiveField(5) required this.price,
      @HiveField(6) required this.table,
      @HiveField(7) required this.cancelled,
      @HiveField(8) this.payment});

  factory _$_Reservation.fromJson(Map<String, dynamic> json) =>
      _$$_ReservationFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String customerId;
  @override
  @HiveField(2)
  final String restaurantId;
  @override
  @HiveField(3)
  final String customerName;
  @override
  @HiveField(4)
  final DateTime reservedDate;
  @override
  @HiveField(5)
  final double price;
  @override
  @HiveField(6)
  final SitTable table;
  @override
  @HiveField(7)
  final bool cancelled;
  @override
  @HiveField(8)
  final SitInPayment? payment;

  @override
  String toString() {
    return 'Reservation(id: $id, customerId: $customerId, restaurantId: $restaurantId, customerName: $customerName, reservedDate: $reservedDate, price: $price, table: $table, cancelled: $cancelled, payment: $payment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reservation &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.restaurantId, restaurantId) ||
                other.restaurantId == restaurantId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.reservedDate, reservedDate) ||
                other.reservedDate == reservedDate) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.table, table) || other.table == table) &&
            (identical(other.cancelled, cancelled) ||
                other.cancelled == cancelled) &&
            (identical(other.payment, payment) || other.payment == payment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, customerId, restaurantId,
      customerName, reservedDate, price, table, cancelled, payment);

  @JsonKey(ignore: true)
  @override
  _$ReservationCopyWith<_Reservation> get copyWith =>
      __$ReservationCopyWithImpl<_Reservation>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReservationToJson(this);
  }
}

abstract class _Reservation implements Reservation {
  const factory _Reservation(
      {@HiveField(0) required String id,
      @HiveField(1) required String customerId,
      @HiveField(2) required String restaurantId,
      @HiveField(3) required String customerName,
      @HiveField(4) required DateTime reservedDate,
      @HiveField(5) required double price,
      @HiveField(6) required SitTable table,
      @HiveField(7) required bool cancelled,
      @HiveField(8) SitInPayment? payment}) = _$_Reservation;

  factory _Reservation.fromJson(Map<String, dynamic> json) =
      _$_Reservation.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String get customerId;
  @override
  @HiveField(2)
  String get restaurantId;
  @override
  @HiveField(3)
  String get customerName;
  @override
  @HiveField(4)
  DateTime get reservedDate;
  @override
  @HiveField(5)
  double get price;
  @override
  @HiveField(6)
  SitTable get table;
  @override
  @HiveField(7)
  bool get cancelled;
  @override
  @HiveField(8)
  SitInPayment? get payment;
  @override
  @JsonKey(ignore: true)
  _$ReservationCopyWith<_Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}
