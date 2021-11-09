import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sitinapp/src/models/sitin_rating.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/models/sitin_table.dart';

abstract class RestaurantDatabaseServiceInterface {
  //!restaurant
  Future<List<Restaurant>?> getRestaurants({double? long, double? lat});
  Future<Restaurant> updateTable(
      {required String restaurantId, required SitTable table});
  Future<Restaurant> rateRestaurant(
      {required String restaurantId, required SitInRating rating});

  Future<List<Restaurant>> searchRestaurant(String name);

  Future<Restaurant?> getRestaurant(String id);
}

class RestuarantDatabaseService implements RestaurantDatabaseServiceInterface {
  final db = FirebaseFirestore.instance;
  final CollectionReference restaurants =
      FirebaseFirestore.instance.collection("restaurants");

  @override
  Future<List<Restaurant>?> getRestaurants({double? long, double? lat}) async {
    List<Restaurant> restaurantResults = [];
    if (long != null && lat != null) {
      final snapshot = await restaurants
          .where("location.lat", isEqualTo: lat)
          .where("location.long", isEqualTo: long)
          .limit(15)
          .get();
      if (snapshot.docs.isNotEmpty) {
        for (var doc in snapshot.docs) {
          final result = doc.data() as Map<String, dynamic>?;
          if (result != null) {
            restaurantResults.add(Restaurant.fromJson(result));
          }
        }
      } else {
        return null;
      }
    } else {
      final snapshot = await restaurants.limit(100).get();
      if (snapshot.docs.isNotEmpty) {
        for (var doc in snapshot.docs) {
          final result = doc.data() as Map<String, dynamic>?;
          if (result != null) {
            restaurantResults.add(Restaurant.fromJson(result));
          }
        }
      } else {
        return null;
      }
    }
    return restaurantResults;
  }

  @override
  Future<Restaurant> rateRestaurant(
      {required String restaurantId, required SitInRating rating}) async {
    final restaurantRef = restaurants.doc(restaurantId);
    return db.runTransaction<Restaurant>((transaction) async {
      final restaurantDocument = await transaction.get(restaurantRef);

      if (!restaurantDocument.exists) {
        throw ErrorDescription("Could Not find restuarant");
      }
      final result = restaurantDocument.data() as Map<String, dynamic>?;
      if (result != null) {
        Restaurant restaurant = Restaurant.fromJson(result);
        if (restaurant.ratings != null) {
          restaurant = Restaurant(
              id: restaurant.id,
              name: restaurant.name,
              photoUrl: restaurant.photoUrl,
              photos: restaurant.photos,
              phoneNumber: restaurant.phoneNumber,
              cusine: restaurant.cusine,
              closingTime: restaurant.closingTime,
              location: restaurant.location,
              tables: restaurant.tables,
              tags: restaurant.tags,
              isReservable: restaurant.isReservable,
              cummulativeRating: restaurant.cummulativeRating,
              ratings: [rating]);
        } else {
          restaurant.ratings!.add(rating);
        }
        transaction.update(restaurantRef, restaurant.toJson());
        return restaurant;
      } else {
        throw ErrorDescription("rateRestaurant : Restuarant Data is null");
      }
    }).catchError(() => null);
  }

  @override
  Future<Restaurant> updateTable(
      {required String restaurantId, required SitTable table}) {
    final restaurantRef = restaurants.doc(restaurantId);
    return db.runTransaction<Restaurant>((transaction) async {
      final restaurantDocument = await transaction.get(restaurantRef);

      if (!restaurantDocument.exists) {
        throw ErrorDescription("Could Not find restuarant");
      }
      final result = restaurantDocument.data() as Map<String, dynamic>?;
      if (result != null) {
        Restaurant restaurant = Restaurant.fromJson(result);

        List<SitTable> tables = restaurant.tables;

        final index = tables.indexWhere((tab) => tab.tableNo == table.tableNo);
        tables[index] = table;
        restaurant = Restaurant(
            id: restaurant.id,
            name: restaurant.name,
            photoUrl: restaurant.photoUrl,
            photos: restaurant.photos,
            phoneNumber: restaurant.phoneNumber,
            cusine: restaurant.cusine,
            closingTime: restaurant.closingTime,
            location: restaurant.location,
            tables: tables,
            tags: restaurant.tags,
            isReservable: restaurant.isReservable,
            cummulativeRating: restaurant.cummulativeRating,
            ratings: restaurant.ratings);

        transaction.update(restaurantRef, restaurant.toJson());
        return restaurant;
      } else {
        throw ErrorDescription("rateRestaurant : Restuarant Data is null");
      }
    }).catchError(() {});
  }

  @override
  Future<List<Restaurant>> searchRestaurant(String name) async {
    List<Restaurant> found = [];
    final results = await restaurants
        .where("name", isGreaterThanOrEqualTo: name)
        .where("name", isLessThanOrEqualTo: name + "\uf8ff")
        .get();
    if (results.docs.isNotEmpty) {
      for (var doc in results.docs) {
        final data = doc.data() as Map<String, dynamic>;
        final res = Restaurant.fromJson(data);
        found.add(res);
      }
    }

    return found;
  }

  @override
  Future<Restaurant?> getRestaurant(String id) async {
    final result = await restaurants.doc(id).get();
    if (result.exists) {
      final doc = result.data() as Map<String, dynamic>;
      return Restaurant.fromJson(doc);
    }
  }
}
