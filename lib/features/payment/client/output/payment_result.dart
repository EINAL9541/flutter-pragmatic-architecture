import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_result.freezed.dart';
part 'payment_result.g.dart';

@freezed
abstract class PinValidationResult with _$PinValidationResult {
  const factory PinValidationResult({required String authorizationToken}) =
      _PinValidationResult;

  factory PinValidationResult.fromJson(Map<String, dynamic> json) =>
      _$PinValidationResultFromJson(json);
}
