import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:sitinapp/src/models/payment_model.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'reservation.g.dart';
part 'reservation.freezed.dart';

@freezed
@HiveType(typeId: 1)
class Reservation with _$Reservation {
  @JsonSerializable(explicitToJson: true)
  const factory Reservation({
    @HiveField(0) required String id,
    @HiveField(1) required String customerId,
    @HiveField(2) required String restaurantId,
    @HiveField(3) required String customerName,
    @HiveField(4) required DateTime reservedDate,
    @HiveField(5) required double price,
    @HiveField(6) required SitTable table,
    @HiveField(7) required bool cancelled,
    @HiveField(8) SitInPayment? payment,
  }) = _Reservation;
  factory Reservation.fromJson(Map<String, dynamic> json) =>
      _$ReservationFromJson(json);
}
