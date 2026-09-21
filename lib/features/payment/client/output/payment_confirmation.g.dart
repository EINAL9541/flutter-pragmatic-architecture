// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_confirmation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PaymentConfirmation _$PaymentConfirmationFromJson(Map<String, dynamic> json) =>
    _PaymentConfirmation(
      transactionId: json['transactionId'] as String,
      status: json['status'] as String? ?? 'succeeded',
    );

Map<String, dynamic> _$PaymentConfirmationToJson(
  _PaymentConfirmation instance,
) => <String, dynamic>{
  'transactionId': instance.transactionId,
  'status': instance.status,
};
