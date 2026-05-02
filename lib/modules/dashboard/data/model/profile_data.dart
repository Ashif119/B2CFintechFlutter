import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_data.freezed.dart';
part 'profile_data.g.dart';

@freezed
abstract class ProfileData with _$ProfileData {
  const factory ProfileData({
    @JsonKey(name: 'whatsAppNo') String? whatsAppNo,
    @JsonKey(name: 'telegram') String? telegram,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'entryAt') String? entryAt,
    @JsonKey(name: 'modifyAt') dynamic modifyAt,
    @JsonKey(name: 'domainName') dynamic domainName,
    @JsonKey(name: 'whatsAppSupport') String? whatsAppSupport,
    @JsonKey(name: 'amount') dynamic amount,
    @JsonKey(name: 'mobileSupport') String? mobileSupport,
    @JsonKey(name: 'companyAddress') String? companyAddress,
    @JsonKey(name: 'emailIDSupport') String? emailIDSupport,
    @JsonKey(name: 'packageName') dynamic packageName,
    @JsonKey(name: 'packageRate') dynamic packageRate,
    @JsonKey(name: 'remainingDays') dynamic remainingDays,
    @JsonKey(name: 'twoFAType') int? twoFAType,
    @JsonKey(name: 'userId') dynamic userId,
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'countryCode') String? countryCode,
    @JsonKey(name: 'mobileNo') String? mobileNo,
    @JsonKey(name: 'userName') String? userName,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'password') dynamic password,
    @JsonKey(name: 'passwordHash') dynamic passwordHash,
    @JsonKey(name: 'role') int? role,
    @JsonKey(name: 'fcmId') dynamic fcmId,
    @JsonKey(name: 'timeZoneId') dynamic timeZoneId,
    @JsonKey(name: 'profileImgUrl') String? profileImgUrl,
    @JsonKey(name: 'gstin') dynamic gstin,
    @JsonKey(name: 'companyFirm') dynamic companyFirm,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'wid') int? wid,
    @JsonKey(name: 'loginId') int? loginId,
  }) = _ProfileData;

  factory ProfileData.fromJson(Map<String, Object?> json) => _$ProfileDataFromJson(json);
}

