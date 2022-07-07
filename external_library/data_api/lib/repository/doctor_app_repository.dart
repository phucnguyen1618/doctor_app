import 'package:data_api/request/call/call_request.dart';
import 'package:data_api/request/users/signin_request.dart';
import 'package:data_api/request/users/signup_request.dart';
import 'package:data_api/response/base_response.dart';
import 'package:data_api/response/call/call_response.dart';
import 'package:data_api/response/doctor/doctor_model_common_response.dart';
import 'package:data_api/response/doctors/doctor_model_list_common_response.dart';
import 'package:data_api/response/users/signin_response.dart';

abstract class DoctorAppRepository {
  Future<BaseResponse> signUp(SignUpRequest request);

  Future<SignInResponse> signIn(SignInRequest request);

  Future<CallResponse> call(CallRequest request);

  Future<DoctorModelListCommonResponse> getDoctors();

  Future<DoctorModelCommonResponse> getDetailDoctor(int id);
}
