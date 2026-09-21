import 'package:dio/dio.dart';

class NetworkException implements Exception {
  final String message;
  final int? statusCode;

  const NetworkException({required this.message, this.statusCode});

  factory NetworkException.fromError(Object error) {
    if (error is NetworkException) return error;
    if (error is DioException) return NetworkException._handleException(error);
    return NetworkException._fromGeneric(error);
  }

  factory NetworkException._handleException(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return const NetworkException(
          message:
              'Connection timed out. Please check your internet connection.',
        );
      case DioExceptionType.badResponse:
        return NetworkException._handleStatusException(error);
      case DioExceptionType.cancel:
        return const NetworkException(message: 'Request was cancelled.');
      case DioExceptionType.connectionError:
        return const NetworkException(
          message: 'No internet connection. Please verify your network.',
        );
      default:
        return NetworkException(
          message: error.message ?? 'An unexpected error occurred.',
        );
    }
  }

  factory NetworkException._handleStatusException(DioException error) {
    final statusCode = error.response?.statusCode;
    final responseData = error.response?.data;
    final message = responseData is Map ? responseData['message'] : null;

    return NetworkException(
      message: message is String && message.isNotEmpty
          ? message
          : 'An unexpected error occurred.',
      statusCode: statusCode,
    );
  }

  static NetworkException _fromGeneric(Object error) {
    return NetworkException(message: 'An unexpected error occurred.');
  }

  @override
  String toString() => message;
}
