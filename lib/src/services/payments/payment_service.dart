import 'package:sitinapp/src/models/reservation.dart';

abstract class PaymentServiceInterface {
  ///user pays  for [reservation] (already booked)to extend a reservation for 24hrs
  Future<Reservation> paywithAReservation({
    Reservation reserved,
    String userId,
    double amount,
    PaymentMethod paymentMethod = PaymentMethod.momo,
  });

  ///user pays for a new [reservation] just booked for 24hrs
  Future<Reservation> payForAReservation({
    String userId,
    double amount,
    PaymentMethod paymentMethod = PaymentMethod.momo,
  });
}

enum PaymentMethod {
  momo,
  visa,
}
