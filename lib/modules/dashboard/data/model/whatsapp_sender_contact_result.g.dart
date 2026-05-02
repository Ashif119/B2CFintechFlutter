// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'whatsapp_sender_contact_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WhatsappSenderContactResult _$WhatsappSenderContactResultFromJson(
  Map<String, dynamic> json,
) => _WhatsappSenderContactResult(
  lastConversationDate: json['lastConversationDate'],
  labels: json['labels'],
  contactProfile: json['contactProfile'] as String?,
  contactProfileHash: json['contactProfileHash'] as String?,
  isBotReplyOn: json['isBotReplyOn'] as bool?,
  isAIReplyOn: json['isAIReplyOn'] as bool?,
  lastConversationDateByTimeStamp: json['lastConversationDateByTimeStamp'],
  labelDetails: json['labelDetails'],
  isSent: json['isSent'] as bool?,
  isTask: json['isTask'] as bool?,
  unreadMsg: json['unreadMsg'] as bool?,
  messageType: json['messageType'],
  messageText: json['messageText'],
  lastDocument: json['lastDocument'],
  reactedOnMsg: json['reactedOnMsg'],
  id: (json['id'] as num?)?.toInt(),
  mobileNo: json['mobileNo'] as String?,
  contactName: json['contactName'] as String?,
  unReadMsgCount: (json['unReadMsgCount'] as num?)?.toInt(),
  entryDate: json['entryDate'] as String?,
  modifyDate: json['modifyDate'] as String?,
  isGroup: json['isGroup'] as bool?,
  lastChatConversationDate: json['lastChatConversationDate'],
  senderId: (json['senderId'] as num?)?.toInt(),
);

Map<String, dynamic> _$WhatsappSenderContactResultToJson(
  _WhatsappSenderContactResult instance,
) => <String, dynamic>{
  'lastConversationDate': instance.lastConversationDate,
  'labels': instance.labels,
  'contactProfile': instance.contactProfile,
  'contactProfileHash': instance.contactProfileHash,
  'isBotReplyOn': instance.isBotReplyOn,
  'isAIReplyOn': instance.isAIReplyOn,
  'lastConversationDateByTimeStamp': instance.lastConversationDateByTimeStamp,
  'labelDetails': instance.labelDetails,
  'isSent': instance.isSent,
  'isTask': instance.isTask,
  'unreadMsg': instance.unreadMsg,
  'messageType': instance.messageType,
  'messageText': instance.messageText,
  'lastDocument': instance.lastDocument,
  'reactedOnMsg': instance.reactedOnMsg,
  'id': instance.id,
  'mobileNo': instance.mobileNo,
  'contactName': instance.contactName,
  'unReadMsgCount': instance.unReadMsgCount,
  'entryDate': instance.entryDate,
  'modifyDate': instance.modifyDate,
  'isGroup': instance.isGroup,
  'lastChatConversationDate': instance.lastChatConversationDate,
  'senderId': instance.senderId,
};
