import 'package:data_api/response/call/call_response.dart';
import 'package:data_api/request/call/call_request.dart';
import 'package:data_api/response/doctors/doctor_model_list_common_response.dart';
import 'package:data_api/response/doctor/doctor_model_common_response.dart';
import 'package:data_api/response/users/signin_response.dart';

import 'package:data_api/response/base_response.dart';

import 'package:data_api/request/users/signup_request.dart';

import 'package:data_api/request/users/signin_request.dart';

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

  @override
  Future<DoctorModelCommonResponse> getDetailDoctor(int id) {
    return _api.getMedicalApiV1Doctor(id);
  }

  @override
  Future<DoctorModelListCommonResponse> getDoctors(
      {String? keywords, int? page, int? limmit}) {
    return _api.getMedicalApiV1DoctorsFilter(keywords, page, limmit);
  }
}
