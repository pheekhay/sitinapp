import 'dart:async';
import 'dart:developer';

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
      reservationstream = reservationDbs.liveReservations(event.customerId).listen((reservations) {
        // reservationstream?.cancel();
        add(ReservationActionEvent.loadedReservationList(reservations));
      }, onError: (err) {
        log("reservationaction bloc : ${err.toString()}");
        emit(ReservationActionState.reservationActionError(err.toString()));
      });
      log("Im done with this shit");
    });
    on<_LoadedReservationList>((event, emit) => emit(ReservationActionState.loadedReservation(event.reservations)));

    on<_Arrived>((event, emit) async {
      try {
        await reservationDbs.arrivedAtReservedRestaurant(withReservationId: event.id);
        emit(const ReservationActionState.doneAction());
      } catch (e) {
        emit(
          const ReservationActionState.reservationActionError("Could Not update reservation,check your connection and try again"),
        );
      }
    });
    on<_Done>((event, emit) async {
      try {
        await reservationDbs.finishedWithReservation(withReservationId: event.id);
        emit(const ReservationActionState.doneAction());
      } catch (e) {
        emit(
          const ReservationActionState.reservationActionError("Could Not complete reservation,check your connection and try again"),
        );
      }
    });
  }
  final ReservationDatabaseServiceInterface reservationDbs;
  StreamSubscription? reservationstream;

  @override
  Future<void> close() {
    reservationstream?.cancel();
    return super.close();
  }

  @override
  void onChange(Change<ReservationActionState> change) {
    log("currentstate :" + change.currentState.toString());
    log("nextState :" + change.nextState.toString());
    super.onChange(change);
  }
}
