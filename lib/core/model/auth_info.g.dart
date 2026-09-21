// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthInfo _$AuthInfoFromJson(Map<String, dynamic> json) => _AuthInfo(
  id: json['id'] as String,
  name: json['name'] as String,
  email: json['email'] as String,
  accessToken: json['accessToken'] as String,
  refreshToken: json['refreshToken'] as String,
);

Map<String, dynamic> _$AuthInfoToJson(_AuthInfo instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'accessToken': instance.accessToken,
  'refreshToken': instance.refreshToken,
};
