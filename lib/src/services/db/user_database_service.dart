import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sitinapp/src/models/reservation.dart';
import 'package:sitinapp/src/models/sitin_user.dart';

abstract class UserDatabaseServiceInterface {
  //!user crud
  Future<Customer> createUser(Customer user);
  Future<Customer> updateUser(Customer user);
  Future<Customer> getUser(String id);

  //!reservation
  Future<Reservation> makeReservation({required Reservation reservation});
  Future<Reservation> cancelReservation(
      {required String userId, required String reservationId});
  Future<List<Reservation>?> getReservation(String customerId);
}

class UserDatabaseService implements UserDatabaseServiceInterface {
  final db = FirebaseFirestore.instance;
  final CollectionReference userCollection =
      FirebaseFirestore.instance.collection("users");
  @override
  Future<Customer> createUser(Customer user) async {
    await userCollection.doc(user.id).set(user.toJson());
    return user;
  }

  @override
  Future<Customer> updateUser(Customer user) async {
    await userCollection.doc(user.id).update(user.toJson());
    return user;
  }

  @override
  Future<Customer> getUser(String id) async {
    final result = await userCollection.doc(id).get();
    if (result.exists) {
      final data = result.data() as Map<String, dynamic>?;
      if (data != null) {
        return Customer.fromJson(data);
      } else {
        throw ErrorDescription("User data is null");
      }
    } else {
      throw ErrorDescription("User Document does not exist");
    }
  }

  @override
  Future<List<Reservation>?> getReservation(String customerId) async {
    final result = await getUser(customerId);
    return result.reservations;
  }

  @override
  Future<Reservation> makeReservation(
      {required Reservation reservation}) async {
        
    await userCollection.doc(reservation.customerId).update({
      "reservations": FieldValue.arrayUnion([reservation.toJson()])
    });
    return reservation;
  }

  @override
  Future<Reservation> cancelReservation(
      {required String userId, required String reservationId}) async {
    final user = await getUser(userId);
    Reservation? reserve = user.reservations != null?
        .where((reservation) => reservation.id == reservationId)
        .first;
      
      reserve= Reservation(cancelled: true,id :reserve!.id,customerId: reserve.customerId,reservedDate: reserve.reservedDate,restaurantId: reserve.restaurantId,table: reserve.table,price: reserve.price,customerName: reserve.customerName);
        final index= user.reservations?.indexWhere((element) => element.id==reservationId);
        user.reservations?[index!]=reserve;
      await updateUser(user);
      return reserve;
    
  }
}
