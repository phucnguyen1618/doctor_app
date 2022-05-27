// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'call_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CallRequest _$CallRequestFromJson(Map<String, dynamic> json) => CallRequest(
      json['userNameFrom'] as String?,
      json['userNameTo'] as String?,
    );

Map<String, dynamic> _$CallRequestToJson(CallRequest instance) =>
    <String, dynamic>{
      'userNameFrom': instance.userNameFrom,
      'userNameTo': instance.userNameTo,
    };
