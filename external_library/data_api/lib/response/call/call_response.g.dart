// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallResponse _$CallResponseFromJson(Map<String, dynamic> json) => CallResponse(
      CallModel.fromJson(json['data'] as Map<String, dynamic>),
    )
      ..isSuccess = json['isSuccess'] as bool?
      ..message = json['message'] as String?;

Map<String, dynamic> _$CallResponseToJson(CallResponse instance) =>
    <String, dynamic>{
      'isSuccess': instance.isSuccess,
      'message': instance.message,
      'data': instance.callModel,
    };
