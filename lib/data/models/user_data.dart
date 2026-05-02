import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart';

@freezed
abstract class UserData with _$UserData {
  const factory UserData({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'password') dynamic password,
    @JsonKey(name: 'mobileNo') String? mobileNo,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'countryCode') String? countryCode,
    @JsonKey(name: 'role') int? role,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'refreshToken') dynamic refreshToken,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'profileImg') String? profileImg,
    @JsonKey(name: 'wrongAttempt') int? wrongAttempt,
    @JsonKey(name: 'isLocked') bool? isLocked,
    @JsonKey(name: 'wid') int? wid,
    @JsonKey(name: 'allowedApp') String? allowedApp,
    @JsonKey(name: 'lockout') dynamic lockout,
    @JsonKey(name: 'twoFAType') int? twoFAType,
    @JsonKey(name: 'isRegisteredWithGST') int? isRegisteredWithGST,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) => _$UserDataFromJson(json);
}

