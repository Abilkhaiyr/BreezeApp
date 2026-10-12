// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class UserDTO with _$UserDTO {
  const factory UserDTO({
    @JsonKey(defaultValue: -1) int? id,
    @JsonKey(name: 'name') String? name,
    String? email,
    String? phone,
    String? avatar,
    String? type,
    String? role,
    LanguageDTO? language,
    // @JsonKey(name: 'city_name') String? cityName,
    @JsonKey(name: 'is_premium') int? isPremium,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    // @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'access_token') String? accessToken,
    @JsonKey(name: 'device_token') String? deviceToken,
    @JsonKey(name: 'device_type') String? deviceType,
  }) = _UserDTO;
  factory UserDTO.fromJson(Map<String, dynamic> json) =>
      _$UserDTOFromJson(json);
}

@freezed
abstract class LanguageDTO with _$LanguageDTO {
  const factory LanguageDTO({int? id}) = _LanguageDTO;

  factory LanguageDTO.fromJson(Map<String, dynamic> json) =>
      _$LanguageDTOFromJson(json);
}
