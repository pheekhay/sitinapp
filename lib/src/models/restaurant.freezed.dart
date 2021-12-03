// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'restaurant.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return _Restaurant.fromJson(json);
}

/// @nodoc
class _$RestaurantTearOff {
  const _$RestaurantTearOff();

  _Restaurant call(
      {required String id,
      required String name,
      required String cusine,
      required String phoneNumber,
      required String photoUrl,
      required DateTime closingTime,
      required Location location,
      required List<String>? tags,
      String? specialNote,
      double cummulativeRating = 0.0,
      required List<SitTable> tables,
      required bool isReservable,
      required List<SitInRating>? ratings,
      List<String>? photos}) {
    return _Restaurant(
      id: id,
      name: name,
      cusine: cusine,
      phoneNumber: phoneNumber,
      photoUrl: photoUrl,
      closingTime: closingTime,
      location: location,
      tags: tags,
      specialNote: specialNote,
      cummulativeRating: cummulativeRating,
      tables: tables,
      isReservable: isReservable,
      ratings: ratings,
      photos: photos,
    );
  }

  Restaurant fromJson(Map<String, Object?> json) {
    return Restaurant.fromJson(json);
  }
}

/// @nodoc
const $Restaurant = _$RestaurantTearOff();

/// @nodoc
mixin _$Restaurant {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get cusine => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  String get photoUrl => throw _privateConstructorUsedError;
  DateTime get closingTime => throw _privateConstructorUsedError;
  Location get location => throw _privateConstructorUsedError;
  List<String>? get tags => throw _privateConstructorUsedError;
  String? get specialNote => throw _privateConstructorUsedError;
  double get cummulativeRating => throw _privateConstructorUsedError;
  List<SitTable> get tables => throw _privateConstructorUsedError;
  bool get isReservable => throw _privateConstructorUsedError;
  List<SitInRating>? get ratings => throw _privateConstructorUsedError;
  List<String>? get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RestaurantCopyWith<Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RestaurantCopyWith<$Res> {
  factory $RestaurantCopyWith(
          Restaurant value, $Res Function(Restaurant) then) =
      _$RestaurantCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      String cusine,
      String phoneNumber,
      String photoUrl,
      DateTime closingTime,
      Location location,
      List<String>? tags,
      String? specialNote,
      double cummulativeRating,
      List<SitTable> tables,
      bool isReservable,
      List<SitInRating>? ratings,
      List<String>? photos});

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$RestaurantCopyWithImpl<$Res> implements $RestaurantCopyWith<$Res> {
  _$RestaurantCopyWithImpl(this._value, this._then);

  final Restaurant _value;
  // ignore: unused_field
  final $Res Function(Restaurant) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cusine = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
    Object? closingTime = freezed,
    Object? location = freezed,
    Object? tags = freezed,
    Object? specialNote = freezed,
    Object? cummulativeRating = freezed,
    Object? tables = freezed,
    Object? isReservable = freezed,
    Object? ratings = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cusine: cusine == freezed
          ? _value.cusine
          : cusine // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      specialNote: specialNote == freezed
          ? _value.specialNote
          : specialNote // ignore: cast_nullable_to_non_nullable
              as String?,
      cummulativeRating: cummulativeRating == freezed
          ? _value.cummulativeRating
          : cummulativeRating // ignore: cast_nullable_to_non_nullable
              as double,
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<SitTable>,
      isReservable: isReservable == freezed
          ? _value.isReservable
          : isReservable // ignore: cast_nullable_to_non_nullable
              as bool,
      ratings: ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<SitInRating>?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }

  @override
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value));
    });
  }
}

