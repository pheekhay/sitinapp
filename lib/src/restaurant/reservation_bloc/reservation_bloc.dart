import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/models/sitin_rating.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:sitinapp/src/services/db/reservation_database_service.dart';
import 'package:sitinapp/src/services/db/restuarant_database_service.dart';
import 'package:sitinapp/src/services/db/user_database_service.dart';
import 'package:uuid/uuid.dart';

part 'reservation_event.dart';
part 'reservation_state.dart';
part 'reservation_bloc.freezed.dart';

class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc({required this.reservationDbs, required this.restaurantDbs})
      : super(const ReservationState.initial()) {
    on<ReservationEvent>((event, emit) async {
      if (event is GetRestaurants) {
        emit(const ReservationState.loading());
        try {
          final restaurants = await restaurantDbs.getRestaurants(long: event.longitude, lat: event.latitude);

          emit(ReservationState.loadedReservationList(restaurants));
        } catch (e) {
          emit(ReservationState.error(e.toString()));
        }
      } else if (event is RateRestaurant) {
        emit(const ReservationState.loading());
        try {
          SitInRating rating = SitInRating(
            id: const Uuid().v4(),
            customerId: event.customerId,
            rateDate: DateTime.now(),
            stars: event.stars,
            customerName: event.customerName,
            review: event.comment,
          );
          final restaurant = await restaurantDbs.rateRestaurant(restaurantId: event.restaurantId, rating: rating);
          emit(ReservationState.loadedRestaurant(restaurant));
        } catch (e) {
          emit(ReservationState.error(e.toString()));
        }
      } else if (event is UpdateTable) {
        emit(const ReservationState.loading());
        try {
          final restaurant = await restaurantDbs.updateTable(restaurantId: event.restaurantId, table: event.table);
          emit(ReservationState.loadedRestaurant(restaurant));
        } catch (e) {
          emit(ReservationState.error(e.toString()));
        }
      } else if (event is MakeReservation) {
        emit(const ReservationState.loading());
        try {
          await reservationDbs.makeReservation(reservation: event.reservation);
        } catch (e) {
          emit(ReservationState.error(e.toString()));
        }
      } else if (event is GetReservation) {
        emit(const ReservationState.loading());
        try {
          await reservationDbs.getReservation(event.id);
        } catch (e) {
          emit(ReservationState.error(e.toString()));
        }
      } else if (event is CancelReservation) {
        emit(const ReservationState.loading());
        try {
          await reservationDbs.cancelReservation(reservationId: event.reservationId);
        } catch (e) {
          emit(ReservationState.error(e.toString()));
        }
      }
    });
  }

  final RestaurantDatabaseServiceInterface restaurantDbs;
  final ReservationDatabaseServiceInterface reservationDbs;
}
