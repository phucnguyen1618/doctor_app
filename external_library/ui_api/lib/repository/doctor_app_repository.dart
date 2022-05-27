import 'package:ui_api/request/call/call_request.dart';
import 'package:ui_api/request/users/signin_request.dart';
import 'package:ui_api/request/users/signup_request.dart';
import 'package:ui_api/response/base_response.dart';
import 'package:ui_api/response/call/call_response.dart';
import 'package:ui_api/response/users/signin_response.dart';

abstract class DoctorAppRepository {
  Future<BaseResponse> signUp(SignUpRequest request);

  Future<SignInResponse> signIn(SignInRequest request);

  Future<CallResponse> call(CallRequest request);
}
