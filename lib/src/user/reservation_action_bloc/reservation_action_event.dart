part of 'reservation_action_bloc.dart';

@freezed
class ReservationActionEvent with _$ReservationActionEvent {
  // const factory ReservationActionEvent.started() = _Started;
  const factory ReservationActionEvent.streamReservations(String customerId) = _StreamReservations;

  ///send an event to update database customer status to seated,
  const factory ReservationActionEvent.loadedReservationList(List<Reservation>? reservations) = _LoadedReservationList;

  const factory ReservationActionEvent.arrived(String id) = _Arrived;
  const factory ReservationActionEvent.done(String id) = _Done;
}
