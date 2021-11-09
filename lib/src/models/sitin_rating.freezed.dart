// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sitin_rating.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SitInRating _$SitInRatingFromJson(Map<String, dynamic> json) {
  return _SitInRating.fromJson(json);
}

/// @nodoc
class _$SitInRatingTearOff {
  const _$SitInRatingTearOff();

  _SitInRating call(
      {required String id,
      required String customerId,
      required String customerName,
      required DateTime? rateDate,
      required double stars,
      String? review}) {
    return _SitInRating(
      id: id,
      customerId: customerId,
      customerName: customerName,
      rateDate: rateDate,
      stars: stars,
      review: review,
    );
  }

  SitInRating fromJson(Map<String, Object?> json) {
    return SitInRating.fromJson(json);
  }
}

/// @nodoc
const $SitInRating = _$SitInRatingTearOff();

/// @nodoc
mixin _$SitInRating {
  String get id => throw _privateConstructorUsedError;
  String get customerId => throw _privateConstructorUsedError;
  String get customerName => throw _privateConstructorUsedError;
  DateTime? get rateDate => throw _privateConstructorUsedError;
  double get stars => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SitInRatingCopyWith<SitInRating> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SitInRatingCopyWith<$Res> {
  factory $SitInRatingCopyWith(
          SitInRating value, $Res Function(SitInRating) then) =
      _$SitInRatingCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String customerId,
      String customerName,
      DateTime? rateDate,
      double stars,
      String? review});
}

/// @nodoc
class _$SitInRatingCopyWithImpl<$Res> implements $SitInRatingCopyWith<$Res> {
  _$SitInRatingCopyWithImpl(this._value, this._then);

  final SitInRating _value;
  // ignore: unused_field
  final $Res Function(SitInRating) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? rateDate = freezed,
    Object? stars = freezed,
    Object? review = freezed,
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
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      rateDate: rateDate == freezed
          ? _value.rateDate
          : rateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SitInRatingCopyWith<$Res>
    implements $SitInRatingCopyWith<$Res> {
  factory _$SitInRatingCopyWith(
          _SitInRating value, $Res Function(_SitInRating) then) =
      __$SitInRatingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String customerId,
      String customerName,
      DateTime? rateDate,
      double stars,
      String? review});
}

/// @nodoc
class __$SitInRatingCopyWithImpl<$Res> extends _$SitInRatingCopyWithImpl<$Res>
    implements _$SitInRatingCopyWith<$Res> {
  __$SitInRatingCopyWithImpl(
      _SitInRating _value, $Res Function(_SitInRating) _then)
      : super(_value, (v) => _then(v as _SitInRating));

  @override
  _SitInRating get _value => super._value as _SitInRating;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? customerName = freezed,
    Object? rateDate = freezed,
    Object? stars = freezed,
    Object? review = freezed,
  }) {
    return _then(_SitInRating(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String,
      rateDate: rateDate == freezed
          ? _value.rateDate
          : rateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      stars: stars == freezed
          ? _value.stars
          : stars // ignore: cast_nullable_to_non_nullable
              as double,
      review: review == freezed
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SitInRating implements _SitInRating {
  const _$_SitInRating(
      {required this.id,
      required this.customerId,
      required this.customerName,
      required this.rateDate,
      required this.stars,
      this.review});

  factory _$_SitInRating.fromJson(Map<String, dynamic> json) =>
      _$$_SitInRatingFromJson(json);

  @override
  final String id;
  @override
  final String customerId;
  @override
  final String customerName;
  @override
  final DateTime? rateDate;
  @override
  final double stars;
  @override
  final String? review;

  @override
  String toString() {
    return 'SitInRating(id: $id, customerId: $customerId, customerName: $customerName, rateDate: $rateDate, stars: $stars, review: $review)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SitInRating &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.customerName, customerName) ||
                other.customerName == customerName) &&
            (identical(other.rateDate, rateDate) ||
                other.rateDate == rateDate) &&
            (identical(other.stars, stars) || other.stars == stars) &&
            (identical(other.review, review) || other.review == review));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, customerId, customerName, rateDate, stars, review);

  @JsonKey(ignore: true)
  @override
  _$SitInRatingCopyWith<_SitInRating> get copyWith =>
      __$SitInRatingCopyWithImpl<_SitInRating>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SitInRatingToJson(this);
  }
}

abstract class _SitInRating implements SitInRating {
  const factory _SitInRating(
      {required String id,
      required String customerId,
      required String customerName,
      required DateTime? rateDate,
      required double stars,
      String? review}) = _$_SitInRating;

  factory _SitInRating.fromJson(Map<String, dynamic> json) =
      _$_SitInRating.fromJson;

  @override
  String get id;
  @override
  String get customerId;
  @override
  String get customerName;
  @override
  DateTime? get rateDate;
  @override
  double get stars;
  @override
  String? get review;
  @override
  @JsonKey(ignore: true)
  _$SitInRatingCopyWith<_SitInRating> get copyWith =>
      throw _privateConstructorUsedError;
}
