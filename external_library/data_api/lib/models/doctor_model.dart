import 'package:data_api/models/doctor_attachment_model.dart';
import 'package:data_api/models/doctor_certificates_model.dart';
import 'package:json_annotation/json_annotation.dart';

import 'doctor_work_experience_model.dart';

part 'doctor_model.g.dart';

@JsonSerializable()
class DoctorModel {
  int id;
  List<String>? medicalOrganizations;
  String? degree;
  List<DoctorAttachmentModel>? attachments;
  String? fullName;
  String? dateOfBirth;
  String? gender;
  String? identityNumber;
  String? phone;
  String? email;
  String? fullAddress;
  List<String>? medicalSpecialists;
  List<DoctorCertificatesModel>? certificates;
  List<DoctorCertificatesModel>? certificateOthers;
  int? experience;
  List<String>? workplaces;
  List<DoctorWorkExperienceModel>? workExperiences;
  List<String>? medicalExpertises;

  DoctorModel(
    this.id,
    this.medicalOrganizations,
    this.degree,
    this.attachments,
    this.fullName,
    this.dateOfBirth,
    this.gender,
    this.identityNumber,
    this.phone,
    this.email,
    this.fullAddress,
    this.medicalSpecialists,
    this.certificates,
    this.certificateOthers,
    this.experience,
    this.workplaces,
    this.workExperiences,
    this.medicalExpertises,
  );

  factory DoctorModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorModelToJson(this);

  String getMedicalExpertises(List<String> dataList) {
    String result = '';
    for (var element in dataList) {
      result += element + ', ';
    }
    return result;
  }

  String displayFullnameDoctor(String degree, String fullName) {
    return degree + '\n' + fullName;
  }
}
