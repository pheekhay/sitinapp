import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sitin_user.freezed.dart';
part 'sitin_user.g.dart';

@freezed
@HiveType(typeId: 0)
class Customer with _$Customer {
  // const Customer._();
  @JsonSerializable(explicitToJson: true)
  const factory Customer({
    @HiveField(0) required String id,
    @HiveField(1) required String? name,
    @HiveField(2) String? phoneNumber,
    @HiveField(3) List<Reservation>? reservations,
    @HiveField(4) @Default(false) bool isAnonymous,
    @HiveField(5) String? email,
  }) = _Customer;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
}
