import 'package:flutter_pragmatic_architecture/core/network/api_client.dart';
import 'package:flutter_pragmatic_architecture/features/auth/client/output/auth_response.dart';

class AuthClient extends PublicApi {
  AuthClient._();

  static final AuthClient instance = AuthClient._();

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    return requestData(
      () => client.post<Map<String, dynamic>>(
        '/auth/login',
        data: {'email': email, 'password': password},
      ),
      fromJson: (data) => AuthResponse.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<AuthResponse> register({
    required String name,
    required String email,
    required String password,
  }) async {
    return requestData(
      () => client.post<Map<String, dynamic>>(
        '/auth/register',
        data: {'name': name, 'email': email, 'password': password},
      ),
      fromJson: (data) => AuthResponse.fromJson(data as Map<String, dynamic>),
    );
  }

  Future<AuthResponse> refresh({required String refreshToken}) async {
    return requestData(
      () => client.post<Map<String, dynamic>>(
        '/auth/refresh-token',
        data: {'refreshToken': refreshToken},
      ),
      fromJson: (data) => AuthResponse.fromJson(data as Map<String, dynamic>),
    );
  }
}
