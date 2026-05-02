import 'package:freezed_annotation/freezed_annotation.dart';

part 'website_app.freezed.dart';
part 'website_app.g.dart';

@freezed
abstract class WebsiteApp with _$WebsiteApp {
  const factory WebsiteApp({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'wid') int? wid,
    @JsonKey(name: 'appId') int? appId,
    @JsonKey(name: 'appName') String? appName,
    @JsonKey(name: 'isActive') bool? isActive,
  }) = _WebsiteApp;

  factory WebsiteApp.fromJson(Map<String, Object?> json) => _$WebsiteAppFromJson(json);
}

