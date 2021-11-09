import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/services/db/restuarant_database_service.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(this.db, this.reservationDb) : super(SearchInitial()) {
    on<SearchEvent>((event, emit) async {
      if (event is SearchForRestaurant) {
        emit(SearchLoading());
        if (event.name != null) {
          try {
            final results = await db.searchRestaurant(event.name!);
            emit(SearchLoaded(results));
          } catch (e) {
            emit(SearchError());
          }
        } else {
          try {
            final results = await reservationDb.getRestaurants();
            if (results != null) {
              emit(SearchLoaded(results));
            }
          } catch (e) {
            emit(SearchError());
          }
        }
      }
    });
  }

  final RestaurantDatabaseServiceInterface db;
  final RestaurantDatabaseServiceInterface reservationDb;
}
