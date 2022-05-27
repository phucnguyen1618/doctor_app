import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:ui_api/request/call/call_request.dart';
import 'package:ui_api/request/users/signin_request.dart';
import 'package:ui_api/request/users/signup_request.dart';
import 'package:ui_api/response/base_response.dart';
import 'package:ui_api/response/call/call_response.dart';

import '../../response/users/signin_response.dart';

part 'doctor_app_api.g.dart';

@RestApi()
abstract class DoctorAppUIAPI {
  factory DoctorAppUIAPI(Dio dio, {String baseUrl}) = _DoctorAppUIAPI;

  @POST('/api/users/signin')
  Future<SignInResponse> signIn(@Body() SignInRequest request);

  @POST('/api/users/signup')
  Future<BaseResponse> signUp(@Body() SignUpRequest request);

  @POST('/api/call')
  Future<CallResponse> call(@Body() CallRequest request);
}
