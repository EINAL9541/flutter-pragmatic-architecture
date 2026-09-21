class BaseResponse<T> {
  final T? data;
  final String message;
  final int status;
  final bool success;
  final int timestamp;
  final String? traceId;

  const BaseResponse({
    this.data,
    required this.message,
    required this.status,
    required this.success,
    required this.timestamp,
    this.traceId,
  });

  factory BaseResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) {
    return BaseResponse(
      data: json['data'] != null ? fromJsonT(json['data']) : null,
      message: json['message'] as String? ?? '',
      status: json['status'] as int? ?? 0,
      success: json['success'] as bool? ?? false,
      timestamp: json['timestamp'] as int? ?? 0,
      traceId: json['traceId'] as String?,
    );
  }

  factory BaseResponse.errorFromJson(Map<String, dynamic> json) {
    return BaseResponse(
      data: null,
      message: json['message'] as String? ?? 'An error occurred.',
      status: json['status'] as int? ?? 0,
      success: false,
      timestamp: json['timestamp'] as int? ?? 0,
      traceId: json['traceId'] as String?,
    );
  }

  @override
  String toString() =>
      'BaseResponse(success: $success, status: $status, message: $message, traceId: $traceId)';
}
