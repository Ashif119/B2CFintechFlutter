// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'website_app.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WebsiteApp _$WebsiteAppFromJson(Map<String, dynamic> json) => _WebsiteApp(
  id: (json['id'] as num?)?.toInt(),
  wid: (json['wid'] as num?)?.toInt(),
  appId: (json['appId'] as num?)?.toInt(),
  appName: json['appName'] as String?,
  isActive: json['isActive'] as bool?,
);

Map<String, dynamic> _$WebsiteAppToJson(_WebsiteApp instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wid': instance.wid,
      'appId': instance.appId,
      'appName': instance.appName,
      'isActive': instance.isActive,
    };
