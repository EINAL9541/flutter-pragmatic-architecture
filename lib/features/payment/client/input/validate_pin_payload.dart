import 'package:freezed_annotation/freezed_annotation.dart';

part 'validate_pin_payload.freezed.dart';
part 'validate_pin_payload.g.dart';

@freezed
abstract class ValidatePinPayload with _$ValidatePinPayload {
  const factory ValidatePinPayload({
    required String pin,
    required String orderId,
  }) = _ValidatePinPayload;

  factory ValidatePinPayload.fromJson(Map<String, dynamic> json) =>
      _$ValidatePinPayloadFromJson(json);
}
