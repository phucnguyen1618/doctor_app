// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model_common_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModelCommonResponse _$DoctorModelCommonResponseFromJson(
        Map<String, dynamic> json) =>
    DoctorModelCommonResponse(
      json['isSuccess'] as bool?,
      json['message'] as String?,
      json['data'] == null
          ? null
          : DoctorModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DoctorModelCommonResponseToJson(
        DoctorModelCommonResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.doctorModel,
    };
