import 'package:freezed_annotation/freezed_annotation.dart';

part 'company_profilee.freezed.dart';
part 'company_profilee.g.dart';

@freezed
abstract class CompanyProfile with _$CompanyProfile {
  const factory CompanyProfile({
    @JsonKey(name: 'name') String? name,
    @JsonKey(name: 'mobileNo') String? mobileNo,
    @JsonKey(name: 'countryCode') String? countryCode,
    @JsonKey(name: 'phoneNo') String? phoneNo,
    @JsonKey(name: 'emailID') String? emailID,
    @JsonKey(name: 'state') String? state,
    @JsonKey(name: 'city') String? city,
    @JsonKey(name: 'address') String? address,
    @JsonKey(name: 'pinCode') String? pinCode,
    @JsonKey(name: 'domainName') String? domainName,
    @JsonKey(name: 'licenseNo') dynamic licenseNo,
    @JsonKey(name: 'pan') String? pan,
    @JsonKey(name: 'gstin') String? gstin,
    @JsonKey(name: 'mobileSupport') String? mobileSupport,
    @JsonKey(name: 'phoneNoSupport') String? phoneNoSupport,
    @JsonKey(name: 'whatsAppSupport') String? whatsAppSupport,
    @JsonKey(name: 'emailIDSupport') String? emailIDSupport,
    @JsonKey(name: 'currencyName') String? currencyName,
    @JsonKey(name: 'currencySymbol') String? currencySymbol,
    @JsonKey(name: 'currencyInUSD') double? currencyInUSD,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'logoutUrl') String? logoutUrl,
    @JsonKey(name: 'banner') dynamic banner,
    @JsonKey(name: 'logo') dynamic logo,
    @JsonKey(name: 'isWebsite') bool? isWebsite,
    @JsonKey(name: 'logoPath') dynamic logoPath,
    @JsonKey(name: 'front') dynamic front,
    @JsonKey(name: 'bannerPath') dynamic bannerPath,
    @JsonKey(name: 'back') dynamic back,
    @JsonKey(name: 'logoAndBannerImage') dynamic logoAndBannerImage,
    @JsonKey(name: 'password') dynamic password,
    @JsonKey(name: 'apiDomain') String? apiDomain,
    @JsonKey(name: 'brandName') String? brandName,
    @JsonKey(name: 'whiteLogoPath') dynamic whiteLogoPath,
    @JsonKey(name: 'whiteLogo') dynamic whiteLogo,
    @JsonKey(name: 'faviconPath') dynamic faviconPath,
    @JsonKey(name: 'favicon') dynamic favicon,
    @JsonKey(name: 'appallowed') int? appallowed,
    @JsonKey(name: 'assignApp') dynamic assignApp,
    @JsonKey(name: 'tnCUrl') dynamic tnCUrl,
    @JsonKey(name: 'privacyPolicyUrl') dynamic privacyPolicyUrl,
    @JsonKey(name: 'isLoginWithOTP') bool? isLoginWithOTP,
    @JsonKey(name: 'appVersion') int? appVersion,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'wid') int? wid,
    @JsonKey(name: 'loginId') int? loginId,
  }) = _CompanyProfile;

  factory CompanyProfile.fromJson(Map<String, Object?> json) => _$CompanyProfileFromJson(json);
}

