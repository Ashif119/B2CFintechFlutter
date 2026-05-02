// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResult _$LoginResultFromJson(Map<String, dynamic> json) => LoginResult(
  id: (json['id'] as num?)?.toInt(),
  username: json['username'] as String?,
  password: json['password'] as String?,
  mobileNo: json['mobileNo'] as String?,
  email: json['email'] as String?,
  countryCode: json['countryCode'] as String?,
  token: json['token'] as String?,
  refreshToken: json['refreshToken'] as String?,
  name: json['name'] as String?,
  profileImg: json['profileImg'] as String?,
  lockout: json['lockout'] as String?,
  wrongAttempt: (json['wrongAttempt'] as num?)?.toInt(),
  role: (json['role'] as num?)?.toInt(),
  wid: (json['wid'] as num?)?.toInt(),
  twoFAType: (json['twoFAType'] as num?)?.toInt(),
  isLocked: json['isLocked'] as bool?,
);

Map<String, dynamic> _$LoginResultToJson(LoginResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'password': instance.password,
      'mobileNo': instance.mobileNo,
      'email': instance.email,
      'countryCode': instance.countryCode,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'name': instance.name,
      'profileImg': instance.profileImg,
      'lockout': instance.lockout,
      'wrongAttempt': instance.wrongAttempt,
      'role': instance.role,
      'wid': instance.wid,
      'twoFAType': instance.twoFAType,
      'isLocked': instance.isLocked,
    };
