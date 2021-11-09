// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sitin_table.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SitTable _$SitTableFromJson(Map<String, dynamic> json) {
  return _SitTable.fromJson(json);
}

/// @nodoc
class _$SitTableTearOff {
  const _$SitTableTearOff();

  _SitTable call(
      {@HiveField(0) required int tableNo,
      @HiveField(2) required int numberOfSeats,
      @HiveField(3) required double amount,
      @HiveField(4) TableLocation tableLocation = TableLocation.indoor,
      @HiveField(5) bool isReserved = false}) {
    return _SitTable(
      tableNo: tableNo,
      numberOfSeats: numberOfSeats,
      amount: amount,
      tableLocation: tableLocation,
      isReserved: isReserved,
    );
  }

  SitTable fromJson(Map<String, Object?> json) {
    return SitTable.fromJson(json);
  }
}

/// @nodoc
const $SitTable = _$SitTableTearOff();

/// @nodoc
mixin _$SitTable {
  @HiveField(0)
  int get tableNo => throw _privateConstructorUsedError;
  @HiveField(2)
  int get numberOfSeats => throw _privateConstructorUsedError;
  @HiveField(3)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(4)
  TableLocation get tableLocation => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get isReserved => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SitTableCopyWith<SitTable> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitTableCopyWith<$Res> {
  factory $SitTableCopyWith(SitTable value, $Res Function(SitTable) then) =
      _$SitTableCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) int tableNo,
      @HiveField(2) int numberOfSeats,
      @HiveField(3) double amount,
      @HiveField(4) TableLocation tableLocation,
      @HiveField(5) bool isReserved});
}

/// @nodoc
class _$SitTableCopyWithImpl<$Res> implements $SitTableCopyWith<$Res> {
  _$SitTableCopyWithImpl(this._value, this._then);

  final SitTable _value;
  // ignore: unused_field
  final $Res Function(SitTable) _then;

  @override
  $Res call({
    Object? tableNo = freezed,
    Object? numberOfSeats = freezed,
    Object? amount = freezed,
    Object? tableLocation = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_value.copyWith(
      tableNo: tableNo == freezed
          ? _value.tableNo
          : tableNo // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSeats: numberOfSeats == freezed
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tableLocation: tableLocation == freezed
          ? _value.tableLocation
          : tableLocation // ignore: cast_nullable_to_non_nullable
              as TableLocation,
      isReserved: isReserved == freezed
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$SitTableCopyWith<$Res> implements $SitTableCopyWith<$Res> {
  factory _$SitTableCopyWith(_SitTable value, $Res Function(_SitTable) then) =
      __$SitTableCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) int tableNo,
      @HiveField(2) int numberOfSeats,
      @HiveField(3) double amount,
      @HiveField(4) TableLocation tableLocation,
      @HiveField(5) bool isReserved});
}

/// @nodoc
class __$SitTableCopyWithImpl<$Res> extends _$SitTableCopyWithImpl<$Res>
    implements _$SitTableCopyWith<$Res> {
  __$SitTableCopyWithImpl(_SitTable _value, $Res Function(_SitTable) _then)
      : super(_value, (v) => _then(v as _SitTable));

  @override
  _SitTable get _value => super._value as _SitTable;

  @override
  $Res call({
    Object? tableNo = freezed,
    Object? numberOfSeats = freezed,
    Object? amount = freezed,
    Object? tableLocation = freezed,
    Object? isReserved = freezed,
  }) {
    return _then(_SitTable(
      tableNo: tableNo == freezed
          ? _value.tableNo
          : tableNo // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfSeats: numberOfSeats == freezed
          ? _value.numberOfSeats
          : numberOfSeats // ignore: cast_nullable_to_non_nullable
              as int,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      tableLocation: tableLocation == freezed
          ? _value.tableLocation
          : tableLocation // ignore: cast_nullable_to_non_nullable
              as TableLocation,
      isReserved: isReserved == freezed
          ? _value.isReserved
          : isReserved // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SitTable implements _SitTable {
  const _$_SitTable(
      {@HiveField(0) required this.tableNo,
      @HiveField(2) required this.numberOfSeats,
      @HiveField(3) required this.amount,
      @HiveField(4) this.tableLocation = TableLocation.indoor,
      @HiveField(5) this.isReserved = false});

  factory _$_SitTable.fromJson(Map<String, dynamic> json) =>
      _$$_SitTableFromJson(json);

  @override
  @HiveField(0)
  final int tableNo;
  @override
  @HiveField(2)
  final int numberOfSeats;
  @override
  @HiveField(3)
  final double amount;
  @JsonKey(defaultValue: TableLocation.indoor)
  @override
  @HiveField(4)
  final TableLocation tableLocation;
  @JsonKey(defaultValue: false)
  @override
  @HiveField(5)
  final bool isReserved;

  @override
  String toString() {
    return 'SitTable(tableNo: $tableNo, numberOfSeats: $numberOfSeats, amount: $amount, tableLocation: $tableLocation, isReserved: $isReserved)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SitTable &&
            (identical(other.tableNo, tableNo) || other.tableNo == tableNo) &&
            (identical(other.numberOfSeats, numberOfSeats) ||
                other.numberOfSeats == numberOfSeats) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.tableLocation, tableLocation) ||
                other.tableLocation == tableLocation) &&
            (identical(other.isReserved, isReserved) ||
                other.isReserved == isReserved));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, tableNo, numberOfSeats, amount, tableLocation, isReserved);

  @JsonKey(ignore: true)
  @override
  _$SitTableCopyWith<_SitTable> get copyWith =>
      __$SitTableCopyWithImpl<_SitTable>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SitTableToJson(this);
  }
}

abstract class _SitTable implements SitTable {
  const factory _SitTable(
      {@HiveField(0) required int tableNo,
      @HiveField(2) required int numberOfSeats,
      @HiveField(3) required double amount,
      @HiveField(4) TableLocation tableLocation,
      @HiveField(5) bool isReserved}) = _$_SitTable;

  factory _SitTable.fromJson(Map<String, dynamic> json) = _$_SitTable.fromJson;

  @override
  @HiveField(0)
  int get tableNo;
  @override
  @HiveField(2)
  int get numberOfSeats;
  @override
  @HiveField(3)
  double get amount;
  @override
  @HiveField(4)
  TableLocation get tableLocation;
  @override
  @HiveField(5)
  bool get isReserved;
  @override
  @JsonKey(ignore: true)
  _$SitTableCopyWith<_SitTable> get copyWith =>
      throw _privateConstructorUsedError;
}
