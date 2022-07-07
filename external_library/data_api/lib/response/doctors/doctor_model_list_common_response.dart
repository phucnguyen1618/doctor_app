import 'package:data_api/models/doctor_model.dart';
import 'package:json_annotation/json_annotation.dart';

import '../base_response.dart';

part 'doctor_model_list_common_response.g.dart';

@JsonSerializable()
class DoctorModelListCommonResponse extends BaseResponse {
  @JsonKey(name: 'data')
  List<DoctorModel>? doctorModelList;

  DoctorModelListCommonResponse(
    bool? isSuccess,
    String? message,
    this.doctorModelList,
  ) : super(isSuccess, message);

  factory DoctorModelListCommonResponse.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelListCommonResponseFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorModelListCommonResponseToJson(this);
}
