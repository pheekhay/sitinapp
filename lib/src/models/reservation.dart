import 'package:hive/hive.dart';
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
    @HiveField(7) @Default(ReservationStatus.pending) ReservationStatus status,
    @HiveField(8) SitInPayment? payment,
    @HiveField(9) required String restaurantName,
    @HiveField(10) @Default(CustomerStatus.absent) CustomerStatus customerStatus,
    @HiveField(11) required String restaurantPhoto,
  }) = _Reservation;
  factory Reservation.fromJson(Map<String, dynamic> json) => _$ReservationFromJson(json);
}

@HiveType(typeId: 4)
enum ReservationStatus {
  @HiveField(0)
  pending,
  @HiveField(1)
  completed,
  @HiveField(2)
  cancelled,
}
@HiveType(typeId: 5)
enum CustomerStatus {
  @HiveField(0)
  seated,
  @HiveField(1)
  done,
  @HiveField(2)
  absent,
}
