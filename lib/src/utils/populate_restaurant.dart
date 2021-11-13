import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:sitinapp/src/models/restaurant.dart';
import 'package:sitinapp/src/models/sitin_location.dart';
import 'package:sitinapp/src/models/sitin_rating.dart';
import 'package:sitinapp/src/models/sitin_table.dart';
import 'package:uuid/uuid.dart';

class PopulateRestaurant {
  CollectionReference restaurantCollection =
      FirebaseFirestore.instance.collection('restaurants');

  Future<void> batchWrite() async {
    WriteBatch batch = FirebaseFirestore.instance.batch();
    try {
      for (var res in popRes) {
        final result = restaurantCollection.doc(res.id);
        batch.set(result, res.toJson());
      }
    } catch (e) {
      log("batch : ${e.toString()}");
    }
    return batch.commit();
  }
}

final List<Restaurant> popRes = [
  Restaurant(
      id: const Uuid().v1(),
      name: "PotBelly Shack",
      cusine: "Italian",
      phoneNumber: "+2335678232",
      photoUrl:
          "https://www.iloveqatar.net/public/images/local/open-restaurent-2.jpeg",
      closingTime: DateTime(2021, 11, 12, 00, 30),
      location: const Location(
        lat: 5.55602,
        long: -0.1969,
        name: "Kasoa",
      ),
      tags: ["breakfast", "american"],
      cummulativeRating: 4.6,
      tables: [
        const SitTable(tableNo: 2, numberOfSeats: 2, amount: 20),
        const SitTable(tableNo: 1, numberOfSeats: 5, amount: 25)
      ],
      isReservable: true,
      ratings: [
        SitInRating(
          id: const Uuid().v1(),
          customerId: "S0hISWhQgDTUdGjk5CD5ajX6nS42",
          customerName: "Yaw Parry",
          rateDate: DateTime.now(),
          stars: 3.6,
        )
      ],
      photos: [
        "https://www.iloveqatar.net/public/images/local/open-restaurent-2.jpeg",
        "https://www.iloveqatar.net/public/images/local/open-restaurent-2.jpeg"
      ],
      specialNote:
          "Fill your belly till you can eat no more and come back again and fill your body with peace"),
  Restaurant(
      id: const Uuid().v1(),
      name: "Milain Eatery",
      cusine: "continental",
      phoneNumber: "+23325746132",
      photoUrl:
          "https://citrusrestaurants.com/wp-content/uploads/2019/10/IMG_1753.jpg",
      closingTime: DateTime(2021, 11, 12, 22, 30),
      location: const Location(
        lat: 5.2345,
        long: -0.1269,
        name: "East Legon",
      ),
      tags: ["breakfast", "american", "african", "dinner"],
      cummulativeRating: 3.6,
      tables: [
        const SitTable(tableNo: 2, numberOfSeats: 2, amount: 20),
        const SitTable(tableNo: 1, numberOfSeats: 3, amount: 25),
        const SitTable(tableNo: 4, numberOfSeats: 10, amount: 30),
        const SitTable(tableNo: 3, numberOfSeats: 5, amount: 35)
      ],
      isReservable: true,
      ratings: [
        SitInRating(
          id: const Uuid().v1(),
          customerId: "S0hISWhQgDTUdGjk5CD5ajX6nS42",
          customerName: "Yaw Parry",
          rateDate: DateTime.now(),
          stars: 3.6,
        )
      ],
      photos: [
        "http://meqasa.com/blog/wp-content/uploads/2016/10/noble.png",
        "https://files.ofadaa.com/uploads/restaurant_cover_image/file/3687/header_citrus-restaurant-accra.jpg"
      ],
      specialNote: "We are simply the best"),
  Restaurant(
      id: const Uuid().v1(),
      name: "Noble House",
      cusine: "Continental",
      phoneNumber: "+23352318232",
      photoUrl:
          "http://meqasa.com/blog/wp-content/uploads/2016/10/potbelly-1.png",
      closingTime: DateTime(2021, 11, 12, 20, 30),
      location: const Location(
        lat: 5.55602,
        long: -0.1969,
        name: "Kasoa",
      ),
      tags: ["breakfast", "american"],
      cummulativeRating: 2.0,
      tables: [
        const SitTable(tableNo: 2, numberOfSeats: 2, amount: 20),
        const SitTable(tableNo: 1, numberOfSeats: 5, amount: 25),
        const SitTable(tableNo: 7, numberOfSeats: 8, amount: 55),
        const SitTable(tableNo: 12, numberOfSeats: 20, amount: 100),
        const SitTable(tableNo: 22, numberOfSeats: 30, amount: 140),
      ],
      isReservable: true,
      ratings: [
        SitInRating(
          id: const Uuid().v1(),
          customerId: "S0hISWhQgDTUdGjk5CD5ajX6nS42",
          customerName: "Yaw Parry",
          rateDate: DateTime.now(),
          stars: 4.6,
        )
      ],
      photos: [
        "https://beautifulghana.com/wp-content/uploads/2020/05/13248589_840018166104640_8576717016296014698_o-900x500.jpg",
        "https://beautifulghana.com/wp-content/uploads/2020/05/13241362_842087609231029_8488129758323791690_n.jpg"
      ],
      specialNote: "We are pleased to have you taste delight to its fullest"),
  Restaurant(
      id: const Uuid().v1(),
      name: "Pinocchio & La Piazza",
      cusine: "Italian",
      phoneNumber: "+2335678232",
      photoUrl:
          "http://www.travelstart.com.ng/blog/wp-content/uploads/2016/08/Pinocchio-La-Piazza.jpg",
      closingTime: DateTime(2021, 11, 12, 12, 30),
      location: const Location(
        lat: 5.55602,
        long: -0.1969,
        name: "Kasoa",
      ),
      tags: ["breakfast", "american", "pizza"],
      cummulativeRating: 5.0,
      tables: [
        const SitTable(tableNo: 2, numberOfSeats: 2, amount: 20),
        const SitTable(tableNo: 1, numberOfSeats: 5, amount: 25)
      ],
      isReservable: true,
      ratings: [
        SitInRating(
          id: const Uuid().v1(),
          customerId: "S0hISWhQgDTUdGjk5CD5ajX6nS42",
          customerName: "Kofi Sry",
          rateDate: DateTime.now(),
          stars: 3.6,
        )
      ],
      photos: [
        "https://beautifulghana.com/wp-content/uploads/2020/06/100522475_2566399316943809_7697690797369458688_o-960x960.jpg",
        "https://beautifulghana.com/wp-content/uploads/2020/06/98355194_2556185614631846_2780041809970069504_o.jpg"
      ],
      specialNote:
          "We at Pinocchio love our customers and we continue to serve the best and most tastiest food every made by mankind to satisfy the hunger of our beloved customers."),
];
