// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorModel _$DoctorModelFromJson(Map<String, dynamic> json) => DoctorModel(
      json['id'] as int,
      (json['medicalOrganizations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      json['degree'] as String?,
      (json['attachments'] as List<dynamic>?)
          ?.map(
              (e) => DoctorAttachmentModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['fullName'] as String?,
      json['dateOfBirth'] as String?,
      json['gender'] as String?,
      json['identityNumber'] as String?,
      json['phone'] as String?,
      json['email'] as String?,
      json['fullAddress'] as String?,
      (json['medicalSpecialists'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      (json['certificates'] as List<dynamic>?)
          ?.map((e) =>
              DoctorCertificatesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['certificateOthers'] as List<dynamic>?)
          ?.map((e) =>
              DoctorCertificatesModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['experience'] as int?,
      (json['workplaces'] as List<dynamic>?)?.map((e) => e as String).toList(),
      (json['workExperiences'] as List<dynamic>?)
          ?.map((e) =>
              DoctorWorkExperienceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['medicalExpertises'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$DoctorModelToJson(DoctorModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'medicalOrganizations': instance.medicalOrganizations,
      'degree': instance.degree,
      'attachments': instance.attachments,
      'fullName': instance.fullName,
      'dateOfBirth': instance.dateOfBirth,
      'gender': instance.gender,
      'identityNumber': instance.identityNumber,
      'phone': instance.phone,
      'email': instance.email,
      'fullAddress': instance.fullAddress,
      'medicalSpecialists': instance.medicalSpecialists,
      'certificates': instance.certificates,
      'certificateOthers': instance.certificateOthers,
      'experience': instance.experience,
      'workplaces': instance.workplaces,
      'workExperiences': instance.workExperiences,
      'medicalExpertises': instance.medicalExpertises,
    };
