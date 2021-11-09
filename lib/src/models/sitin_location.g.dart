// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitin_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      name: json['name'] as String,
      lat: (json['lat'] as num).toDouble(),
      long: (json['long'] as num).toDouble(),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'name': instance.name,
      'lat': instance.lat,
      'long': instance.long,
    };
