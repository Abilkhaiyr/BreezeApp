// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDTO {

@JsonKey(defaultValue: -1) int? get id;@JsonKey(name: 'name') String? get name; String? get email; String? get phone; String? get avatar; String? get type; String? get role; LanguageDTO? get language;// @JsonKey(name: 'city_name') String? cityName,
@JsonKey(name: 'is_premium') int? get isPremium;@JsonKey(name: 'created_at') DateTime? get createdAt;// @JsonKey(name: 'updated_at') DateTime? updatedAt,
@JsonKey(name: 'access_token') String? get accessToken;@JsonKey(name: 'device_token') String? get deviceToken;@JsonKey(name: 'device_type') String? get deviceType;
/// Create a copy of UserDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDTOCopyWith<UserDTO> get copyWith => _$UserDTOCopyWithImpl<UserDTO>(this as UserDTO, _$identity);

  /// Serializes this UserDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.type, type) || other.type == type)&&(identical(other.role, role) || other.role == role)&&(identical(other.language, language) || other.language == language)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,avatar,type,role,language,isPremium,createdAt,accessToken,deviceToken,deviceType);

@override
String toString() {
  return 'UserDTO(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, type: $type, role: $role, language: $language, isPremium: $isPremium, createdAt: $createdAt, accessToken: $accessToken, deviceToken: $deviceToken, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class $UserDTOCopyWith<$Res>  {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) _then) = _$UserDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(defaultValue: -1) int? id,@JsonKey(name: 'name') String? name, String? email, String? phone, String? avatar, String? type, String? role, LanguageDTO? language,@JsonKey(name: 'is_premium') int? isPremium,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'access_token') String? accessToken,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'device_type') String? deviceType
});


$LanguageDTOCopyWith<$Res>? get language;

}
/// @nodoc
class _$UserDTOCopyWithImpl<$Res>
    implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._self, this._then);

  final UserDTO _self;
  final $Res Function(UserDTO) _then;

/// Create a copy of UserDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? avatar = freezed,Object? type = freezed,Object? role = freezed,Object? language = freezed,Object? isPremium = freezed,Object? createdAt = freezed,Object? accessToken = freezed,Object? deviceToken = freezed,Object? deviceType = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageDTO?,isPremium: freezed == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of UserDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageDTOCopyWith<$Res>? get language {
    if (_self.language == null) {
    return null;
  }

  return $LanguageDTOCopyWith<$Res>(_self.language!, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserDTO].
extension UserDTOPatterns on UserDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserDTO value)  $default,){
final _that = this;
switch (_that) {
case _UserDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UserDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(defaultValue: -1)  int? id, @JsonKey(name: 'name')  String? name,  String? email,  String? phone,  String? avatar,  String? type,  String? role,  LanguageDTO? language, @JsonKey(name: 'is_premium')  int? isPremium, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'access_token')  String? accessToken, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'device_type')  String? deviceType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserDTO() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type,_that.role,_that.language,_that.isPremium,_that.createdAt,_that.accessToken,_that.deviceToken,_that.deviceType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(defaultValue: -1)  int? id, @JsonKey(name: 'name')  String? name,  String? email,  String? phone,  String? avatar,  String? type,  String? role,  LanguageDTO? language, @JsonKey(name: 'is_premium')  int? isPremium, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'access_token')  String? accessToken, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'device_type')  String? deviceType)  $default,) {final _that = this;
switch (_that) {
case _UserDTO():
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type,_that.role,_that.language,_that.isPremium,_that.createdAt,_that.accessToken,_that.deviceToken,_that.deviceType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(defaultValue: -1)  int? id, @JsonKey(name: 'name')  String? name,  String? email,  String? phone,  String? avatar,  String? type,  String? role,  LanguageDTO? language, @JsonKey(name: 'is_premium')  int? isPremium, @JsonKey(name: 'created_at')  DateTime? createdAt, @JsonKey(name: 'access_token')  String? accessToken, @JsonKey(name: 'device_token')  String? deviceToken, @JsonKey(name: 'device_type')  String? deviceType)?  $default,) {final _that = this;
switch (_that) {
case _UserDTO() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.phone,_that.avatar,_that.type,_that.role,_that.language,_that.isPremium,_that.createdAt,_that.accessToken,_that.deviceToken,_that.deviceType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserDTO implements UserDTO {
  const _UserDTO({@JsonKey(defaultValue: -1) this.id, @JsonKey(name: 'name') this.name, this.email, this.phone, this.avatar, this.type, this.role, this.language, @JsonKey(name: 'is_premium') this.isPremium, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'access_token') this.accessToken, @JsonKey(name: 'device_token') this.deviceToken, @JsonKey(name: 'device_type') this.deviceType});
  factory _UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);

@override@JsonKey(defaultValue: -1) final  int? id;
@override@JsonKey(name: 'name') final  String? name;
@override final  String? email;
@override final  String? phone;
@override final  String? avatar;
@override final  String? type;
@override final  String? role;
@override final  LanguageDTO? language;
// @JsonKey(name: 'city_name') String? cityName,
@override@JsonKey(name: 'is_premium') final  int? isPremium;
@override@JsonKey(name: 'created_at') final  DateTime? createdAt;
// @JsonKey(name: 'updated_at') DateTime? updatedAt,
@override@JsonKey(name: 'access_token') final  String? accessToken;
@override@JsonKey(name: 'device_token') final  String? deviceToken;
@override@JsonKey(name: 'device_type') final  String? deviceType;

/// Create a copy of UserDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDTOCopyWith<_UserDTO> get copyWith => __$UserDTOCopyWithImpl<_UserDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.type, type) || other.type == type)&&(identical(other.role, role) || other.role == role)&&(identical(other.language, language) || other.language == language)&&(identical(other.isPremium, isPremium) || other.isPremium == isPremium)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.accessToken, accessToken) || other.accessToken == accessToken)&&(identical(other.deviceToken, deviceToken) || other.deviceToken == deviceToken)&&(identical(other.deviceType, deviceType) || other.deviceType == deviceType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,email,phone,avatar,type,role,language,isPremium,createdAt,accessToken,deviceToken,deviceType);

@override
String toString() {
  return 'UserDTO(id: $id, name: $name, email: $email, phone: $phone, avatar: $avatar, type: $type, role: $role, language: $language, isPremium: $isPremium, createdAt: $createdAt, accessToken: $accessToken, deviceToken: $deviceToken, deviceType: $deviceType)';
}


}

