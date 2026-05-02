import 'package:freezed_annotation/freezed_annotation.dart';

part 'sender_for_chat_request.freezed.dart';
part 'sender_for_chat_request.g.dart';

@freezed
abstract class SenderForChatRequest with _$SenderForChatRequest {
  const factory SenderForChatRequest({
    @JsonKey(name: 'appId') int? appId,
    @JsonKey(name: 'appName') String? appName,
    @JsonKey(name: 'countryName') String? countryName,
    @JsonKey(name: 'requestId') String? requestId,
    @JsonKey(name: 'verifiedName') String? verifiedName,
    @JsonKey(name: 'codeVerificationStatus') dynamic codeVerificationStatus,
    @JsonKey(name: 'displayPhoneNumber') dynamic displayPhoneNumber,
    @JsonKey(name: 'qualityRating') String? qualityRating,
    @JsonKey(name: 'platformType') dynamic platformType,
    @JsonKey(name: 'webhookApplication') dynamic webhookApplication,
    @JsonKey(name: 'messageMediaurl') dynamic messageMediaurl,
    @JsonKey(name: 'entryDate') String? entryDate,
    @JsonKey(name: 'entryTime') dynamic entryTime,
    @JsonKey(name: 'scannedDate') String? scannedDate,
    @JsonKey(name: 'scannedTime') dynamic scannedTime,
    @JsonKey(name: 'modifyDate') String? modifyDate,
    @JsonKey(name: 'modifyTime') dynamic modifyTime,
    @JsonKey(name: 'isDeleted') bool? isDeleted,
    @JsonKey(name: 'wabaSyncStatus') bool? wabaSyncStatus,
    @JsonKey(name: 'fbBusinessId') String? fbBusinessId,
    @JsonKey(name: 'fbStatus') String? fbStatus,
    @JsonKey(name: 'fbMessagingLimit') String? fbMessagingLimit,
    @JsonKey(name: 'billingAccount') int? billingAccount,
    @JsonKey(name: 'senderMasterId') int? senderMasterId,
    @JsonKey(name: 'rn') int? rn,
    @JsonKey(name: 'isSenderNoInBothApp') bool? isSenderNoInBothApp,
    @JsonKey(name: 'enabledAppId') int? enabledAppId,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'mobileNo') String? mobileNo,
    @JsonKey(name: 'countryId') int? countryId,
    @JsonKey(name: 'countryCode') String? countryCode,
    @JsonKey(name: 'callBackURL') String? callBackURL,
    @JsonKey(name: 'protocolId') int? protocolId,
    @JsonKey(name: 'entryOn') String? entryOn,
    @JsonKey(name: 'scannedOn') String? scannedOn,
    @JsonKey(name: 'modifyOn') String? modifyOn,
    @JsonKey(name: 'phoneNoId') String? phoneNoId,
    @JsonKey(name: 'wabaId') String? wabaId,
    @JsonKey(name: 'token') String? token,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'wabaSyncLastDate') dynamic wabaSyncLastDate,
    @JsonKey(name: 'loginStatus') bool? loginStatus,
    @JsonKey(name: 'contactId') int? contactId,
    @JsonKey(name: 'contactNumber') dynamic contactNumber,
    @JsonKey(name: 'senderMobileNo') dynamic senderMobileNo,
    @JsonKey(name: 'isBotReplyOn') bool? isBotReplyOn,
    @JsonKey(name: 'isAIReplyOn') bool? isAIReplyOn,
    @JsonKey(name: 'wid') int? wid,
    @JsonKey(name: 'recipientMobileNo') dynamic recipientMobileNo,
    @JsonKey(name: 'isCallbackDisabled') bool? isCallbackDisabled,
    @JsonKey(name: 'statusCode') int? statusCode,
    @JsonKey(name: 'responseText') String? responseText,
    @JsonKey(name: 'pgStatusCode') int? pgStatusCode,
    @JsonKey(name: 'msg') dynamic msg,
    @JsonKey(name: 'transactionID') dynamic transactionID,
  }) = _SenderForChatRequest;

  factory SenderForChatRequest.fromJson(Map<String, Object?> json) => _$SenderForChatRequestFromJson(json);
}

