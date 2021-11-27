import 'package:get_it/get_it.dart';
import 'package:sitinapp/src/restaurant/reservation_bloc/reservation_bloc.dart';
import 'package:sitinapp/src/restaurant/search_bloc/search_bloc.dart';
import 'package:sitinapp/src/services/db/local/bloc/cached_bloc.dart';
import 'package:sitinapp/src/services/db/local/user_cache.dart';
import 'package:sitinapp/src/services/db/reservation_database_service.dart';
import 'package:sitinapp/src/services/db/restuarant_database_service.dart';
import 'package:sitinapp/src/services/db/user_database_service.dart';
import 'package:sitinapp/src/user/user_Bloc/user_bloc.dart';

GetIt getDep = GetIt.instance;

Future<void> initDep() async {
  getDep.registerFactory<UserDatabaseServiceInterface>(() => UserDatabaseService());
  getDep.registerFactory<RestaurantDatabaseServiceInterface>(() => RestuarantDatabaseService());
  getDep.registerFactory<ReservationDatabaseServiceInterface>(() => ReservationDatabaseService());

  getDep.registerFactory<LocalCacheInterface>(() => LocalCache());
  getDep.registerFactory(() => UserBloc(getDep(), getDep()));
  getDep.registerFactory(() => CachedBloc(getDep()));
  getDep.registerFactory(() => ReservationBloc(restaurantDbs: getDep(), reservationDbs: getDep()));

  getDep.registerFactory(() => SearchBloc(getDep(), getDep()));
}
