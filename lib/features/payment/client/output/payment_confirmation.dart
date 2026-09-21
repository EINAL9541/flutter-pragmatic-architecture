import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_confirmation.freezed.dart';
part 'payment_confirmation.g.dart';

@freezed
abstract class PaymentConfirmation with _$PaymentConfirmation {
  const factory PaymentConfirmation({
    required String transactionId,
    @Default('succeeded') String status,
  }) = _PaymentConfirmation;

  factory PaymentConfirmation.fromJson(Map<String, dynamic> json) =>
      _$PaymentConfirmationFromJson(json);
}
