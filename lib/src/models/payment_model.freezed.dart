// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SitInPayment _$SitInPaymentFromJson(Map<String, dynamic> json) {
  return _SitInPayment.fromJson(json);
}

/// @nodoc
class _$SitInPaymentTearOff {
  const _$SitInPaymentTearOff();

  _SitInPayment call({required String id, required double amount}) {
    return _SitInPayment(
      id: id,
      amount: amount,
    );
  }

  SitInPayment fromJson(Map<String, Object?> json) {
    return SitInPayment.fromJson(json);
  }
}

/// @nodoc
const $SitInPayment = _$SitInPaymentTearOff();

/// @nodoc
mixin _$SitInPayment {
  String get id => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SitInPaymentCopyWith<SitInPayment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitInPaymentCopyWith<$Res> {
  factory $SitInPaymentCopyWith(
          SitInPayment value, $Res Function(SitInPayment) then) =
      _$SitInPaymentCopyWithImpl<$Res>;
  $Res call({String id, double amount});
}

/// @nodoc
class _$SitInPaymentCopyWithImpl<$Res> implements $SitInPaymentCopyWith<$Res> {
  _$SitInPaymentCopyWithImpl(this._value, this._then);

  final SitInPayment _value;
  // ignore: unused_field
  final $Res Function(SitInPayment) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SitInPaymentCopyWith<$Res>
    implements $SitInPaymentCopyWith<$Res> {
  factory _$SitInPaymentCopyWith(
          _SitInPayment value, $Res Function(_SitInPayment) then) =
      __$SitInPaymentCopyWithImpl<$Res>;
  @override
  $Res call({String id, double amount});
}

/// @nodoc
class __$SitInPaymentCopyWithImpl<$Res> extends _$SitInPaymentCopyWithImpl<$Res>
    implements _$SitInPaymentCopyWith<$Res> {
  __$SitInPaymentCopyWithImpl(
      _SitInPayment _value, $Res Function(_SitInPayment) _then)
      : super(_value, (v) => _then(v as _SitInPayment));

  @override
  _SitInPayment get _value => super._value as _SitInPayment;

  @override
  $Res call({
    Object? id = freezed,
    Object? amount = freezed,
  }) {
    return _then(_SitInPayment(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SitInPayment implements _SitInPayment {
  const _$_SitInPayment({required this.id, required this.amount});

  factory _$_SitInPayment.fromJson(Map<String, dynamic> json) =>
      _$$_SitInPaymentFromJson(json);

  @override
  final String id;
  @override
  final double amount;

  @override
  String toString() {
    return 'SitInPayment(id: $id, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SitInPayment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, amount);

  @JsonKey(ignore: true)
  @override
  _$SitInPaymentCopyWith<_SitInPayment> get copyWith =>
      __$SitInPaymentCopyWithImpl<_SitInPayment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SitInPaymentToJson(this);
  }
}

abstract class _SitInPayment implements SitInPayment {
  const factory _SitInPayment({required String id, required double amount}) =
      _$_SitInPayment;

  factory _SitInPayment.fromJson(Map<String, dynamic> json) =
      _$_SitInPayment.fromJson;

  @override
  String get id;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$SitInPaymentCopyWith<_SitInPayment> get copyWith =>
      throw _privateConstructorUsedError;
}
