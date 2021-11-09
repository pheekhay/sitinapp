part of 'reservation_bloc.dart';

@freezed
class ReservationState with _$ReservationState {
  const factory ReservationState.initial() = _ReservationInitial;
  const factory ReservationState.loading() = _LoadingReservation;
  const factory ReservationState.loadedReservationList(
      final List<Restaurant>? restaurants) = _LoadedReservationList;
  const factory ReservationState.loadedRestaurant(final Restaurant restaurant) =
      _LoadedRestaurant;
  const factory ReservationState.error(final String err) = _ReservationError;
}
