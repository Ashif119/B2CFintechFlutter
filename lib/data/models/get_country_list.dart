import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_country_list.freezed.dart';
part 'get_country_list.g.dart';

@freezed
abstract class GetCountryList with _$GetCountryList {
  const factory GetCountryList({
    @JsonKey(name: 'countryCode') dynamic countryCode,
    @JsonKey(name: 'country') String? country,
    @JsonKey(name: 'phonePrefix') String? phonePrefix,
    @JsonKey(name: 'flag') String? flag,
    @JsonKey(name: 'regex') String? regex,
    @JsonKey(name: 'isOcode2') String? isOcode2,
    @JsonKey(name: 'capital') String? capital,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'status') dynamic status,
    @JsonKey(name: 'isOcode3') String? isOcode3,
    @JsonKey(name: 'timeZoneId') dynamic timeZoneId,
    @JsonKey(name: 'phoneNumberMaxLength') int? phoneNumberMaxLength,
  }) = _GetCountryList;

  factory GetCountryList.fromJson(Map<String, Object?> json) => _$GetCountryListFromJson(json);
}

