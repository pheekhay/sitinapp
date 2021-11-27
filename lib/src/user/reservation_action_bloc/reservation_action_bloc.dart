import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/services/db/reservation_database_service.dart';

part 'reservation_action_event.dart';
part 'reservation_action_state.dart';
part 'reservation_action_bloc.freezed.dart';

class ReservationActionBloc extends Bloc<ReservationActionEvent, ReservationActionState> {
  ReservationActionBloc(this.reservationDbs) : super(const ReservationActionState.initial()) {
    on<_StreamReservations>((event, emit) {
      emit(const ReservationActionState.loadingReservation());
      reservationDbs.liveReservations(event.customerId).listen((reservations) {
        emit(ReservationActionState.loadedReservation(reservations));
      }, onError: (err) {
        emit(ReservationActionState.reservationActionError(err.toString()));
      });
    });
    on<_Arrived>((event, emit) async {
      try {
        await reservationDbs.arrivedAtReservedRestaurant(withReservationId: event.id);
      } catch (e) {
        emit(
          const ReservationActionState.reservationActionError(
              "Could Not update reservation,check your connection and try again"),
        );
      }
    });
    on<_Done>((event, emit) async {
      try {
        await reservationDbs.finishedWithReservation(withReservationId: event.id);
      } catch (e) {
        emit(
          const ReservationActionState.reservationActionError(
              "Could Not complete reservation,check your connection and try again"),
        );
      }
    });
  }

  final ReservationDatabaseServiceInterface reservationDbs;
}
