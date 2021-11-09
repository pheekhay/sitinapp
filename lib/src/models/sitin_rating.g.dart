// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sitin_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SitInRating _$$_SitInRatingFromJson(Map<String, dynamic> json) =>
    _$_SitInRating(
      id: json['id'] as String,
      customerId: json['customerId'] as String,
      customerName: json['customerName'] as String,
      rateDate: json['rateDate'] == null
          ? null
          : DateTime.parse(json['rateDate'] as String),
      stars: (json['stars'] as num).toDouble(),
      review: json['review'] as String?,
    );

Map<String, dynamic> _$$_SitInRatingToJson(_$_SitInRating instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customerId': instance.customerId,
      'customerName': instance.customerName,
      'rateDate': instance.rateDate?.toIso8601String(),
      'stars': instance.stars,
      'review': instance.review,
    };
