import 'package:freezed_annotation/freezed_annotation.dart';

part 'package_subscription_result.freezed.dart';
part 'package_subscription_result.g.dart';

@freezed
abstract class PackageSubscriptionResult with _$PackageSubscriptionResult {
  const factory PackageSubscriptionResult({
    @JsonKey(name: 'packageName') String? packageName,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'duration') int? duration,
    @JsonKey(name: 'allowedNumberLimit') int? allowedNumberLimit,
    @JsonKey(name: 'dailySendLimit') int? dailySendLimit,
    @JsonKey(name: 'dailyReceiveLimit') int? dailyReceiveLimit,
    @JsonKey(name: 'packageRate') double? packageRate,
    @JsonKey(name: 'isSendRateIncluded') bool? isSendRateIncluded,
    @JsonKey(name: 'sendRate') double? sendRate,
    @JsonKey(name: 'isReceiveRateIncluded') bool? isReceiveRateIncluded,
    @JsonKey(name: 'receiveRate') double? receiveRate,
    @JsonKey(name: 'isTrialPack') bool? isTrialPack,
    @JsonKey(name: 'isGroupMessaging') bool? isGroupMessaging,
    @JsonKey(name: 'isActive') bool? isActive,
    @JsonKey(name: 'entryAt') String? entryAt,
    @JsonKey(name: 'modifyAt') String? modifyAt,
    @JsonKey(name: 'allowApp') int? allowApp,
    @JsonKey(name: 'isBotAllowed') bool? isBotAllowed,
    @JsonKey(name: 'isFbCloudAllowed') bool? isFbCloudAllowed,
    @JsonKey(name: 'activated') bool? activated,
    @JsonKey(name: 'expiryOn') int? expiryOn,
    @JsonKey(name: 'expiryDate') dynamic expiryDate,
    @JsonKey(name: 'wid') int? wid,
    @JsonKey(name: 'entryBy') int? entryBy,
    @JsonKey(name: 'modifyBy') int? modifyBy,
    @JsonKey(name: 'teamMember') int? teamMember,
    @JsonKey(name: 'allowedTeamMember') int? allowedTeamMember,
    @JsonKey(name: 'leadCount') int? leadCount,
    @JsonKey(name: 'contactCount') int? contactCount,
    @JsonKey(name: 'annualDiscount') int? annualDiscount,
    @JsonKey(name: 'status') int? status,
    @JsonKey(name: 'message') dynamic message,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'loginId') int? loginId,
  }) = _PackageSubscriptionResult;

  factory PackageSubscriptionResult.fromJson(Map<String, Object?> json) => _$PackageSubscriptionResultFromJson(json);
}

