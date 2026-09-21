// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirm_transaction_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConfirmTransactionPayload _$ConfirmTransactionPayloadFromJson(
  Map<String, dynamic> json,
) => _ConfirmTransactionPayload(
  orderId: json['orderId'] as String,
  authorizationToken: json['authorizationToken'] as String,
  idempotencyKey: json['idempotencyKey'] as String,
);

Map<String, dynamic> _$ConfirmTransactionPayloadToJson(
  _ConfirmTransactionPayload instance,
) => <String, dynamic>{
  'orderId': instance.orderId,
  'authorizationToken': instance.authorizationToken,
  'idempotencyKey': instance.idempotencyKey,
};
