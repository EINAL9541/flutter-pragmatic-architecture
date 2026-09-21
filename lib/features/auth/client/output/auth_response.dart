import 'package:flutter_pragmatic_architecture/core/model/auth_info.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_response.freezed.dart';
part 'auth_response.g.dart';

@freezed
abstract class AuthResponse with _$AuthResponse {
  const factory AuthResponse({
    required String id,
    required String name,
    required String email,
    required String accessToken,
    required String refreshToken,
  }) = _AuthResponse;

  factory AuthResponse.fromJson(Map<String, dynamic> json) =>
      _$AuthResponseFromJson(json);
}

extension AuthResponseX on AuthResponse {
  AuthInfo toAuthInfo() => AuthInfo(
    id: id,
    name: name,
    email: email,
    accessToken: accessToken,
    refreshToken: refreshToken,
  );
}
