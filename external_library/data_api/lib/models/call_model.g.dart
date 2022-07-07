// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallModel _$CallModelFromJson(Map<String, dynamic> json) => CallModel(
      json['appId'] as String?,
      json['token'] as String?,
      json['uid'] as String?,
      json['channelName'] as String?,
      json['callId'] as String?,
    );

Map<String, dynamic> _$CallModelToJson(CallModel instance) => <String, dynamic>{
      'appId': instance.appId,
      'token': instance.token,
      'uid': instance.uid,
      'channelName': instance.channelName,
      'callId': instance.callId,
    };
