import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor extends Interceptor {
  static const _sensitiveKeys = {
    'authorization',
    'password',
    'pin',
    'token',
    'access_token',
    'refresh_token',
    'refreshtoken',
    'authorizationtoken',
  };
  static const String _topBorder =
      '┌────────────────────────────────────────────────────────';
  static const String _middleBorder =
      '├────────────────────────────────────────────────────────';
  static const String _bottomBorder =
      '└────────────────────────────────────────────────────────';

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (kDebugMode) {
      final buffer = StringBuffer()
        ..writeln('\n$_topBorder')
        ..writeln('│ [REQUEST] ${options.method} ${options.uri}')
        ..writeln(_middleBorder);

      if (options.headers.isNotEmpty) {
        final headers = Map<String, dynamic>.from(options.headers);
        if (headers.containsKey('Authorization')) {
          headers['Authorization'] = 'Bearer ***';
        }
        buffer.writeln('│ Headers: $headers');
      }

      if (options.queryParameters.isNotEmpty) {
        buffer.writeln('│ Query: ${options.queryParameters}');
      }

      if (options.data != null) {
        buffer.writeln('│ Body:\n│ ${_prettyPrint(_redact(options.data))}');
      }

      buffer.write(_bottomBorder);
      debugPrint(buffer.toString());
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    if (kDebugMode) {
      final statusCode = response.statusCode ?? 0;
      final buffer = StringBuffer()
        ..writeln('\n$_topBorder')
        ..writeln(
          '│ [RESPONSE $statusCode] ${response.requestOptions.method} ${response.requestOptions.uri}',
        )
        ..writeln(_middleBorder);

      if (response.data != null) {
        buffer.writeln('│ Data:\n│ ${_prettyPrint(_redact(response.data))}');
      }

      buffer.write(_bottomBorder);
      debugPrint(buffer.toString());
    }
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    if (kDebugMode) {
      final statusCode = err.response?.statusCode != null
          ? '${err.response!.statusCode}'
          : 'NO_STATUS';
      final buffer = StringBuffer()
        ..writeln('\n$_topBorder')
        ..writeln(
          '│ [ERROR $statusCode] ${err.requestOptions.method} ${err.requestOptions.uri}',
        )
        ..writeln(_middleBorder)
        ..writeln('│ Type: ${err.type}')
        ..writeln('│ Message: ${err.message}');

      if (err.response?.data != null) {
        buffer.writeln(
          '│ Response Data:\n│ ${_prettyPrint(_redact(err.response?.data))}',
        );
      }

      buffer.write(_bottomBorder);
      debugPrint(buffer.toString());
    }
    handler.next(err);
  }

  String _prettyPrint(dynamic data) {
    try {
      if (data is Map || data is List) {
        const encoder = JsonEncoder.withIndent('  ');
        final prettyString = encoder.convert(data);
        return prettyString.replaceAll('\n', '\n│ ');
      }
      return data.toString();
    } catch (_) {
      return data.toString();
    }
  }

  dynamic _redact(dynamic value) {
    if (value is Map) {
      return value.map((key, item) {
        final normalizedKey = key.toString().replaceAll('_', '').toLowerCase();
        final isSensitive =
            _sensitiveKeys.contains(key.toString().toLowerCase()) ||
            _sensitiveKeys.contains(normalizedKey);
        return MapEntry(key, isSensitive ? '***' : _redact(item));
      });
    }
    if (value is List) {
      return value.map(_redact).toList();
    }
    return value;
  }
}
