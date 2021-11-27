import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sitinapp/src/models/payment_model.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/services/db/reservation_database_service.dart';
import 'package:sitinapp/src/services/payments/flutterwave_payments.dart';
import 'package:uuid/uuid.dart';

part 'sitin_payment_event.dart';
part 'sitin_payment_state.dart';
part 'sitin_payment_bloc.freezed.dart';

class SitinPaymentBloc extends Bloc<SitinPaymentEvent, SitinPaymentState> {
  SitinPaymentBloc() : super(const SitinPaymentState.initial()) {
    on<InitiatePayment>((event, emit) async {
      emit(const SitinPaymentState.started());
      try {
        final result = await _paymentService.makePayment(event.reservation, event.context);

        if (result == PaymentStatus.FAIL) {
          emit(const SitinPaymentState.failed());
        } else if (result == PaymentStatus.CANCELLED) {
          emit(const SitinPaymentState.cancelled());
        } else {
          final reserved = event.reservation.copyWith(
            payment: SitInPayment(id: const Uuid().v4(), amount: event.reservation.price),
          );
          await _reservationDb.makeReservation(reservation: reserved);

          emit(SitinPaymentState.completed(reserved));
        }
      } catch (e) {
        emit(const SitinPaymentState.paymentError());
      }
    });
  }

//TODO:FIX DEPENDENCY INJECTION
  final _paymentService = FlutterwavePaymentGateway();
  final _reservationDb = ReservationDatabaseService();
}
