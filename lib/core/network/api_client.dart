import 'package:dio/dio.dart';

import '../model/base_response.dart';
import 'network_clients.dart';
import 'network_exception.dart';

abstract class ApiClient {
  final Dio client;
  ApiClient({required this.client});

  Future<T> requestData<T>(
    Future<Response<Map<String, dynamic>>> Function() action, {
    required T Function(Object? data) fromJson,
  }) async {
    final data = await _request(action, fromJson: fromJson, requireData: true);
    return data!;
  }

  Future<void> requestVoid(
    Future<Response<Map<String, dynamic>>> Function() action,
  ) async {
    await _request<void>(action, fromJson: (_) {}, requireData: false);
  }

  Future<T?> _request<T>(
    Future<Response<Map<String, dynamic>>> Function() action, {
    required T Function(Object? data) fromJson,
    required bool requireData,
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
    if (!envelope.success || (requireData && envelope.data == null)) {
      throw NetworkException(
        message: envelope.message,
        statusCode: envelope.status,
      );
    }

    return envelope.data;
  }
}

abstract class PublicApi extends ApiClient {
  PublicApi({Dio? client}) : super(client: client ?? NetworkClients.public);
}

abstract class SecureApi extends ApiClient {
  SecureApi({Dio? client}) : super(client: client ?? NetworkClients.secure);
}
