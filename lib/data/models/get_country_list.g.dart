// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_country_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetCountryList _$GetCountryListFromJson(Map<String, dynamic> json) =>
    _GetCountryList(
      countryCode: json['countryCode'],
      country: json['country'] as String?,
      phonePrefix: json['phonePrefix'] as String?,
      flag: json['flag'] as String?,
      regex: json['regex'] as String?,
      isOcode2: json['isOcode2'] as String?,
      capital: json['capital'] as String?,
      id: (json['id'] as num?)?.toInt(),
      status: json['status'],
      isOcode3: json['isOcode3'] as String?,
      timeZoneId: json['timeZoneId'],
      phoneNumberMaxLength: (json['phoneNumberMaxLength'] as num?)?.toInt(),
    );

Map<String, dynamic> _$GetCountryListToJson(_GetCountryList instance) =>
    <String, dynamic>{
      'countryCode': instance.countryCode,
      'country': instance.country,
      'phonePrefix': instance.phonePrefix,
      'flag': instance.flag,
      'regex': instance.regex,
      'isOcode2': instance.isOcode2,
      'capital': instance.capital,
      'id': instance.id,
      'status': instance.status,
      'isOcode3': instance.isOcode3,
      'timeZoneId': instance.timeZoneId,
      'phoneNumberMaxLength': instance.phoneNumberMaxLength,
    };
