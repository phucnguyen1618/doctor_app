import 'package:json_annotation/json_annotation.dart';
import 'package:ui_api/models/signin_model.dart';
import 'package:ui_api/response/base_response.dart';

part 'signin_response.g.dart';

@JsonSerializable()
class SignInResponse extends BaseResponse {

  @JsonKey(name: 'data')
  SignInModel? signInModel;
  SignInResponse(this.signInModel) : super(false, '');

  factory SignInResponse.fromJson(Map<String, dynamic> json) =>
      _$SignInResponseFromJson(json);
  Map<String, dynamic> toJson() => _$SignInResponseToJson(this);
}
