import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_info.freezed.dart';
part 'auth_info.g.dart';

@freezed
abstract class AuthInfo with _$AuthInfo {
  const factory AuthInfo({
    required String id,
    required String name,
    required String email,
    required String accessToken,
    required String refreshToken,
  }) = _AuthInfo;

  factory AuthInfo.fromJson(Map<String, dynamic> json) =>
      _$AuthInfoFromJson(json);
}
