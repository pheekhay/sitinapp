import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sitinapp/src/models/reservation.dart';

abstract class ReservationDatabaseServiceInterface {
  ///updated reservation database with any field
  Future<void> updateReservation(Reservation reservation);

  Stream<List<Reservation>?> liveReservations(String customerId);
  Stream<Reservation?> liveReservation(String customerId, String reservationId);

  ///update reservation customerstatus field to [seated](transcation process)
  Future<void> arrivedAtReservedRestaurant({required String withReservationId});

  ///update reservation customerstatus field to [done] and and status field to completed(transcation process)
  Future<void> finishedWithReservation({required String withReservationId});

  ///add reservation to database [reservations ]collection
  Future<Reservation> makeReservation({required Reservation reservation});

  ///update reservation status to cancelled /n this is a transaction process
  Future<Reservation> cancelReservation({required String reservationId});

  ///retrieve a single [reservation]
  Future<Reservation?> getReservation(String reservationId);
}

class ReservationDatabaseService implements ReservationDatabaseServiceInterface {
  final CollectionReference reservationCollection = FirebaseFirestore.instance.collection("reservations");

  @override
  Stream<Reservation?> liveReservation(String customerId, String reservationId) {
    return reservationCollection.where("customerId", isEqualTo: customerId).where("id", isEqualTo: reservationId).snapshots().map((event) {
      if (event.docs.isNotEmpty) {
        var doc = event.docs.first as Map<String, dynamic>?;
        if (doc != null) {
          final reservation = Reservation.fromJson(doc);
          return reservation;
        }
      }
    });
  }

  @override
  Stream<List<Reservation>?> liveReservations(String customerId) {
    List<Reservation>? reservations;

    return reservationCollection.where("customerId", isEqualTo: customerId).snapshots().map((event) {
      if (event.docs.isNotEmpty) {
        var docs = event.docs as List<Map<String, dynamic>?>;
        for (var doc in docs) {
          if (doc != null) {
            final reservation = Reservation.fromJson(doc);
            if (reservations != null) {
              reservations!.add(reservation);
            } else {
              reservations = [reservation];
            }
          } else {
            continue;
          }
        }
        return reservations;
      } else {
        return reservations;
      }
    });
  }

  @override
  Future<void> arrivedAtReservedRestaurant({required String withReservationId}) async {
// Create a reference to the document the transaction will use
    DocumentReference documentReference = reservationCollection.doc(withReservationId);

    return FirebaseFirestore.instance.runTransaction((transaction) async {
      // Get the document
      DocumentSnapshot snapshot = await transaction.get(documentReference);

      if (!snapshot.exists) {
        throw Exception("Reservation does not exist!");
      }

      // Perform an update on the document
      transaction.update(documentReference, {'customerStatus': "seated"});

      // Return the new count
    }).catchError((error) => log("Failed to update reservation customerStatus: $error"));
  }

  @override
  Future<void> finishedWithReservation({required String withReservationId}) {
    // Create a reference to the document the transaction will use
    DocumentReference documentReference = reservationCollection.doc(withReservationId);

    return FirebaseFirestore.instance.runTransaction((transaction) async {
      // Get the document
      DocumentSnapshot snapshot = await transaction.get(documentReference);

      if (!snapshot.exists) {
        throw Exception("Reservation does not exist!");
      }

      // Perform an update on the document
      transaction.update(documentReference, {'customerStatus': "done"});
      transaction.update(documentReference, {'status': "completed"});

      // Return the new count
    }).catchError((error) => log("Failed to update reservation customerStatus: $error"));
  }

  @override
  Future<Reservation> cancelReservation({required String reservationId}) {
    DocumentReference documentReference = reservationCollection.doc(reservationId);

    return FirebaseFirestore.instance.runTransaction((transaction) async {
      // Get the document
      DocumentSnapshot snapshot = await transaction.get(documentReference);

      if (!snapshot.exists) {
        throw Exception("Reservation does not exist!");
      }
      final data = snapshot.data()! as Map<String, dynamic>;
      data["status"] = "cancelled";

      final reserved = Reservation.fromJson(data);
      // Perform an update on the document
      transaction.update(documentReference, {'status': "cancelled"});

      return reserved;
      // Return the new count
    }).catchError((error) => log("Failed to update reservation customerStatus: $error"));
  }

  @override
  Future<Reservation?> getReservation(String reservationId) async {
    final query = await reservationCollection.where("id", isEqualTo: reservationId).get();
    if (query.docs.isNotEmpty) {
      final doc = query.docs.first;
      final result = doc.data() as Map<String, dynamic>;
      return Reservation.fromJson(result);
    }
  }

  @override
  Future<Reservation> makeReservation({required Reservation reservation}) async {
    await reservationCollection.doc(reservation.id).set(reservation.toJson());

    return reservation;
  }

  @override
  Future<void> updateReservation(Reservation reservation) {
    DocumentReference documentReference = reservationCollection.doc(reservation.id);

    return FirebaseFirestore.instance.runTransaction((transaction) async {
      // Get the document
      DocumentSnapshot snapshot = await transaction.get(documentReference);

      if (!snapshot.exists) {
        throw Exception("Reservation does not exist!");
      }

      // Perform an update on the document
      transaction.update(documentReference, reservation.toJson());

      return reservation;
      // Return the new count
    }).catchError((error) => log("Failed to update reservation customerStatus: $error"));
  }
}
