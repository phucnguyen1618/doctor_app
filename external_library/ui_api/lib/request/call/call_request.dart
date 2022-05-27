import 'package:json_annotation/json_annotation.dart';

part 'call_request.g.dart';

@JsonSerializable()
class CallRequest {
  String? userNameFrom;
  String? userNameTo;

  CallRequest(this.userNameFrom, this.userNameTo);

  factory CallRequest.fromJson(Map<String, dynamic> json) =>
      _$CallRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CallRequestToJson(this);
}
