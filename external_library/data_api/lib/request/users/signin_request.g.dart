// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInRequest _$SignInRequestFromJson(Map<String, dynamic> json) =>
    SignInRequest(
      json['userName'] as String,
      json['password'] as String,
      json['fireBaseToken'] as String?,
    );

Map<String, dynamic> _$SignInRequestToJson(SignInRequest instance) =>
    <String, dynamic>{
      'userName': instance.username,
      'password': instance.password,
      'fireBaseToken': instance.firebaseToken,
    };
