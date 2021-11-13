// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Restaurant _$$_RestaurantFromJson(Map<String, dynamic> json) =>
    _$_Restaurant(
      id: json['id'] as String,
      name: json['name'] as String,
      cusine: json['cusine'] as String,
      phoneNumber: json['phoneNumber'] as String,
      photoUrl: json['photoUrl'] as String,
      closingTime: DateTime.parse(json['closingTime'] as String),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      specialNote: json['specialNote'] as String?,
      cummulativeRating: (json['cummulativeRating'] as num?)?.toDouble() ?? 0.0,
      tables: (json['tables'] as List<dynamic>)
          .map((e) => SitTable.fromJson(e as Map<String, dynamic>))
          .toList(),
      isReservable: json['isReservable'] as bool,
      ratings: (json['ratings'] as List<dynamic>?)
          ?.map((e) => SitInRating.fromJson(e as Map<String, dynamic>))
          .toList(),
      reserations: (json['reserations'] as List<dynamic>?)
          ?.map((e) => Reservation.fromJson(e as Map<String, dynamic>))
          .toList(),
      photos:
          (json['photos'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_RestaurantToJson(_$_Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'cusine': instance.cusine,
      'phoneNumber': instance.phoneNumber,
      'photoUrl': instance.photoUrl,
      'closingTime': instance.closingTime.toIso8601String(),
      'location': instance.location.toJson(),
      'tags': instance.tags,
      'specialNote': instance.specialNote,
      'cummulativeRating': instance.cummulativeRating,
      'tables': instance.tables.map((e) => e.toJson()).toList(),
      'isReservable': instance.isReservable,
      'ratings': instance.ratings?.map((e) => e.toJson()).toList(),
      'reserations': instance.reserations?.map((e) => e.toJson()).toList(),
      'photos': instance.photos,
    };
