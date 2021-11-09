import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sitin_rating.g.dart';
part 'sitin_rating.freezed.dart';

@freezed
class SitInRating with _$SitInRating {
  @JsonSerializable(explicitToJson: true)
  const factory SitInRating({
    required String id,
    required String customerId,
    required String customerName,
    required DateTime? rateDate,
    required double stars,
    String? review,
  }) = _SitInRating;
  factory SitInRating.fromJson(Map<String, dynamic> json) =>
      _$SitInRatingFromJson(json);
}