/// @nodoc
abstract mixin class _$UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$UserDTOCopyWith(_UserDTO value, $Res Function(_UserDTO) _then) = __$UserDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(defaultValue: -1) int? id,@JsonKey(name: 'name') String? name, String? email, String? phone, String? avatar, String? type, String? role, LanguageDTO? language,@JsonKey(name: 'is_premium') int? isPremium,@JsonKey(name: 'created_at') DateTime? createdAt,@JsonKey(name: 'access_token') String? accessToken,@JsonKey(name: 'device_token') String? deviceToken,@JsonKey(name: 'device_type') String? deviceType
});


@override $LanguageDTOCopyWith<$Res>? get language;

}
/// @nodoc
class __$UserDTOCopyWithImpl<$Res>
    implements _$UserDTOCopyWith<$Res> {
  __$UserDTOCopyWithImpl(this._self, this._then);

  final _UserDTO _self;
  final $Res Function(_UserDTO) _then;

/// Create a copy of UserDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? email = freezed,Object? phone = freezed,Object? avatar = freezed,Object? type = freezed,Object? role = freezed,Object? language = freezed,Object? isPremium = freezed,Object? createdAt = freezed,Object? accessToken = freezed,Object? deviceToken = freezed,Object? deviceType = freezed,}) {
  return _then(_UserDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String?,language: freezed == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageDTO?,isPremium: freezed == isPremium ? _self.isPremium : isPremium // ignore: cast_nullable_to_non_nullable
as int?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime?,accessToken: freezed == accessToken ? _self.accessToken : accessToken // ignore: cast_nullable_to_non_nullable
as String?,deviceToken: freezed == deviceToken ? _self.deviceToken : deviceToken // ignore: cast_nullable_to_non_nullable
as String?,deviceType: freezed == deviceType ? _self.deviceType : deviceType // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of UserDTO
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageDTOCopyWith<$Res>? get language {
    if (_self.language == null) {
    return null;
  }

  return $LanguageDTOCopyWith<$Res>(_self.language!, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// @nodoc
mixin _$LanguageDTO {

 int? get id;
/// Create a copy of LanguageDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageDTOCopyWith<LanguageDTO> get copyWith => _$LanguageDTOCopyWithImpl<LanguageDTO>(this as LanguageDTO, _$identity);

  /// Serializes this LanguageDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageDTO&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LanguageDTO(id: $id)';
}


}

/// @nodoc
abstract mixin class $LanguageDTOCopyWith<$Res>  {
  factory $LanguageDTOCopyWith(LanguageDTO value, $Res Function(LanguageDTO) _then) = _$LanguageDTOCopyWithImpl;
@useResult
$Res call({
 int? id
});




}
/// @nodoc
class _$LanguageDTOCopyWithImpl<$Res>
    implements $LanguageDTOCopyWith<$Res> {
  _$LanguageDTOCopyWithImpl(this._self, this._then);

  final LanguageDTO _self;
  final $Res Function(LanguageDTO) _then;

/// Create a copy of LanguageDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageDTO].
extension LanguageDTOPatterns on LanguageDTO {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageDTO() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageDTO value)  $default,){
final _that = this;
switch (_that) {
case _LanguageDTO():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageDTO value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageDTO() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageDTO() when $default != null:
return $default(_that.id);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id)  $default,) {final _that = this;
switch (_that) {
case _LanguageDTO():
return $default(_that.id);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id)?  $default,) {final _that = this;
switch (_that) {
case _LanguageDTO() when $default != null:
return $default(_that.id);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageDTO implements LanguageDTO {
  const _LanguageDTO({this.id});
  factory _LanguageDTO.fromJson(Map<String, dynamic> json) => _$LanguageDTOFromJson(json);

@override final  int? id;

/// Create a copy of LanguageDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageDTOCopyWith<_LanguageDTO> get copyWith => __$LanguageDTOCopyWithImpl<_LanguageDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageDTO&&(identical(other.id, id) || other.id == id));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'LanguageDTO(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LanguageDTOCopyWith<$Res> implements $LanguageDTOCopyWith<$Res> {
  factory _$LanguageDTOCopyWith(_LanguageDTO value, $Res Function(_LanguageDTO) _then) = __$LanguageDTOCopyWithImpl;
@override @useResult
$Res call({
 int? id
});




}
/// @nodoc
class __$LanguageDTOCopyWithImpl<$Res>
    implements _$LanguageDTOCopyWith<$Res> {
  __$LanguageDTOCopyWithImpl(this._self, this._then);

  final _LanguageDTO _self;
  final $Res Function(_LanguageDTO) _then;

/// Create a copy of LanguageDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,}) {
  return _then(_LanguageDTO(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
