import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirm_transaction_payload.freezed.dart';
part 'confirm_transaction_payload.g.dart';

@freezed
abstract class ConfirmTransactionPayload with _$ConfirmTransactionPayload {
  const factory ConfirmTransactionPayload({
    required String orderId,
    required String authorizationToken,
    required String idempotencyKey,
  }) = _ConfirmTransactionPayload;

  factory ConfirmTransactionPayload.fromJson(Map<String, dynamic> json) =>
      _$ConfirmTransactionPayloadFromJson(json);
}
