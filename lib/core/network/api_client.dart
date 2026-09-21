import 'package:dio/dio.dart';

import '../model/base_response.dart';
import 'network_exception.dart';
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

abstract class ApiClient {
  final Dio client;
  ApiClient({required this.client});

  Future<T> requestData<T>(
    Future<Response<Map<String, dynamic>>> Function() action, {
    required T Function(Object? data) fromJson,
  }) async {
    final response = await action();
    final json = response.data;

    if (json == null) {
      throw NetworkException(
        message: 'An unexpected error occurred.',
        statusCode: response.statusCode,
      );
    }

    final envelope = BaseResponse<T>.fromJson(json, fromJson);
    if (!envelope.success || envelope.data == null) {
      throw NetworkException(
        message: envelope.message,
        statusCode: envelope.status,
      );
    }

    return envelope.data!;
  }

  Future<void> requestVoid(
    Future<Response<Map<String, dynamic>>> Function() action,
  ) async {
    final response = await action();
    final json = response.data;

    if (json == null) {
      throw NetworkException(
        message: 'An unexpected error occurred.',
        statusCode: response.statusCode,
      );
    }

    final envelope = BaseResponse<void>.fromJson(json, (_) {});
    if (!envelope.success) {
      throw NetworkException(
        message: envelope.message,
        statusCode: envelope.status,
      );
    }
  }
}

abstract class PublicApi extends ApiClient {
  PublicApi({Dio? client}) : super(client: client ?? NetworkClients.public);
}

abstract class SecureApi extends ApiClient {
  SecureApi({Dio? client}) : super(client: client ?? NetworkClients.secure);
}
