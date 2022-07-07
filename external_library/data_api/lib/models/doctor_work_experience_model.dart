import 'package:json_annotation/json_annotation.dart';

part 'doctor_work_experience_model.g.dart';

@JsonSerializable()
class DoctorWorkExperienceModel {
  int? id;
  String? jobTitle;
  String? workplace;
  String? workTime;
  String? description;

  DoctorWorkExperienceModel(
    this.id,
    this.jobTitle,
    this.workplace,
    this.workTime,
    this.description,
  );

  factory DoctorWorkExperienceModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorWorkExperienceModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorWorkExperienceModelToJson(this);
}
