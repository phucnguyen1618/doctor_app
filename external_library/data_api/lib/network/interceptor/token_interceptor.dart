import 'package:dio/dio.dart';

class TokenInterceptor extends Interceptor {
  final Dio dio;
  static const List<int> unauthorizedTokenCodes = [401];

  TokenInterceptor(this.dio);

  @override
  Future<void> onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    // final options = response.requestOptions;
    // if (response.statusCode == 401) {
    //   try {
    //     final request = RefreshTokenRequest(AppDataGlobal.refreshToken);
    //     final response = await dio.post(
    //         '${dio.options.baseUrl}/nspace/account/auth/refresh-token',
    //         data: request.toJson());
    //     final dataResponse = TokenResponse.fromJson(response.data);
    //     if (dataResponse.success && dataResponse.data != null) {
    //       print('Refresh token  success');
    //       AppDataGlobal.refreshLogin(dataResponse.data!);

    //       options.headers['Authorization'] =
    //           'Bearer ${AppDataGlobal.accessToken}';
    //       final opts = Options(method: options.method);
    //       final response = await dio.request(options.path,
    //           options: opts,
    //           cancelToken: options.cancelToken,
    //           onReceiveProgress: options.onReceiveProgress,
    //           data: options.data,
    //           queryParameters: options.queryParameters);
    //       // await dio.request(options.path, options: options);
    //       handler.resolve(response);
    //     } else {
    //       print('Refresh token error ${dataResponse.message ?? ''}');
    //       super.onResponse(response, handler);
    //     }
    //   } on DioError catch (e) {
    //     print('Refresh token error $e');
    //     super.onResponse(response, handler);
    //   }
    // } else {
    //   super.onResponse(response, handler);
    // }
  }

  @override
  Future<void> onError(DioError err, ErrorInterceptorHandler handler) async {
    // final options = err.response?.requestOptions;
    // if (err.response?.statusCode == 401 && options != null) {
    //   try {
    //     final request = RefreshTokenRequest(AppDataGlobal.refreshToken);
    //     final response = await dio.post(
    //         '${dio.options.baseUrl}/nspace/account/auth/refresh-token',
    //         data: request.toJson());
    //     final data = TokenResponse.fromJson(response.data);
    //     if (data.data != null) {
    //       print('Refresh token  success');
    //       AppDataGlobal.accessToken = data.data?.accessToken ?? '';
    //       AppDataGlobal.refreshToken = data.data?.refreshToken ?? '';

    //       options.headers['Authorization'] =
    //           'Bearer ${AppDataGlobal.accessToken}';
    //       final opts = Options(method: options.method);
    //       final response = await dio.request(options.path,
    //           options: opts,
    //           cancelToken: options.cancelToken,
    //           onReceiveProgress: options.onReceiveProgress,
    //           data: options.data,
    //           queryParameters: options.queryParameters);
    //       // await dio.request(options.path, options: options);
    //       handler.resolve(response);
    //     }
    //   } on DioError catch (e) {
    //     print('Refresh token error $e');
    //     super.onError(err, handler);
    //   }
    // } else {
    //   super.onError(err, handler);
    // }
  }

  // @override
  // void onError(DioError error) {
  //   if (error.response?.statusCode == 401) {
  //     dio.
  //   }
  //   super.onError(error, handler);
  // }

  // @override
  // void onRequest(RequestOptions options, RequestInterceptorHandler handler) {

  //   super.onRequest(options, handler);
  // }

  // @override
  // void onError(DioError error, ErrorInterceptorHandler handler) {
  //   print('[TokenInterceptor] onError ->');

  //   if (error.response?.statusCode == 401) {
  //     print('[TokenInterceptor] onError'
  //         '${error.message}');
  //   }
  //   if (error.response == null || error.type != DioErrorType.response) {
  //     return;
  //   }
  // }

  // @override
  // void onResponse(Response response, ResponseInterceptorHandler handler) {
  //   print('[TokenInterceptor] onResponse ->[${response.statusCode}'
  //       ' ${response.requestOptions.path}] : $response ');

  //   if (unauthorizedTokenCodes.contains(response.statusCode)) {}
  //   return super.onResponse(response, handler);
  // }

}
