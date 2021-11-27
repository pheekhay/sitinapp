// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sitin_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return _Customer.fromJson(json);
}

/// @nodoc
class _$CustomerTearOff {
  const _$CustomerTearOff();

  _Customer call(
      {@HiveField(0) required String id,
      @HiveField(1) required String? name,
      @HiveField(2) String? phoneNumber,
      @HiveField(3) List<Reservation>? reservations,
      @HiveField(4) bool isAnonymous = false,
      @HiveField(5) String? email}) {
    return _Customer(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      reservations: reservations,
      isAnonymous: isAnonymous,
      email: email,
    );
  }

  Customer fromJson(Map<String, Object?> json) {
    return Customer.fromJson(json);
  }
}

/// @nodoc
const $Customer = _$CustomerTearOff();

/// @nodoc
mixin _$Customer {
  @HiveField(0)
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Reservation>? get reservations => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get isAnonymous => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerCopyWith<Customer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerCopyWith<$Res> {
  factory $CustomerCopyWith(Customer value, $Res Function(Customer) then) =
      _$CustomerCopyWithImpl<$Res>;
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String? name,
      @HiveField(2) String? phoneNumber,
      @HiveField(3) List<Reservation>? reservations,
      @HiveField(4) bool isAnonymous,
      @HiveField(5) String? email});
}

/// @nodoc
class _$CustomerCopyWithImpl<$Res> implements $CustomerCopyWith<$Res> {
  _$CustomerCopyWithImpl(this._value, this._then);

  final Customer _value;
  // ignore: unused_field
  final $Res Function(Customer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? reservations = freezed,
    Object? isAnonymous = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      reservations: reservations == freezed
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>?,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CustomerCopyWith<$Res> implements $CustomerCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) then) =
      __$CustomerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@HiveField(0) String id,
      @HiveField(1) String? name,
      @HiveField(2) String? phoneNumber,
      @HiveField(3) List<Reservation>? reservations,
      @HiveField(4) bool isAnonymous,
      @HiveField(5) String? email});
}

/// @nodoc
class __$CustomerCopyWithImpl<$Res> extends _$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(_Customer _value, $Res Function(_Customer) _then)
      : super(_value, (v) => _then(v as _Customer));

  @override
  _Customer get _value => super._value as _Customer;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? phoneNumber = freezed,
    Object? reservations = freezed,
    Object? isAnonymous = freezed,
    Object? email = freezed,
  }) {
    return _then(_Customer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      reservations: reservations == freezed
          ? _value.reservations
          : reservations // ignore: cast_nullable_to_non_nullable
              as List<Reservation>?,
      isAnonymous: isAnonymous == freezed
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Customer implements _Customer {
  const _$_Customer(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.name,
      @HiveField(2) this.phoneNumber,
      @HiveField(3) this.reservations,
      @HiveField(4) this.isAnonymous = false,
      @HiveField(5) this.email});

  factory _$_Customer.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerFromJson(json);

  @override
  @HiveField(0)
  final String id;
  @override
  @HiveField(1)
  final String? name;
  @override
  @HiveField(2)
  final String? phoneNumber;
  @override
  @HiveField(3)
  final List<Reservation>? reservations;
  @JsonKey(defaultValue: false)
  @override
  @HiveField(4)
  final bool isAnonymous;
  @override
  @HiveField(5)
  final String? email;

  @override
  String toString() {
    return 'Customer(id: $id, name: $name, phoneNumber: $phoneNumber, reservations: $reservations, isAnonymous: $isAnonymous, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Customer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality()
                .equals(other.reservations, reservations) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phoneNumber,
      const DeepCollectionEquality().hash(reservations), isAnonymous, email);

  @JsonKey(ignore: true)
  @override
  _$CustomerCopyWith<_Customer> get copyWith =>
      __$CustomerCopyWithImpl<_Customer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerToJson(this);
  }
}

abstract class _Customer implements Customer {
  const factory _Customer(
      {@HiveField(0) required String id,
      @HiveField(1) required String? name,
      @HiveField(2) String? phoneNumber,
      @HiveField(3) List<Reservation>? reservations,
      @HiveField(4) bool isAnonymous,
      @HiveField(5) String? email}) = _$_Customer;

  factory _Customer.fromJson(Map<String, dynamic> json) = _$_Customer.fromJson;

  @override
  @HiveField(0)
  String get id;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  String? get phoneNumber;
  @override
  @HiveField(3)
  List<Reservation>? get reservations;
  @override
  @HiveField(4)
  bool get isAnonymous;
  @override
  @HiveField(5)
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$CustomerCopyWith<_Customer> get copyWith =>
      throw _privateConstructorUsedError;
}
