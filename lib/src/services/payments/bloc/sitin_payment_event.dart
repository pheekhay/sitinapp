part of 'sitin_payment_bloc.dart';

@freezed
class SitinPaymentEvent with _$SitinPaymentEvent {
  const factory SitinPaymentEvent.initiatePayment({
    required Reservation reservation,
    required BuildContext context,
  }) = InitiatePayment;
}
