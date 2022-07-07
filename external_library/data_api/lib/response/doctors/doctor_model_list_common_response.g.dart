// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model_list_common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModelListCommonResponse _$DoctorModelListCommonResponseFromJson(
        Map<String, dynamic> json) =>
    DoctorModelListCommonResponse(
      json['isSuccess'] as bool?,
      json['message'] as String?,
      (json['data'] as List<dynamic>?)
          ?.map((e) => DoctorModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DoctorModelListCommonResponseToJson(
        DoctorModelListCommonResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.doctorModelList,
    };
