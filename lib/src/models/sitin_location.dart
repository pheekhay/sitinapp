import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sitin_location.g.dart';
part 'sitin_location.freezed.dart';

@freezed
class Location with _$Location {
  @JsonSerializable(explicitToJson: true)
  const factory Location({
    required String name,
    required double lat,
    required double long,
  }) = _Location;
  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}
