import 'package:json_annotation/json_annotation.dart';

part 'doctor_certificates_model.g.dart';

@JsonSerializable()
class DoctorCertificatesModel {
  int? id;
  String? certificateName;
  String? certificatePlace;
  String? certificateTime;
  String? description;

  DoctorCertificatesModel(
    this.id,
    this.certificateName,
    this.certificatePlace,
    this.certificateTime,
    this.description,
  );

  factory DoctorCertificatesModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorCertificatesModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorCertificatesModelToJson(this);
}
