import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sitinapp/src/models/sitin_user.dart';

abstract class UserDatabaseServiceInterface {
  //!user crud
  Future<Customer> createUser(Customer user);
  Future<Customer> updateUser(Customer user);
  Future<Customer> getUser(String id);
}

class UserDatabaseService implements UserDatabaseServiceInterface {
  final db = FirebaseFirestore.instance;
  final CollectionReference userCollection = FirebaseFirestore.instance.collection("users");
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
}
