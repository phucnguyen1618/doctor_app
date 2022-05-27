import 'package:json_annotation/json_annotation.dart';

part 'signin_model.g.dart';

@JsonSerializable()
class SignInModel {
  String? token;
  String? refreshToken;
  int? timeOut;
  bool? isFirstLogin;

  SignInModel(this.token, this.refreshToken, this.timeOut, this.isFirstLogin);

  factory SignInModel.fromJson(Map<String, dynamic> json) =>
      _$SignInModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignInModelToJson(this);
}
