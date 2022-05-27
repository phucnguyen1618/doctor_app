import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import 'interceptor/logger_interceptor.dart';

class DioClient {
  static late Dio _dio;
  static FutureOr<Dio> setup({required String baseUrl}) async {
    final options = BaseOptions(
      responseType: ResponseType.json,
      contentType: 'application/json',
      validateStatus: (status) {
        return true;
      },
      baseUrl: baseUrl,
      receiveTimeout: 30000, // 30s
      sendTimeout: 30000, // 30s
    );
    _dio = Dio(options);

    // Add log in debugmode
    if (kDebugMode) {
      _dio.interceptors.add(LoggerInterceptor());
    }

    return _dio;
  }

  static Dio get dio => _dio;
}
