// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctor_certificates_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DoctorCertificatesModel _$DoctorCertificatesModelFromJson(
        Map<String, dynamic> json) =>
    DoctorCertificatesModel(
      json['id'] as int?,
      json['certificateName'] as String?,
      json['certificatePlace'] as String?,
      json['certificateTime'] as String?,
      json['description'] as String?,
    );

Map<String, dynamic> _$DoctorCertificatesModelToJson(
        DoctorCertificatesModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'certificateName': instance.certificateName,
      'certificatePlace': instance.certificatePlace,
      'certificateTime': instance.certificateTime,
      'description': instance.description,
    };
