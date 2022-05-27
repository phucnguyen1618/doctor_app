import 'package:json_annotation/json_annotation.dart';

part 'signin_request.g.dart';

@JsonSerializable()
class SignInRequest {
  @JsonKey(name: 'userName')
  final String username;
  @JsonKey(name: 'password')
  final String password;
  @JsonKey(name: 'fireBaseToken')
  final String? firebaseToken;

  SignInRequest(this.username, this.password, this.firebaseToken);

  factory SignInRequest.fromJson(Map<String, dynamic> json) =>
      _$SignInRequestFromJson(json);

  Map<String, dynamic> toJson() => _$SignInRequestToJson(this);
}
