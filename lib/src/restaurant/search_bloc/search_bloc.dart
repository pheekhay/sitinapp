import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/services/db/restuarant_database_service.dart';

part 'search_event.dart';
part 'search_state.dart';
// part 'search_bloc.g.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.db, this.reservationDb)
      : super(const SearchState.searchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchForRestaurant) {
        emit(const SearchState.searchLoading());
        if (event.name != null) {
          try {
            final results = await db.searchRestaurant(event.name!);
            emit(SearchState.searchLoaded(results));
          } catch (e) {
            emit(const SearchState.searchError());
          }
        } else {
          try {
            final results = await reservationDb.getRestaurants();
            if (results != null) {
              emit(SearchState.searchLoaded(results));
            }
          } catch (e) {
            emit(const SearchState.searchError());
          }
        }
      }
    });
  }

  final RestaurantDatabaseServiceInterface db;
  final RestaurantDatabaseServiceInterface reservationDb;
}