/// @nodoc
abstract class _$RestaurantCopyWith<$Res> implements $RestaurantCopyWith<$Res> {
  factory _$RestaurantCopyWith(
          _Restaurant value, $Res Function(_Restaurant) then) =
      __$RestaurantCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      String cusine,
      String phoneNumber,
      String photoUrl,
      DateTime closingTime,
      Location location,
      List<String>? tags,
      String? specialNote,
      double cummulativeRating,
      List<SitTable> tables,
      bool isReservable,
      List<SitInRating>? ratings,
      List<String>? photos});

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$RestaurantCopyWithImpl<$Res> extends _$RestaurantCopyWithImpl<$Res>
    implements _$RestaurantCopyWith<$Res> {
  __$RestaurantCopyWithImpl(
      _Restaurant _value, $Res Function(_Restaurant) _then)
      : super(_value, (v) => _then(v as _Restaurant));

  @override
  _Restaurant get _value => super._value as _Restaurant;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? cusine = freezed,
    Object? phoneNumber = freezed,
    Object? photoUrl = freezed,
    Object? closingTime = freezed,
    Object? location = freezed,
    Object? tags = freezed,
    Object? specialNote = freezed,
    Object? cummulativeRating = freezed,
    Object? tables = freezed,
    Object? isReservable = freezed,
    Object? ratings = freezed,
    Object? photos = freezed,
  }) {
    return _then(_Restaurant(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      cusine: cusine == freezed
          ? _value.cusine
          : cusine // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String,
      closingTime: closingTime == freezed
          ? _value.closingTime
          : closingTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      specialNote: specialNote == freezed
          ? _value.specialNote
          : specialNote // ignore: cast_nullable_to_non_nullable
              as String?,
      cummulativeRating: cummulativeRating == freezed
          ? _value.cummulativeRating
          : cummulativeRating // ignore: cast_nullable_to_non_nullable
              as double,
      tables: tables == freezed
          ? _value.tables
          : tables // ignore: cast_nullable_to_non_nullable
              as List<SitTable>,
      isReservable: isReservable == freezed
          ? _value.isReservable
          : isReservable // ignore: cast_nullable_to_non_nullable
              as bool,
      ratings: ratings == freezed
          ? _value.ratings
          : ratings // ignore: cast_nullable_to_non_nullable
              as List<SitInRating>?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Restaurant extends _Restaurant {
  const _$_Restaurant(
      {required this.id,
      required this.name,
      required this.cusine,
      required this.phoneNumber,
      required this.photoUrl,
      required this.closingTime,
      required this.location,
      required this.tags,
      this.specialNote,
      this.cummulativeRating = 0.0,
      required this.tables,
      required this.isReservable,
      required this.ratings,
      this.photos})
      : super._();

  factory _$_Restaurant.fromJson(Map<String, dynamic> json) =>
      _$$_RestaurantFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String cusine;
  @override
  final String phoneNumber;
  @override
  final String photoUrl;
  @override
  final DateTime closingTime;
  @override
  final Location location;
  @override
  final List<String>? tags;
  @override
  final String? specialNote;
  @JsonKey(defaultValue: 0.0)
  @override
  final double cummulativeRating;
  @override
  final List<SitTable> tables;
  @override
  final bool isReservable;
  @override
  final List<SitInRating>? ratings;
  @override
  final List<String>? photos;

  @override
  String toString() {
    return 'Restaurant(id: $id, name: $name, cusine: $cusine, phoneNumber: $phoneNumber, photoUrl: $photoUrl, closingTime: $closingTime, location: $location, tags: $tags, specialNote: $specialNote, cummulativeRating: $cummulativeRating, tables: $tables, isReservable: $isReservable, ratings: $ratings, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Restaurant &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.cusine, cusine) || other.cusine == cusine) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.closingTime, closingTime) ||
                other.closingTime == closingTime) &&
            (identical(other.location, location) ||
                other.location == location) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.specialNote, specialNote) ||
                other.specialNote == specialNote) &&
            (identical(other.cummulativeRating, cummulativeRating) ||
                other.cummulativeRating == cummulativeRating) &&
            const DeepCollectionEquality().equals(other.tables, tables) &&
            (identical(other.isReservable, isReservable) ||
                other.isReservable == isReservable) &&
            const DeepCollectionEquality().equals(other.ratings, ratings) &&
            const DeepCollectionEquality().equals(other.photos, photos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      cusine,
      phoneNumber,
      photoUrl,
      closingTime,
      location,
      const DeepCollectionEquality().hash(tags),
      specialNote,
      cummulativeRating,
      const DeepCollectionEquality().hash(tables),
      isReservable,
      const DeepCollectionEquality().hash(ratings),
      const DeepCollectionEquality().hash(photos));

  @JsonKey(ignore: true)
  @override
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      __$RestaurantCopyWithImpl<_Restaurant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RestaurantToJson(this);
  }
}

abstract class _Restaurant extends Restaurant {
  const factory _Restaurant(
      {required String id,
      required String name,
      required String cusine,
      required String phoneNumber,
      required String photoUrl,
      required DateTime closingTime,
      required Location location,
      required List<String>? tags,
      String? specialNote,
      double cummulativeRating,
      required List<SitTable> tables,
      required bool isReservable,
      required List<SitInRating>? ratings,
      List<String>? photos}) = _$_Restaurant;
  const _Restaurant._() : super._();

  factory _Restaurant.fromJson(Map<String, dynamic> json) =
      _$_Restaurant.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get cusine;
  @override
  String get phoneNumber;
  @override
  String get photoUrl;
  @override
  DateTime get closingTime;
  @override
  Location get location;
  @override
  List<String>? get tags;
  @override
  String? get specialNote;
  @override
  double get cummulativeRating;
  @override
  List<SitTable> get tables;
  @override
  bool get isReservable;
  @override
  List<SitInRating>? get ratings;
  @override
  List<String>? get photos;
  @override
  @JsonKey(ignore: true)
  _$RestaurantCopyWith<_Restaurant> get copyWith =>
      throw _privateConstructorUsedError;
}
