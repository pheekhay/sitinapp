// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchEventTearOff {
  const _$SearchEventTearOff();

  SearchForRestaurant searchForRestaurant({String? name}) {
    return SearchForRestaurant(
      name: name,
    );
  }
}

/// @nodoc
const $SearchEvent = _$SearchEventTearOff();

/// @nodoc
mixin _$SearchEvent {
  String? get name => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) searchForRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? searchForRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? searchForRestaurant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchForRestaurant value) searchForRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchForRestaurant value)? searchForRestaurant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchForRestaurant value)? searchForRestaurant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchEventCopyWith<SearchEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res>;
  $Res call({String? name});
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res> implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  final SearchEvent _value;
  // ignore: unused_field
  final $Res Function(SearchEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $SearchForRestaurantCopyWith<$Res>
    implements $SearchEventCopyWith<$Res> {
  factory $SearchForRestaurantCopyWith(
          SearchForRestaurant value, $Res Function(SearchForRestaurant) then) =
      _$SearchForRestaurantCopyWithImpl<$Res>;
  @override
  $Res call({String? name});
}

/// @nodoc
class _$SearchForRestaurantCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res>
    implements $SearchForRestaurantCopyWith<$Res> {
  _$SearchForRestaurantCopyWithImpl(
      SearchForRestaurant _value, $Res Function(SearchForRestaurant) _then)
      : super(_value, (v) => _then(v as SearchForRestaurant));

  @override
  SearchForRestaurant get _value => super._value as SearchForRestaurant;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(SearchForRestaurant(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SearchForRestaurant implements SearchForRestaurant {
  const _$SearchForRestaurant({this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'SearchEvent.searchForRestaurant(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SearchForRestaurant &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  $SearchForRestaurantCopyWith<SearchForRestaurant> get copyWith =>
      _$SearchForRestaurantCopyWithImpl<SearchForRestaurant>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) searchForRestaurant,
  }) {
    return searchForRestaurant(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? name)? searchForRestaurant,
  }) {
    return searchForRestaurant?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? searchForRestaurant,
    required TResult orElse(),
  }) {
    if (searchForRestaurant != null) {
      return searchForRestaurant(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SearchForRestaurant value) searchForRestaurant,
  }) {
    return searchForRestaurant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SearchForRestaurant value)? searchForRestaurant,
  }) {
    return searchForRestaurant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SearchForRestaurant value)? searchForRestaurant,
    required TResult orElse(),
  }) {
    if (searchForRestaurant != null) {
      return searchForRestaurant(this);
    }
    return orElse();
  }
}

abstract class SearchForRestaurant implements SearchEvent {
  const factory SearchForRestaurant({String? name}) = _$SearchForRestaurant;

  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  $SearchForRestaurantCopyWith<SearchForRestaurant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SearchStateTearOff {
  const _$SearchStateTearOff();

  _SearchInitial searchInitial() {
    return const _SearchInitial();
  }

  _SearchLoading searchLoading() {
    return const _SearchLoading();
  }

  _SearchLoaded searchLoaded(List<Restaurant> restaurants) {
    return _SearchLoaded(
      restaurants,
    );
  }

  _SearchError searchError() {
    return const _SearchError();
  }
}

/// @nodoc
const $SearchState = _$SearchStateTearOff();

/// @nodoc
mixin _$SearchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(List<Restaurant> restaurants) searchLoaded,
    required TResult Function() searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) searchInitial,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_SearchError value) searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res> implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  final SearchState _value;
  // ignore: unused_field
  final $Res Function(SearchState) _then;
}

/// @nodoc
abstract class _$SearchInitialCopyWith<$Res> {
  factory _$SearchInitialCopyWith(
          _SearchInitial value, $Res Function(_SearchInitial) then) =
      __$SearchInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchInitialCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchInitialCopyWith<$Res> {
  __$SearchInitialCopyWithImpl(
      _SearchInitial _value, $Res Function(_SearchInitial) _then)
      : super(_value, (v) => _then(v as _SearchInitial));

  @override
  _SearchInitial get _value => super._value as _SearchInitial;
}

/// @nodoc

class _$_SearchInitial implements _SearchInitial {
  const _$_SearchInitial();

  @override
  String toString() {
    return 'SearchState.searchInitial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(List<Restaurant> restaurants) searchLoaded,
    required TResult Function() searchError,
  }) {
    return searchInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
  }) {
    return searchInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchInitial != null) {
      return searchInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) searchInitial,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
  }) {
    return searchInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchInitial != null) {
      return searchInitial(this);
    }
    return orElse();
  }
}

abstract class _SearchInitial implements SearchState {
  const factory _SearchInitial() = _$_SearchInitial;
}

