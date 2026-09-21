import 'package:flutter_pragmatic_architecture/core/network/api_client.dart';
import 'package:flutter_pragmatic_architecture/features/payment/client/output/payment_confirmation.dart';
import 'package:flutter_pragmatic_architecture/features/payment/client/output/payment_result.dart';
import 'package:dio/dio.dart';

import 'input/confirm_transaction_payload.dart';
import 'input/validate_pin_payload.dart';

class PaymentClient extends SecureApi {
  PaymentClient._();

  static final PaymentClient instance = PaymentClient._();

  Future<PinValidationResult> validatePin(ValidatePinPayload payload) {
    return requestData(
      () => client.post<Map<String, dynamic>>(
        '/payments/validate-pin',
        data: payload.toJson(),
      ),
      fromJson: (data) =>
          PinValidationResult.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<PaymentConfirmation> confirmTransaction(
    ConfirmTransactionPayload payload,
  ) {
    return requestData(
      () => client.post<Map<String, dynamic>>(
        '/payments/confirm',
        data: payload.toJson(),
        options: Options(headers: {'Idempotency-Key': payload.idempotencyKey}),
      ),
      fromJson: (data) =>
          PaymentConfirmation.fromJson(data as Map<String, dynamic>),
    );
  }
}
