import 'package:freezed_annotation/freezed_annotation.dart';
part 'payment_model.g.dart';
part 'payment_model.freezed.dart';

enum PaymentStatus { PENDING, SUCCESS, FAIL, CANCELLED }

@freezed
class SitInPayment with _$SitInPayment {
  @JsonSerializable(explicitToJson: true)
  const factory SitInPayment({
    required String id,
    required double amount,
  }) = _SitInPayment;

  factory SitInPayment.fromJson(Map<String, dynamic> json) =>
      _$SitInPaymentFromJson(json);
}
