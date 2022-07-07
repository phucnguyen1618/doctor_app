import 'package:data_api/response/doctor/doctor_model_common_response.dart';
import 'package:data_api/response/doctors/doctor_model_list_common_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:data_api/request/call/call_request.dart';
import 'package:data_api/request/users/signin_request.dart';
import 'package:data_api/request/users/signup_request.dart';
import 'package:data_api/response/base_response.dart';
import 'package:data_api/response/call/call_response.dart';

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

  @GET('/medical/api/v1/doctors/filter')
  Future<DoctorModelListCommonResponse> getMedicalApiV1DoctorsFilter(
    @Query('keywords') String? keywords,
    @Query('page') int? page,
    @Query('limmit') int? limmit,
  );

  @GET('/medical/api/v1/doctors/{id}')
  Future<DoctorModelCommonResponse> getMedicalApiV1Doctor(@Path('id') int id);
}
