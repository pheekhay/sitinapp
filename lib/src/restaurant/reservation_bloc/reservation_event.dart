part of 'reservation_bloc.dart';

@freezed
class ReservationEvent with _$ReservationEvent {
  const factory ReservationEvent.getRestaurants({
    final double? latitude,
    final double? longitude,
  }) = GetRestaurants;
  const factory ReservationEvent.rateRestaurants({
    required final double stars,
    required final String customerId,
    required final String customerName,
    required final String restaurantId,
    required final String comment,
  }) = RateRestaurant;

  const factory ReservationEvent.updateTable({
    required final String restaurantId,
    required final SitTable table,
  }) = UpdateTable;

  const factory ReservationEvent.makeReservation({
    required final Reservation reservation,
  }) = MakeReservation;
  const factory ReservationEvent.getReservation(final String id) =
      GetReservation;

  const factory ReservationEvent.cancelReservation({
    required final String userId,
    required final String reservationId,
  }) = CancelReservation;
}
