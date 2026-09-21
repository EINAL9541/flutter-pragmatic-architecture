import 'package:dio/dio.dart';

import 'package:flutter_pragmatic_architecture/core/storage/auth_info_storage.dart';

import '../../../features/auth/client/auth_client.dart';

class AuthInterceptor extends QueuedInterceptor {
  final AuthInfoStorage authInfoStorage;
  final AuthClient authClient;
  final Future<Response<dynamic>> Function(RequestOptions options) retry;

  AuthInterceptor({
    required this.retry,
    AuthInfoStorage? authInfoStorage,
    AuthClient? authClient,
  }) : authInfoStorage = authInfoStorage ?? AuthInfoStorage.instance,
       authClient = authClient ?? AuthClient.instance;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final token = authInfoStorage.accessToken;
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode != 401 || _isRefreshRequest(err)) {
      handler.next(err);
      return;
    }

    final refreshToken = authInfoStorage.refreshToken;
    if (refreshToken == null || refreshToken.isEmpty) {
      await _clearSession();
      handler.next(err);
      return;
    }

    try {
      final auth = await authClient.refresh(refreshToken: refreshToken);
      await authInfoStorage.updateTokens(
        accessToken: auth.accessToken,
        refreshToken: auth.refreshToken,
      );

      err.requestOptions.headers['Authorization'] =
          'Bearer ${auth.accessToken}';
      handler.resolve(await retry(err.requestOptions));
    } catch (_) {
      await _clearSession();
      handler.next(err);
    }
  }

  bool _isRefreshRequest(DioException error) {
    return error.requestOptions.path.endsWith('/auth/refresh-token');
  }

  Future<void> _clearSession() async {
    await authInfoStorage.clearAuthInfo();
  }
}
