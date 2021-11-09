part of 'sitin_payment_bloc.dart';

@freezed
class SitinPaymentState with _$SitinPaymentState {
  const factory SitinPaymentState.initial() = _Initial;
  const factory SitinPaymentState.started() = _Started;
  const factory SitinPaymentState.completed(Reservation reservation) =
      _Completed;
  const factory SitinPaymentState.failed() = _Failed;
  const factory SitinPaymentState.cancelled() = _Cancelled;
  const factory SitinPaymentState.paymentError() = _PaymentError;
}
