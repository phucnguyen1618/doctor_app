import 'package:json_annotation/json_annotation.dart';
import 'package:ui_api/models/call_model.dart';
import 'package:ui_api/response/base_response.dart';

part 'call_response.g.dart';

@JsonSerializable()
class CallResponse extends BaseResponse {
  @JsonKey(name: 'data')
  CallModel callModel;
  CallResponse(this.callModel) : super(false, '');

  factory CallResponse.fromJson(Map<String, dynamic> json) =>
      _$CallResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CallResponseToJson(this);
}