/// @nodoc
abstract class _$SearchLoadingCopyWith<$Res> {
  factory _$SearchLoadingCopyWith(
          _SearchLoading value, $Res Function(_SearchLoading) then) =
      __$SearchLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchLoadingCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchLoadingCopyWith<$Res> {
  __$SearchLoadingCopyWithImpl(
      _SearchLoading _value, $Res Function(_SearchLoading) _then)
      : super(_value, (v) => _then(v as _SearchLoading));

  @override
  _SearchLoading get _value => super._value as _SearchLoading;
}

/// @nodoc

class _$_SearchLoading implements _SearchLoading {
  const _$_SearchLoading();

  @override
  String toString() {
    return 'SearchState.searchLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(List<Restaurant> restaurants) searchLoaded,
    required TResult Function() searchError,
  }) {
    return searchLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
  }) {
    return searchLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) searchInitial,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
  }) {
    return searchLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoading != null) {
      return searchLoading(this);
    }
    return orElse();
  }
}

abstract class _SearchLoading implements SearchState {
  const factory _SearchLoading() = _$_SearchLoading;
}

/// @nodoc
abstract class _$SearchLoadedCopyWith<$Res> {
  factory _$SearchLoadedCopyWith(
          _SearchLoaded value, $Res Function(_SearchLoaded) then) =
      __$SearchLoadedCopyWithImpl<$Res>;
  $Res call({List<Restaurant> restaurants});
}

/// @nodoc
class __$SearchLoadedCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchLoadedCopyWith<$Res> {
  __$SearchLoadedCopyWithImpl(
      _SearchLoaded _value, $Res Function(_SearchLoaded) _then)
      : super(_value, (v) => _then(v as _SearchLoaded));

  @override
  _SearchLoaded get _value => super._value as _SearchLoaded;

  @override
  $Res call({
    Object? restaurants = freezed,
  }) {
    return _then(_SearchLoaded(
      restaurants == freezed
          ? _value.restaurants
          : restaurants // ignore: cast_nullable_to_non_nullable
              as List<Restaurant>,
    ));
  }
}

/// @nodoc

class _$_SearchLoaded implements _SearchLoaded {
  const _$_SearchLoaded(this.restaurants);

  @override
  final List<Restaurant> restaurants;

  @override
  String toString() {
    return 'SearchState.searchLoaded(restaurants: $restaurants)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchLoaded &&
            const DeepCollectionEquality()
                .equals(other.restaurants, restaurants));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(restaurants));

  @JsonKey(ignore: true)
  @override
  _$SearchLoadedCopyWith<_SearchLoaded> get copyWith =>
      __$SearchLoadedCopyWithImpl<_SearchLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(List<Restaurant> restaurants) searchLoaded,
    required TResult Function() searchError,
  }) {
    return searchLoaded(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
  }) {
    return searchLoaded?.call(restaurants);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(restaurants);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) searchInitial,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
  }) {
    return searchLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchLoaded != null) {
      return searchLoaded(this);
    }
    return orElse();
  }
}

abstract class _SearchLoaded implements SearchState {
  const factory _SearchLoaded(List<Restaurant> restaurants) = _$_SearchLoaded;

  List<Restaurant> get restaurants;
  @JsonKey(ignore: true)
  _$SearchLoadedCopyWith<_SearchLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchErrorCopyWith<$Res> {
  factory _$SearchErrorCopyWith(
          _SearchError value, $Res Function(_SearchError) then) =
      __$SearchErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchErrorCopyWithImpl<$Res> extends _$SearchStateCopyWithImpl<$Res>
    implements _$SearchErrorCopyWith<$Res> {
  __$SearchErrorCopyWithImpl(
      _SearchError _value, $Res Function(_SearchError) _then)
      : super(_value, (v) => _then(v as _SearchError));

  @override
  _SearchError get _value => super._value as _SearchError;
}

/// @nodoc

class _$_SearchError implements _SearchError {
  const _$_SearchError();

  @override
  String toString() {
    return 'SearchState.searchError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _SearchError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() searchInitial,
    required TResult Function() searchLoading,
    required TResult Function(List<Restaurant> restaurants) searchLoaded,
    required TResult Function() searchError,
  }) {
    return searchError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
  }) {
    return searchError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? searchInitial,
    TResult Function()? searchLoading,
    TResult Function(List<Restaurant> restaurants)? searchLoaded,
    TResult Function()? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchInitial value) searchInitial,
    required TResult Function(_SearchLoading value) searchLoading,
    required TResult Function(_SearchLoaded value) searchLoaded,
    required TResult Function(_SearchError value) searchError,
  }) {
    return searchError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
  }) {
    return searchError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchInitial value)? searchInitial,
    TResult Function(_SearchLoading value)? searchLoading,
    TResult Function(_SearchLoaded value)? searchLoaded,
    TResult Function(_SearchError value)? searchError,
    required TResult orElse(),
  }) {
    if (searchError != null) {
      return searchError(this);
    }
    return orElse();
  }
}

abstract class _SearchError implements SearchState {
  const factory _SearchError() = _$_SearchError;
}
