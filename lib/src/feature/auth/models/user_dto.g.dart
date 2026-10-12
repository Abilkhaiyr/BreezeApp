// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserDTO _$UserDTOFromJson(Map<String, dynamic> json) => _UserDTO(
  id: (json['id'] as num?)?.toInt() ?? -1,
  name: json['name'] as String?,
  email: json['email'] as String?,
  phone: json['phone'] as String?,
  avatar: json['avatar'] as String?,
  type: json['type'] as String?,
  role: json['role'] as String?,
  language: json['language'] == null
      ? null
      : LanguageDTO.fromJson(json['language'] as Map<String, dynamic>),
  isPremium: (json['is_premium'] as num?)?.toInt(),
  createdAt: json['created_at'] == null
      ? null
      : DateTime.parse(json['created_at'] as String),
  accessToken: json['access_token'] as String?,
  deviceToken: json['device_token'] as String?,
  deviceType: json['device_type'] as String?,
);

Map<String, dynamic> _$UserDTOToJson(_UserDTO instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'email': instance.email,
  'phone': instance.phone,
  'avatar': instance.avatar,
  'type': instance.type,
  'role': instance.role,
  'language': instance.language,
  'is_premium': instance.isPremium,
  'created_at': instance.createdAt?.toIso8601String(),
  'access_token': instance.accessToken,
  'device_token': instance.deviceToken,
  'device_type': instance.deviceType,
};

_LanguageDTO _$LanguageDTOFromJson(Map<String, dynamic> json) =>
    _LanguageDTO(id: (json['id'] as num?)?.toInt());

Map<String, dynamic> _$LanguageDTOToJson(_LanguageDTO instance) =>
    <String, dynamic>{'id': instance.id};
