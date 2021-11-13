import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/models/sitin_location.dart';
import 'package:sitinapp/src/models/sitin_rating.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sitinapp/src/services/rating_service.dart';
part 'restaurant.g.dart';
part 'restaurant.freezed.dart';

@freezed
class Restaurant with _$Restaurant {
  const Restaurant._();
  @JsonSerializable(explicitToJson: true)
  const factory Restaurant({
    required String id,
    required String name,
    required String cusine,
    required String phoneNumber,
    required String photoUrl,
    required DateTime closingTime,
    required Location location,
    required List<String>? tags,
    String? specialNote,
    @Default(0.0) double cummulativeRating,
    required List<SitTable> tables,
    required bool isReservable,
    required List<SitInRating>? ratings,
    List<Reservation>? reserations,
    List<String>? photos,
  }) = _Restaurant;
  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, List<int>> totalWeights() {
    final service = RatingService();
    if (ratings != null) {
      return service.totalWeights(ratings!).remove("w")
          as Map<String, List<int>>;
    } else {
      return {
        "stars": [0, 0, 0, 0, 0]
      };
    }
  }
}
