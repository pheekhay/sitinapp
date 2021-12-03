part of 'reservation_action_bloc.dart';

@freezed
class ReservationActionState with _$ReservationActionState {
  const factory ReservationActionState.initial() = Initial;
  const factory ReservationActionState.loadedReservation(List<Reservation>? reservations) = LoadedReservation;
  const factory ReservationActionState.loadingReservation() = LoadingReservation;
  const factory ReservationActionState.doneAction() = DoneAction;
  const factory ReservationActionState.reservationActionError(String msg) = ReservationActionError;
}
