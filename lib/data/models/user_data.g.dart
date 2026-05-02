// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserData _$UserDataFromJson(Map<String, dynamic> json) => _UserData(
  id: (json['id'] as num?)?.toInt(),
  username: json['username'] as String?,
  password: json['password'],
  mobileNo: json['mobileNo'] as String?,
  email: json['email'] as String?,
  countryCode: json['countryCode'] as String?,
  role: (json['role'] as num?)?.toInt(),
  token: json['token'] as String?,
  refreshToken: json['refreshToken'],
  name: json['name'] as String?,
  profileImg: json['profileImg'] as String?,
  wrongAttempt: (json['wrongAttempt'] as num?)?.toInt(),
  isLocked: json['isLocked'] as bool?,
  wid: (json['wid'] as num?)?.toInt(),
  allowedApp: json['allowedApp'] as String?,
  lockout: json['lockout'],
  twoFAType: (json['twoFAType'] as num?)?.toInt(),
  isRegisteredWithGST: (json['isRegisteredWithGST'] as num?)?.toInt(),
);

Map<String, dynamic> _$UserDataToJson(_UserData instance) => <String, dynamic>{
  'id': instance.id,
  'username': instance.username,
  'password': instance.password,
  'mobileNo': instance.mobileNo,
  'email': instance.email,
  'countryCode': instance.countryCode,
  'role': instance.role,
  'token': instance.token,
  'refreshToken': instance.refreshToken,
  'name': instance.name,
  'profileImg': instance.profileImg,
  'wrongAttempt': instance.wrongAttempt,
  'isLocked': instance.isLocked,
  'wid': instance.wid,
  'allowedApp': instance.allowedApp,
  'lockout': instance.lockout,
  'twoFAType': instance.twoFAType,
  'isRegisteredWithGST': instance.isRegisteredWithGST,
};
