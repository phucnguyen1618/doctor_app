// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignInModel _$SignInModelFromJson(Map<String, dynamic> json) => SignInModel(
      json['token'] as String?,
      json['refreshToken'] as String?,
      json['timeOut'] as int?,
      json['isFirstLogin'] as bool?,
    );

Map<String, dynamic> _$SignInModelToJson(SignInModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'timeOut': instance.timeOut,
      'isFirstLogin': instance.isFirstLogin,
    };
