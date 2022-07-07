import 'package:data_api/models/doctor_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_response.dart';

part 'doctor_model_common_response.g.dart';

@JsonSerializable()
class DoctorModelCommonResponse extends BaseResponse {
  @JsonKey(name: 'data')
  DoctorModel? doctorModel;

  DoctorModelCommonResponse(
    bool? isSuccess,
    String? message,
    this.doctorModel,
  ) : super(isSuccess, message);

  factory DoctorModelCommonResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelCommonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorModelCommonResponseToJson(this);
}
