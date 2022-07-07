import 'package:json_annotation/json_annotation.dart';

part 'call_model.g.dart';

@JsonSerializable()
class CallModel {
  String? appId;
  String? token;
  String? uid;
  String? channelName;
  String? callId;

  CallModel(
    this.appId,
    this.token,
    this.uid,
    this.channelName,
    this.callId,
  );

  factory CallModel.fromJson(Map<String, dynamic> json) =>
      _$CallModelFromJson(json);

  Map<String, dynamic> toJson() => _$CallModelToJson(this);
}
