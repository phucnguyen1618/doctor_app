// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_work_experience_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorWorkExperienceModel _$DoctorWorkExperienceModelFromJson(
        Map<String, dynamic> json) =>
    DoctorWorkExperienceModel(
      json['id'] as int?,
      json['jobTitle'] as String?,
      json['workplace'] as String?,
      json['workTime'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$DoctorWorkExperienceModelToJson(
        DoctorWorkExperienceModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'jobTitle': instance.jobTitle,
      'workplace': instance.workplace,
      'workTime': instance.workTime,
      'description': instance.description,
    };
