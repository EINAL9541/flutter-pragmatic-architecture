import 'package:dio/dio.dart';

import 'environment.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/logging_interceptor.dart';

class NetworkClients {
  static final Dio public = _createDio();
  static final Dio secure = _createDio(authenticated: true);

  static Dio _createDio({bool authenticated = false}) {
    final dio = Dio(
      BaseOptions(
        baseUrl: Environment.baseUrl,
        connectTimeout: Environment.connectTimeout,
        receiveTimeout: Environment.receiveTimeout,
        sendTimeout: Environment.sendTimeout,
      ),
    );
    if (authenticated) {
      dio.interceptors.add(
        AuthInterceptor(retry: (options) => dio.fetch(options)),
      );
    }
    dio.interceptors.add(LoggingInterceptor());
    return dio;
  }
}
