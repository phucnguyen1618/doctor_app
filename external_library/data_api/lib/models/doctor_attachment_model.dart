import 'package:json_annotation/json_annotation.dart';
part 'doctor_attachment_model.g.dart';

@JsonSerializable()
class DoctorAttachmentModel {
  int id;
  String? name;
  String? url;

  DoctorAttachmentModel(
    this.id,
    this.name,
    this.url,
  );

  factory DoctorAttachmentModel.fromJson(Map<String, dynamic> json) =>
      _$DoctorAttachmentModelFromJson(json);

  Map<String, dynamic> toJson() => _$DoctorAttachmentModelToJson(this);
}
