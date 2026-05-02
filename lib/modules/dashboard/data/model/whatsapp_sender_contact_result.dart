import 'package:freezed_annotation/freezed_annotation.dart';

part 'whatsapp_sender_contact_result.freezed.dart';
part 'whatsapp_sender_contact_result.g.dart';

@freezed
abstract class WhatsappSenderContactResult with _$WhatsappSenderContactResult {
  const factory WhatsappSenderContactResult({
    @JsonKey(name: 'lastConversationDate') dynamic lastConversationDate,
    @JsonKey(name: 'labels') dynamic labels,
    @JsonKey(name: 'contactProfile') String? contactProfile,
    @JsonKey(name: 'contactProfileHash') String? contactProfileHash,
    @JsonKey(name: 'isBotReplyOn') bool? isBotReplyOn,
    @JsonKey(name: 'isAIReplyOn') bool? isAIReplyOn,
    @JsonKey(name: 'lastConversationDateByTimeStamp') dynamic lastConversationDateByTimeStamp,
    @JsonKey(name: 'labelDetails') dynamic labelDetails,
    @JsonKey(name: 'isSent') bool? isSent,
    @JsonKey(name: 'isTask') bool? isTask,
    @JsonKey(name: 'unreadMsg') bool? unreadMsg,
    @JsonKey(name: 'messageType') dynamic messageType,
    @JsonKey(name: 'messageText') dynamic messageText,
    @JsonKey(name: 'lastDocument') dynamic lastDocument,
    @JsonKey(name: 'reactedOnMsg') dynamic reactedOnMsg,
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'mobileNo') String? mobileNo,
    @JsonKey(name: 'contactName') String? contactName,
    @JsonKey(name: 'unReadMsgCount') int? unReadMsgCount,
    @JsonKey(name: 'entryDate') String? entryDate,
    @JsonKey(name: 'modifyDate') String? modifyDate,
    @JsonKey(name: 'isGroup') bool? isGroup,
    @JsonKey(name: 'lastChatConversationDate') dynamic lastChatConversationDate,
    @JsonKey(name: 'senderId') int? senderId,
  }) = _WhatsappSenderContactResult;

  factory WhatsappSenderContactResult.fromJson(Map<String, Object?> json) => _$WhatsappSenderContactResultFromJson(json);
}

