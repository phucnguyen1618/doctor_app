import 'package:ui_api/response/call/call_response.dart';
import 'package:ui_api/request/call/call_request.dart';
import 'package:ui_api/response/users/signin_response.dart';

import 'package:ui_api/response/base_response.dart';

import 'package:ui_api/request/users/signup_request.dart';

import 'package:ui_api/request/users/signin_request.dart';

import '../../datasource/remote/doctor_app_api.dart';
import '../doctor_app_repository.dart';

class DoctorAppRepositoryImpl extends DoctorAppRepository {
  final DoctorAppUIAPI _api;

  DoctorAppRepositoryImpl(this._api);

  @override
  Future<SignInResponse> signIn(SignInRequest request) {
    return _api.signIn(request);
  }

  @override
  Future<BaseResponse> signUp(SignUpRequest request) {
    return _api.signUp(request);
  }

  @override
  Future<CallResponse> call(CallRequest request) {
    return _api.call(request);
  }
}
