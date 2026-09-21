// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validate_pin_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ValidatePinPayload _$ValidatePinPayloadFromJson(Map<String, dynamic> json) =>
    _ValidatePinPayload(
      pin: json['pin'] as String,
      orderId: json['orderId'] as String,
    );

Map<String, dynamic> _$ValidatePinPayloadToJson(_ValidatePinPayload instance) =>
    <String, dynamic>{'pin': instance.pin, 'orderId': instance.orderId};
