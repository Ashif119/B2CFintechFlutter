// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sender_for_chat_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SenderForChatRequest {

@JsonKey(name: 'appId') int? get appId;@JsonKey(name: 'appName') String? get appName;@JsonKey(name: 'countryName') String? get countryName;@JsonKey(name: 'requestId') String? get requestId;@JsonKey(name: 'verifiedName') String? get verifiedName;@JsonKey(name: 'codeVerificationStatus') dynamic get codeVerificationStatus;@JsonKey(name: 'displayPhoneNumber') dynamic get displayPhoneNumber;@JsonKey(name: 'qualityRating') String? get qualityRating;@JsonKey(name: 'platformType') dynamic get platformType;@JsonKey(name: 'webhookApplication') dynamic get webhookApplication;@JsonKey(name: 'messageMediaurl') dynamic get messageMediaurl;@JsonKey(name: 'entryDate') String? get entryDate;@JsonKey(name: 'entryTime') dynamic get entryTime;@JsonKey(name: 'scannedDate') String? get scannedDate;@JsonKey(name: 'scannedTime') dynamic get scannedTime;@JsonKey(name: 'modifyDate') String? get modifyDate;@JsonKey(name: 'modifyTime') dynamic get modifyTime;@JsonKey(name: 'isDeleted') bool? get isDeleted;@JsonKey(name: 'wabaSyncStatus') bool? get wabaSyncStatus;@JsonKey(name: 'fbBusinessId') String? get fbBusinessId;@JsonKey(name: 'fbStatus') String? get fbStatus;@JsonKey(name: 'fbMessagingLimit') String? get fbMessagingLimit;@JsonKey(name: 'billingAccount') int? get billingAccount;@JsonKey(name: 'senderMasterId') int? get senderMasterId;@JsonKey(name: 'rn') int? get rn;@JsonKey(name: 'isSenderNoInBothApp') bool? get isSenderNoInBothApp;@JsonKey(name: 'enabledAppId') int? get enabledAppId;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'userId') int? get userId;@JsonKey(name: 'mobileNo') String? get mobileNo;@JsonKey(name: 'countryId') int? get countryId;@JsonKey(name: 'countryCode') String? get countryCode;@JsonKey(name: 'callBackURL') String? get callBackURL;@JsonKey(name: 'protocolId') int? get protocolId;@JsonKey(name: 'entryOn') String? get entryOn;@JsonKey(name: 'scannedOn') String? get scannedOn;@JsonKey(name: 'modifyOn') String? get modifyOn;@JsonKey(name: 'phoneNoId') String? get phoneNoId;@JsonKey(name: 'wabaId') String? get wabaId;@JsonKey(name: 'token') String? get token;@JsonKey(name: 'level') String? get level;@JsonKey(name: 'wabaSyncLastDate') dynamic get wabaSyncLastDate;@JsonKey(name: 'loginStatus') bool? get loginStatus;@JsonKey(name: 'contactId') int? get contactId;@JsonKey(name: 'contactNumber') dynamic get contactNumber;@JsonKey(name: 'senderMobileNo') dynamic get senderMobileNo;@JsonKey(name: 'isBotReplyOn') bool? get isBotReplyOn;@JsonKey(name: 'isAIReplyOn') bool? get isAIReplyOn;@JsonKey(name: 'wid') int? get wid;@JsonKey(name: 'recipientMobileNo') dynamic get recipientMobileNo;@JsonKey(name: 'isCallbackDisabled') bool? get isCallbackDisabled;@JsonKey(name: 'statusCode') int? get statusCode;@JsonKey(name: 'responseText') String? get responseText;@JsonKey(name: 'pgStatusCode') int? get pgStatusCode;@JsonKey(name: 'msg') dynamic get msg;@JsonKey(name: 'transactionID') dynamic get transactionID;
/// Create a copy of SenderForChatRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SenderForChatRequestCopyWith<SenderForChatRequest> get copyWith => _$SenderForChatRequestCopyWithImpl<SenderForChatRequest>(this as SenderForChatRequest, _$identity);

  /// Serializes this SenderForChatRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SenderForChatRequest&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.verifiedName, verifiedName) || other.verifiedName == verifiedName)&&const DeepCollectionEquality().equals(other.codeVerificationStatus, codeVerificationStatus)&&const DeepCollectionEquality().equals(other.displayPhoneNumber, displayPhoneNumber)&&(identical(other.qualityRating, qualityRating) || other.qualityRating == qualityRating)&&const DeepCollectionEquality().equals(other.platformType, platformType)&&const DeepCollectionEquality().equals(other.webhookApplication, webhookApplication)&&const DeepCollectionEquality().equals(other.messageMediaurl, messageMediaurl)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&const DeepCollectionEquality().equals(other.entryTime, entryTime)&&(identical(other.scannedDate, scannedDate) || other.scannedDate == scannedDate)&&const DeepCollectionEquality().equals(other.scannedTime, scannedTime)&&(identical(other.modifyDate, modifyDate) || other.modifyDate == modifyDate)&&const DeepCollectionEquality().equals(other.modifyTime, modifyTime)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.wabaSyncStatus, wabaSyncStatus) || other.wabaSyncStatus == wabaSyncStatus)&&(identical(other.fbBusinessId, fbBusinessId) || other.fbBusinessId == fbBusinessId)&&(identical(other.fbStatus, fbStatus) || other.fbStatus == fbStatus)&&(identical(other.fbMessagingLimit, fbMessagingLimit) || other.fbMessagingLimit == fbMessagingLimit)&&(identical(other.billingAccount, billingAccount) || other.billingAccount == billingAccount)&&(identical(other.senderMasterId, senderMasterId) || other.senderMasterId == senderMasterId)&&(identical(other.rn, rn) || other.rn == rn)&&(identical(other.isSenderNoInBothApp, isSenderNoInBothApp) || other.isSenderNoInBothApp == isSenderNoInBothApp)&&(identical(other.enabledAppId, enabledAppId) || other.enabledAppId == enabledAppId)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.callBackURL, callBackURL) || other.callBackURL == callBackURL)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.entryOn, entryOn) || other.entryOn == entryOn)&&(identical(other.scannedOn, scannedOn) || other.scannedOn == scannedOn)&&(identical(other.modifyOn, modifyOn) || other.modifyOn == modifyOn)&&(identical(other.phoneNoId, phoneNoId) || other.phoneNoId == phoneNoId)&&(identical(other.wabaId, wabaId) || other.wabaId == wabaId)&&(identical(other.token, token) || other.token == token)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.wabaSyncLastDate, wabaSyncLastDate)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.contactId, contactId) || other.contactId == contactId)&&const DeepCollectionEquality().equals(other.contactNumber, contactNumber)&&const DeepCollectionEquality().equals(other.senderMobileNo, senderMobileNo)&&(identical(other.isBotReplyOn, isBotReplyOn) || other.isBotReplyOn == isBotReplyOn)&&(identical(other.isAIReplyOn, isAIReplyOn) || other.isAIReplyOn == isAIReplyOn)&&(identical(other.wid, wid) || other.wid == wid)&&const DeepCollectionEquality().equals(other.recipientMobileNo, recipientMobileNo)&&(identical(other.isCallbackDisabled, isCallbackDisabled) || other.isCallbackDisabled == isCallbackDisabled)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.responseText, responseText) || other.responseText == responseText)&&(identical(other.pgStatusCode, pgStatusCode) || other.pgStatusCode == pgStatusCode)&&const DeepCollectionEquality().equals(other.msg, msg)&&const DeepCollectionEquality().equals(other.transactionID, transactionID));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,appId,appName,countryName,requestId,verifiedName,const DeepCollectionEquality().hash(codeVerificationStatus),const DeepCollectionEquality().hash(displayPhoneNumber),qualityRating,const DeepCollectionEquality().hash(platformType),const DeepCollectionEquality().hash(webhookApplication),const DeepCollectionEquality().hash(messageMediaurl),entryDate,const DeepCollectionEquality().hash(entryTime),scannedDate,const DeepCollectionEquality().hash(scannedTime),modifyDate,const DeepCollectionEquality().hash(modifyTime),isDeleted,wabaSyncStatus,fbBusinessId,fbStatus,fbMessagingLimit,billingAccount,senderMasterId,rn,isSenderNoInBothApp,enabledAppId,id,userId,mobileNo,countryId,countryCode,callBackURL,protocolId,entryOn,scannedOn,modifyOn,phoneNoId,wabaId,token,level,const DeepCollectionEquality().hash(wabaSyncLastDate),loginStatus,contactId,const DeepCollectionEquality().hash(contactNumber),const DeepCollectionEquality().hash(senderMobileNo),isBotReplyOn,isAIReplyOn,wid,const DeepCollectionEquality().hash(recipientMobileNo),isCallbackDisabled,statusCode,responseText,pgStatusCode,const DeepCollectionEquality().hash(msg),const DeepCollectionEquality().hash(transactionID)]);

@override
String toString() {
  return 'SenderForChatRequest(appId: $appId, appName: $appName, countryName: $countryName, requestId: $requestId, verifiedName: $verifiedName, codeVerificationStatus: $codeVerificationStatus, displayPhoneNumber: $displayPhoneNumber, qualityRating: $qualityRating, platformType: $platformType, webhookApplication: $webhookApplication, messageMediaurl: $messageMediaurl, entryDate: $entryDate, entryTime: $entryTime, scannedDate: $scannedDate, scannedTime: $scannedTime, modifyDate: $modifyDate, modifyTime: $modifyTime, isDeleted: $isDeleted, wabaSyncStatus: $wabaSyncStatus, fbBusinessId: $fbBusinessId, fbStatus: $fbStatus, fbMessagingLimit: $fbMessagingLimit, billingAccount: $billingAccount, senderMasterId: $senderMasterId, rn: $rn, isSenderNoInBothApp: $isSenderNoInBothApp, enabledAppId: $enabledAppId, id: $id, userId: $userId, mobileNo: $mobileNo, countryId: $countryId, countryCode: $countryCode, callBackURL: $callBackURL, protocolId: $protocolId, entryOn: $entryOn, scannedOn: $scannedOn, modifyOn: $modifyOn, phoneNoId: $phoneNoId, wabaId: $wabaId, token: $token, level: $level, wabaSyncLastDate: $wabaSyncLastDate, loginStatus: $loginStatus, contactId: $contactId, contactNumber: $contactNumber, senderMobileNo: $senderMobileNo, isBotReplyOn: $isBotReplyOn, isAIReplyOn: $isAIReplyOn, wid: $wid, recipientMobileNo: $recipientMobileNo, isCallbackDisabled: $isCallbackDisabled, statusCode: $statusCode, responseText: $responseText, pgStatusCode: $pgStatusCode, msg: $msg, transactionID: $transactionID)';
}


}

/// @nodoc
abstract mixin class $SenderForChatRequestCopyWith<$Res>  {
  factory $SenderForChatRequestCopyWith(SenderForChatRequest value, $Res Function(SenderForChatRequest) _then) = _$SenderForChatRequestCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'appId') int? appId,@JsonKey(name: 'appName') String? appName,@JsonKey(name: 'countryName') String? countryName,@JsonKey(name: 'requestId') String? requestId,@JsonKey(name: 'verifiedName') String? verifiedName,@JsonKey(name: 'codeVerificationStatus') dynamic codeVerificationStatus,@JsonKey(name: 'displayPhoneNumber') dynamic displayPhoneNumber,@JsonKey(name: 'qualityRating') String? qualityRating,@JsonKey(name: 'platformType') dynamic platformType,@JsonKey(name: 'webhookApplication') dynamic webhookApplication,@JsonKey(name: 'messageMediaurl') dynamic messageMediaurl,@JsonKey(name: 'entryDate') String? entryDate,@JsonKey(name: 'entryTime') dynamic entryTime,@JsonKey(name: 'scannedDate') String? scannedDate,@JsonKey(name: 'scannedTime') dynamic scannedTime,@JsonKey(name: 'modifyDate') String? modifyDate,@JsonKey(name: 'modifyTime') dynamic modifyTime,@JsonKey(name: 'isDeleted') bool? isDeleted,@JsonKey(name: 'wabaSyncStatus') bool? wabaSyncStatus,@JsonKey(name: 'fbBusinessId') String? fbBusinessId,@JsonKey(name: 'fbStatus') String? fbStatus,@JsonKey(name: 'fbMessagingLimit') String? fbMessagingLimit,@JsonKey(name: 'billingAccount') int? billingAccount,@JsonKey(name: 'senderMasterId') int? senderMasterId,@JsonKey(name: 'rn') int? rn,@JsonKey(name: 'isSenderNoInBothApp') bool? isSenderNoInBothApp,@JsonKey(name: 'enabledAppId') int? enabledAppId,@JsonKey(name: 'id') int? id,@JsonKey(name: 'userId') int? userId,@JsonKey(name: 'mobileNo') String? mobileNo,@JsonKey(name: 'countryId') int? countryId,@JsonKey(name: 'countryCode') String? countryCode,@JsonKey(name: 'callBackURL') String? callBackURL,@JsonKey(name: 'protocolId') int? protocolId,@JsonKey(name: 'entryOn') String? entryOn,@JsonKey(name: 'scannedOn') String? scannedOn,@JsonKey(name: 'modifyOn') String? modifyOn,@JsonKey(name: 'phoneNoId') String? phoneNoId,@JsonKey(name: 'wabaId') String? wabaId,@JsonKey(name: 'token') String? token,@JsonKey(name: 'level') String? level,@JsonKey(name: 'wabaSyncLastDate') dynamic wabaSyncLastDate,@JsonKey(name: 'loginStatus') bool? loginStatus,@JsonKey(name: 'contactId') int? contactId,@JsonKey(name: 'contactNumber') dynamic contactNumber,@JsonKey(name: 'senderMobileNo') dynamic senderMobileNo,@JsonKey(name: 'isBotReplyOn') bool? isBotReplyOn,@JsonKey(name: 'isAIReplyOn') bool? isAIReplyOn,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'recipientMobileNo') dynamic recipientMobileNo,@JsonKey(name: 'isCallbackDisabled') bool? isCallbackDisabled,@JsonKey(name: 'statusCode') int? statusCode,@JsonKey(name: 'responseText') String? responseText,@JsonKey(name: 'pgStatusCode') int? pgStatusCode,@JsonKey(name: 'msg') dynamic msg,@JsonKey(name: 'transactionID') dynamic transactionID
});




}
/// @nodoc
class _$SenderForChatRequestCopyWithImpl<$Res>
    implements $SenderForChatRequestCopyWith<$Res> {
  _$SenderForChatRequestCopyWithImpl(this._self, this._then);

  final SenderForChatRequest _self;
  final $Res Function(SenderForChatRequest) _then;

/// Create a copy of SenderForChatRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? appId = freezed,Object? appName = freezed,Object? countryName = freezed,Object? requestId = freezed,Object? verifiedName = freezed,Object? codeVerificationStatus = freezed,Object? displayPhoneNumber = freezed,Object? qualityRating = freezed,Object? platformType = freezed,Object? webhookApplication = freezed,Object? messageMediaurl = freezed,Object? entryDate = freezed,Object? entryTime = freezed,Object? scannedDate = freezed,Object? scannedTime = freezed,Object? modifyDate = freezed,Object? modifyTime = freezed,Object? isDeleted = freezed,Object? wabaSyncStatus = freezed,Object? fbBusinessId = freezed,Object? fbStatus = freezed,Object? fbMessagingLimit = freezed,Object? billingAccount = freezed,Object? senderMasterId = freezed,Object? rn = freezed,Object? isSenderNoInBothApp = freezed,Object? enabledAppId = freezed,Object? id = freezed,Object? userId = freezed,Object? mobileNo = freezed,Object? countryId = freezed,Object? countryCode = freezed,Object? callBackURL = freezed,Object? protocolId = freezed,Object? entryOn = freezed,Object? scannedOn = freezed,Object? modifyOn = freezed,Object? phoneNoId = freezed,Object? wabaId = freezed,Object? token = freezed,Object? level = freezed,Object? wabaSyncLastDate = freezed,Object? loginStatus = freezed,Object? contactId = freezed,Object? contactNumber = freezed,Object? senderMobileNo = freezed,Object? isBotReplyOn = freezed,Object? isAIReplyOn = freezed,Object? wid = freezed,Object? recipientMobileNo = freezed,Object? isCallbackDisabled = freezed,Object? statusCode = freezed,Object? responseText = freezed,Object? pgStatusCode = freezed,Object? msg = freezed,Object? transactionID = freezed,}) {
  return _then(_self.copyWith(
appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,verifiedName: freezed == verifiedName ? _self.verifiedName : verifiedName // ignore: cast_nullable_to_non_nullable
as String?,codeVerificationStatus: freezed == codeVerificationStatus ? _self.codeVerificationStatus : codeVerificationStatus // ignore: cast_nullable_to_non_nullable
as dynamic,displayPhoneNumber: freezed == displayPhoneNumber ? _self.displayPhoneNumber : displayPhoneNumber // ignore: cast_nullable_to_non_nullable
as dynamic,qualityRating: freezed == qualityRating ? _self.qualityRating : qualityRating // ignore: cast_nullable_to_non_nullable
as String?,platformType: freezed == platformType ? _self.platformType : platformType // ignore: cast_nullable_to_non_nullable
as dynamic,webhookApplication: freezed == webhookApplication ? _self.webhookApplication : webhookApplication // ignore: cast_nullable_to_non_nullable
as dynamic,messageMediaurl: freezed == messageMediaurl ? _self.messageMediaurl : messageMediaurl // ignore: cast_nullable_to_non_nullable
as dynamic,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as String?,entryTime: freezed == entryTime ? _self.entryTime : entryTime // ignore: cast_nullable_to_non_nullable
as dynamic,scannedDate: freezed == scannedDate ? _self.scannedDate : scannedDate // ignore: cast_nullable_to_non_nullable
as String?,scannedTime: freezed == scannedTime ? _self.scannedTime : scannedTime // ignore: cast_nullable_to_non_nullable
as dynamic,modifyDate: freezed == modifyDate ? _self.modifyDate : modifyDate // ignore: cast_nullable_to_non_nullable
as String?,modifyTime: freezed == modifyTime ? _self.modifyTime : modifyTime // ignore: cast_nullable_to_non_nullable
as dynamic,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,wabaSyncStatus: freezed == wabaSyncStatus ? _self.wabaSyncStatus : wabaSyncStatus // ignore: cast_nullable_to_non_nullable
as bool?,fbBusinessId: freezed == fbBusinessId ? _self.fbBusinessId : fbBusinessId // ignore: cast_nullable_to_non_nullable
as String?,fbStatus: freezed == fbStatus ? _self.fbStatus : fbStatus // ignore: cast_nullable_to_non_nullable
as String?,fbMessagingLimit: freezed == fbMessagingLimit ? _self.fbMessagingLimit : fbMessagingLimit // ignore: cast_nullable_to_non_nullable
as String?,billingAccount: freezed == billingAccount ? _self.billingAccount : billingAccount // ignore: cast_nullable_to_non_nullable
as int?,senderMasterId: freezed == senderMasterId ? _self.senderMasterId : senderMasterId // ignore: cast_nullable_to_non_nullable
as int?,rn: freezed == rn ? _self.rn : rn // ignore: cast_nullable_to_non_nullable
as int?,isSenderNoInBothApp: freezed == isSenderNoInBothApp ? _self.isSenderNoInBothApp : isSenderNoInBothApp // ignore: cast_nullable_to_non_nullable
as bool?,enabledAppId: freezed == enabledAppId ? _self.enabledAppId : enabledAppId // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,callBackURL: freezed == callBackURL ? _self.callBackURL : callBackURL // ignore: cast_nullable_to_non_nullable
as String?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as int?,entryOn: freezed == entryOn ? _self.entryOn : entryOn // ignore: cast_nullable_to_non_nullable
as String?,scannedOn: freezed == scannedOn ? _self.scannedOn : scannedOn // ignore: cast_nullable_to_non_nullable
as String?,modifyOn: freezed == modifyOn ? _self.modifyOn : modifyOn // ignore: cast_nullable_to_non_nullable
as String?,phoneNoId: freezed == phoneNoId ? _self.phoneNoId : phoneNoId // ignore: cast_nullable_to_non_nullable
as String?,wabaId: freezed == wabaId ? _self.wabaId : wabaId // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,wabaSyncLastDate: freezed == wabaSyncLastDate ? _self.wabaSyncLastDate : wabaSyncLastDate // ignore: cast_nullable_to_non_nullable
as dynamic,loginStatus: freezed == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as bool?,contactId: freezed == contactId ? _self.contactId : contactId // ignore: cast_nullable_to_non_nullable
as int?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as dynamic,senderMobileNo: freezed == senderMobileNo ? _self.senderMobileNo : senderMobileNo // ignore: cast_nullable_to_non_nullable
as dynamic,isBotReplyOn: freezed == isBotReplyOn ? _self.isBotReplyOn : isBotReplyOn // ignore: cast_nullable_to_non_nullable
as bool?,isAIReplyOn: freezed == isAIReplyOn ? _self.isAIReplyOn : isAIReplyOn // ignore: cast_nullable_to_non_nullable
as bool?,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,recipientMobileNo: freezed == recipientMobileNo ? _self.recipientMobileNo : recipientMobileNo // ignore: cast_nullable_to_non_nullable
as dynamic,isCallbackDisabled: freezed == isCallbackDisabled ? _self.isCallbackDisabled : isCallbackDisabled // ignore: cast_nullable_to_non_nullable
as bool?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,responseText: freezed == responseText ? _self.responseText : responseText // ignore: cast_nullable_to_non_nullable
as String?,pgStatusCode: freezed == pgStatusCode ? _self.pgStatusCode : pgStatusCode // ignore: cast_nullable_to_non_nullable
as int?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as dynamic,transactionID: freezed == transactionID ? _self.transactionID : transactionID // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [SenderForChatRequest].
extension SenderForChatRequestPatterns on SenderForChatRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SenderForChatRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SenderForChatRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SenderForChatRequest value)  $default,){
final _that = this;
switch (_that) {
case _SenderForChatRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SenderForChatRequest value)?  $default,){
final _that = this;
switch (_that) {
case _SenderForChatRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'appId')  int? appId, @JsonKey(name: 'appName')  String? appName, @JsonKey(name: 'countryName')  String? countryName, @JsonKey(name: 'requestId')  String? requestId, @JsonKey(name: 'verifiedName')  String? verifiedName, @JsonKey(name: 'codeVerificationStatus')  dynamic codeVerificationStatus, @JsonKey(name: 'displayPhoneNumber')  dynamic displayPhoneNumber, @JsonKey(name: 'qualityRating')  String? qualityRating, @JsonKey(name: 'platformType')  dynamic platformType, @JsonKey(name: 'webhookApplication')  dynamic webhookApplication, @JsonKey(name: 'messageMediaurl')  dynamic messageMediaurl, @JsonKey(name: 'entryDate')  String? entryDate, @JsonKey(name: 'entryTime')  dynamic entryTime, @JsonKey(name: 'scannedDate')  String? scannedDate, @JsonKey(name: 'scannedTime')  dynamic scannedTime, @JsonKey(name: 'modifyDate')  String? modifyDate, @JsonKey(name: 'modifyTime')  dynamic modifyTime, @JsonKey(name: 'isDeleted')  bool? isDeleted, @JsonKey(name: 'wabaSyncStatus')  bool? wabaSyncStatus, @JsonKey(name: 'fbBusinessId')  String? fbBusinessId, @JsonKey(name: 'fbStatus')  String? fbStatus, @JsonKey(name: 'fbMessagingLimit')  String? fbMessagingLimit, @JsonKey(name: 'billingAccount')  int? billingAccount, @JsonKey(name: 'senderMasterId')  int? senderMasterId, @JsonKey(name: 'rn')  int? rn, @JsonKey(name: 'isSenderNoInBothApp')  bool? isSenderNoInBothApp, @JsonKey(name: 'enabledAppId')  int? enabledAppId, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'userId')  int? userId, @JsonKey(name: 'mobileNo')  String? mobileNo, @JsonKey(name: 'countryId')  int? countryId, @JsonKey(name: 'countryCode')  String? countryCode, @JsonKey(name: 'callBackURL')  String? callBackURL, @JsonKey(name: 'protocolId')  int? protocolId, @JsonKey(name: 'entryOn')  String? entryOn, @JsonKey(name: 'scannedOn')  String? scannedOn, @JsonKey(name: 'modifyOn')  String? modifyOn, @JsonKey(name: 'phoneNoId')  String? phoneNoId, @JsonKey(name: 'wabaId')  String? wabaId, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'wabaSyncLastDate')  dynamic wabaSyncLastDate, @JsonKey(name: 'loginStatus')  bool? loginStatus, @JsonKey(name: 'contactId')  int? contactId, @JsonKey(name: 'contactNumber')  dynamic contactNumber, @JsonKey(name: 'senderMobileNo')  dynamic senderMobileNo, @JsonKey(name: 'isBotReplyOn')  bool? isBotReplyOn, @JsonKey(name: 'isAIReplyOn')  bool? isAIReplyOn, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'recipientMobileNo')  dynamic recipientMobileNo, @JsonKey(name: 'isCallbackDisabled')  bool? isCallbackDisabled, @JsonKey(name: 'statusCode')  int? statusCode, @JsonKey(name: 'responseText')  String? responseText, @JsonKey(name: 'pgStatusCode')  int? pgStatusCode, @JsonKey(name: 'msg')  dynamic msg, @JsonKey(name: 'transactionID')  dynamic transactionID)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SenderForChatRequest() when $default != null:
return $default(_that.appId,_that.appName,_that.countryName,_that.requestId,_that.verifiedName,_that.codeVerificationStatus,_that.displayPhoneNumber,_that.qualityRating,_that.platformType,_that.webhookApplication,_that.messageMediaurl,_that.entryDate,_that.entryTime,_that.scannedDate,_that.scannedTime,_that.modifyDate,_that.modifyTime,_that.isDeleted,_that.wabaSyncStatus,_that.fbBusinessId,_that.fbStatus,_that.fbMessagingLimit,_that.billingAccount,_that.senderMasterId,_that.rn,_that.isSenderNoInBothApp,_that.enabledAppId,_that.id,_that.userId,_that.mobileNo,_that.countryId,_that.countryCode,_that.callBackURL,_that.protocolId,_that.entryOn,_that.scannedOn,_that.modifyOn,_that.phoneNoId,_that.wabaId,_that.token,_that.level,_that.wabaSyncLastDate,_that.loginStatus,_that.contactId,_that.contactNumber,_that.senderMobileNo,_that.isBotReplyOn,_that.isAIReplyOn,_that.wid,_that.recipientMobileNo,_that.isCallbackDisabled,_that.statusCode,_that.responseText,_that.pgStatusCode,_that.msg,_that.transactionID);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'appId')  int? appId, @JsonKey(name: 'appName')  String? appName, @JsonKey(name: 'countryName')  String? countryName, @JsonKey(name: 'requestId')  String? requestId, @JsonKey(name: 'verifiedName')  String? verifiedName, @JsonKey(name: 'codeVerificationStatus')  dynamic codeVerificationStatus, @JsonKey(name: 'displayPhoneNumber')  dynamic displayPhoneNumber, @JsonKey(name: 'qualityRating')  String? qualityRating, @JsonKey(name: 'platformType')  dynamic platformType, @JsonKey(name: 'webhookApplication')  dynamic webhookApplication, @JsonKey(name: 'messageMediaurl')  dynamic messageMediaurl, @JsonKey(name: 'entryDate')  String? entryDate, @JsonKey(name: 'entryTime')  dynamic entryTime, @JsonKey(name: 'scannedDate')  String? scannedDate, @JsonKey(name: 'scannedTime')  dynamic scannedTime, @JsonKey(name: 'modifyDate')  String? modifyDate, @JsonKey(name: 'modifyTime')  dynamic modifyTime, @JsonKey(name: 'isDeleted')  bool? isDeleted, @JsonKey(name: 'wabaSyncStatus')  bool? wabaSyncStatus, @JsonKey(name: 'fbBusinessId')  String? fbBusinessId, @JsonKey(name: 'fbStatus')  String? fbStatus, @JsonKey(name: 'fbMessagingLimit')  String? fbMessagingLimit, @JsonKey(name: 'billingAccount')  int? billingAccount, @JsonKey(name: 'senderMasterId')  int? senderMasterId, @JsonKey(name: 'rn')  int? rn, @JsonKey(name: 'isSenderNoInBothApp')  bool? isSenderNoInBothApp, @JsonKey(name: 'enabledAppId')  int? enabledAppId, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'userId')  int? userId, @JsonKey(name: 'mobileNo')  String? mobileNo, @JsonKey(name: 'countryId')  int? countryId, @JsonKey(name: 'countryCode')  String? countryCode, @JsonKey(name: 'callBackURL')  String? callBackURL, @JsonKey(name: 'protocolId')  int? protocolId, @JsonKey(name: 'entryOn')  String? entryOn, @JsonKey(name: 'scannedOn')  String? scannedOn, @JsonKey(name: 'modifyOn')  String? modifyOn, @JsonKey(name: 'phoneNoId')  String? phoneNoId, @JsonKey(name: 'wabaId')  String? wabaId, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'wabaSyncLastDate')  dynamic wabaSyncLastDate, @JsonKey(name: 'loginStatus')  bool? loginStatus, @JsonKey(name: 'contactId')  int? contactId, @JsonKey(name: 'contactNumber')  dynamic contactNumber, @JsonKey(name: 'senderMobileNo')  dynamic senderMobileNo, @JsonKey(name: 'isBotReplyOn')  bool? isBotReplyOn, @JsonKey(name: 'isAIReplyOn')  bool? isAIReplyOn, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'recipientMobileNo')  dynamic recipientMobileNo, @JsonKey(name: 'isCallbackDisabled')  bool? isCallbackDisabled, @JsonKey(name: 'statusCode')  int? statusCode, @JsonKey(name: 'responseText')  String? responseText, @JsonKey(name: 'pgStatusCode')  int? pgStatusCode, @JsonKey(name: 'msg')  dynamic msg, @JsonKey(name: 'transactionID')  dynamic transactionID)  $default,) {final _that = this;
switch (_that) {
case _SenderForChatRequest():
return $default(_that.appId,_that.appName,_that.countryName,_that.requestId,_that.verifiedName,_that.codeVerificationStatus,_that.displayPhoneNumber,_that.qualityRating,_that.platformType,_that.webhookApplication,_that.messageMediaurl,_that.entryDate,_that.entryTime,_that.scannedDate,_that.scannedTime,_that.modifyDate,_that.modifyTime,_that.isDeleted,_that.wabaSyncStatus,_that.fbBusinessId,_that.fbStatus,_that.fbMessagingLimit,_that.billingAccount,_that.senderMasterId,_that.rn,_that.isSenderNoInBothApp,_that.enabledAppId,_that.id,_that.userId,_that.mobileNo,_that.countryId,_that.countryCode,_that.callBackURL,_that.protocolId,_that.entryOn,_that.scannedOn,_that.modifyOn,_that.phoneNoId,_that.wabaId,_that.token,_that.level,_that.wabaSyncLastDate,_that.loginStatus,_that.contactId,_that.contactNumber,_that.senderMobileNo,_that.isBotReplyOn,_that.isAIReplyOn,_that.wid,_that.recipientMobileNo,_that.isCallbackDisabled,_that.statusCode,_that.responseText,_that.pgStatusCode,_that.msg,_that.transactionID);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'appId')  int? appId, @JsonKey(name: 'appName')  String? appName, @JsonKey(name: 'countryName')  String? countryName, @JsonKey(name: 'requestId')  String? requestId, @JsonKey(name: 'verifiedName')  String? verifiedName, @JsonKey(name: 'codeVerificationStatus')  dynamic codeVerificationStatus, @JsonKey(name: 'displayPhoneNumber')  dynamic displayPhoneNumber, @JsonKey(name: 'qualityRating')  String? qualityRating, @JsonKey(name: 'platformType')  dynamic platformType, @JsonKey(name: 'webhookApplication')  dynamic webhookApplication, @JsonKey(name: 'messageMediaurl')  dynamic messageMediaurl, @JsonKey(name: 'entryDate')  String? entryDate, @JsonKey(name: 'entryTime')  dynamic entryTime, @JsonKey(name: 'scannedDate')  String? scannedDate, @JsonKey(name: 'scannedTime')  dynamic scannedTime, @JsonKey(name: 'modifyDate')  String? modifyDate, @JsonKey(name: 'modifyTime')  dynamic modifyTime, @JsonKey(name: 'isDeleted')  bool? isDeleted, @JsonKey(name: 'wabaSyncStatus')  bool? wabaSyncStatus, @JsonKey(name: 'fbBusinessId')  String? fbBusinessId, @JsonKey(name: 'fbStatus')  String? fbStatus, @JsonKey(name: 'fbMessagingLimit')  String? fbMessagingLimit, @JsonKey(name: 'billingAccount')  int? billingAccount, @JsonKey(name: 'senderMasterId')  int? senderMasterId, @JsonKey(name: 'rn')  int? rn, @JsonKey(name: 'isSenderNoInBothApp')  bool? isSenderNoInBothApp, @JsonKey(name: 'enabledAppId')  int? enabledAppId, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'userId')  int? userId, @JsonKey(name: 'mobileNo')  String? mobileNo, @JsonKey(name: 'countryId')  int? countryId, @JsonKey(name: 'countryCode')  String? countryCode, @JsonKey(name: 'callBackURL')  String? callBackURL, @JsonKey(name: 'protocolId')  int? protocolId, @JsonKey(name: 'entryOn')  String? entryOn, @JsonKey(name: 'scannedOn')  String? scannedOn, @JsonKey(name: 'modifyOn')  String? modifyOn, @JsonKey(name: 'phoneNoId')  String? phoneNoId, @JsonKey(name: 'wabaId')  String? wabaId, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'level')  String? level, @JsonKey(name: 'wabaSyncLastDate')  dynamic wabaSyncLastDate, @JsonKey(name: 'loginStatus')  bool? loginStatus, @JsonKey(name: 'contactId')  int? contactId, @JsonKey(name: 'contactNumber')  dynamic contactNumber, @JsonKey(name: 'senderMobileNo')  dynamic senderMobileNo, @JsonKey(name: 'isBotReplyOn')  bool? isBotReplyOn, @JsonKey(name: 'isAIReplyOn')  bool? isAIReplyOn, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'recipientMobileNo')  dynamic recipientMobileNo, @JsonKey(name: 'isCallbackDisabled')  bool? isCallbackDisabled, @JsonKey(name: 'statusCode')  int? statusCode, @JsonKey(name: 'responseText')  String? responseText, @JsonKey(name: 'pgStatusCode')  int? pgStatusCode, @JsonKey(name: 'msg')  dynamic msg, @JsonKey(name: 'transactionID')  dynamic transactionID)?  $default,) {final _that = this;
switch (_that) {
case _SenderForChatRequest() when $default != null:
return $default(_that.appId,_that.appName,_that.countryName,_that.requestId,_that.verifiedName,_that.codeVerificationStatus,_that.displayPhoneNumber,_that.qualityRating,_that.platformType,_that.webhookApplication,_that.messageMediaurl,_that.entryDate,_that.entryTime,_that.scannedDate,_that.scannedTime,_that.modifyDate,_that.modifyTime,_that.isDeleted,_that.wabaSyncStatus,_that.fbBusinessId,_that.fbStatus,_that.fbMessagingLimit,_that.billingAccount,_that.senderMasterId,_that.rn,_that.isSenderNoInBothApp,_that.enabledAppId,_that.id,_that.userId,_that.mobileNo,_that.countryId,_that.countryCode,_that.callBackURL,_that.protocolId,_that.entryOn,_that.scannedOn,_that.modifyOn,_that.phoneNoId,_that.wabaId,_that.token,_that.level,_that.wabaSyncLastDate,_that.loginStatus,_that.contactId,_that.contactNumber,_that.senderMobileNo,_that.isBotReplyOn,_that.isAIReplyOn,_that.wid,_that.recipientMobileNo,_that.isCallbackDisabled,_that.statusCode,_that.responseText,_that.pgStatusCode,_that.msg,_that.transactionID);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SenderForChatRequest implements SenderForChatRequest {
  const _SenderForChatRequest({@JsonKey(name: 'appId') this.appId, @JsonKey(name: 'appName') this.appName, @JsonKey(name: 'countryName') this.countryName, @JsonKey(name: 'requestId') this.requestId, @JsonKey(name: 'verifiedName') this.verifiedName, @JsonKey(name: 'codeVerificationStatus') this.codeVerificationStatus, @JsonKey(name: 'displayPhoneNumber') this.displayPhoneNumber, @JsonKey(name: 'qualityRating') this.qualityRating, @JsonKey(name: 'platformType') this.platformType, @JsonKey(name: 'webhookApplication') this.webhookApplication, @JsonKey(name: 'messageMediaurl') this.messageMediaurl, @JsonKey(name: 'entryDate') this.entryDate, @JsonKey(name: 'entryTime') this.entryTime, @JsonKey(name: 'scannedDate') this.scannedDate, @JsonKey(name: 'scannedTime') this.scannedTime, @JsonKey(name: 'modifyDate') this.modifyDate, @JsonKey(name: 'modifyTime') this.modifyTime, @JsonKey(name: 'isDeleted') this.isDeleted, @JsonKey(name: 'wabaSyncStatus') this.wabaSyncStatus, @JsonKey(name: 'fbBusinessId') this.fbBusinessId, @JsonKey(name: 'fbStatus') this.fbStatus, @JsonKey(name: 'fbMessagingLimit') this.fbMessagingLimit, @JsonKey(name: 'billingAccount') this.billingAccount, @JsonKey(name: 'senderMasterId') this.senderMasterId, @JsonKey(name: 'rn') this.rn, @JsonKey(name: 'isSenderNoInBothApp') this.isSenderNoInBothApp, @JsonKey(name: 'enabledAppId') this.enabledAppId, @JsonKey(name: 'id') this.id, @JsonKey(name: 'userId') this.userId, @JsonKey(name: 'mobileNo') this.mobileNo, @JsonKey(name: 'countryId') this.countryId, @JsonKey(name: 'countryCode') this.countryCode, @JsonKey(name: 'callBackURL') this.callBackURL, @JsonKey(name: 'protocolId') this.protocolId, @JsonKey(name: 'entryOn') this.entryOn, @JsonKey(name: 'scannedOn') this.scannedOn, @JsonKey(name: 'modifyOn') this.modifyOn, @JsonKey(name: 'phoneNoId') this.phoneNoId, @JsonKey(name: 'wabaId') this.wabaId, @JsonKey(name: 'token') this.token, @JsonKey(name: 'level') this.level, @JsonKey(name: 'wabaSyncLastDate') this.wabaSyncLastDate, @JsonKey(name: 'loginStatus') this.loginStatus, @JsonKey(name: 'contactId') this.contactId, @JsonKey(name: 'contactNumber') this.contactNumber, @JsonKey(name: 'senderMobileNo') this.senderMobileNo, @JsonKey(name: 'isBotReplyOn') this.isBotReplyOn, @JsonKey(name: 'isAIReplyOn') this.isAIReplyOn, @JsonKey(name: 'wid') this.wid, @JsonKey(name: 'recipientMobileNo') this.recipientMobileNo, @JsonKey(name: 'isCallbackDisabled') this.isCallbackDisabled, @JsonKey(name: 'statusCode') this.statusCode, @JsonKey(name: 'responseText') this.responseText, @JsonKey(name: 'pgStatusCode') this.pgStatusCode, @JsonKey(name: 'msg') this.msg, @JsonKey(name: 'transactionID') this.transactionID});
  factory _SenderForChatRequest.fromJson(Map<String, dynamic> json) => _$SenderForChatRequestFromJson(json);

@override@JsonKey(name: 'appId') final  int? appId;
@override@JsonKey(name: 'appName') final  String? appName;
@override@JsonKey(name: 'countryName') final  String? countryName;
@override@JsonKey(name: 'requestId') final  String? requestId;
@override@JsonKey(name: 'verifiedName') final  String? verifiedName;
@override@JsonKey(name: 'codeVerificationStatus') final  dynamic codeVerificationStatus;
@override@JsonKey(name: 'displayPhoneNumber') final  dynamic displayPhoneNumber;
@override@JsonKey(name: 'qualityRating') final  String? qualityRating;
@override@JsonKey(name: 'platformType') final  dynamic platformType;
@override@JsonKey(name: 'webhookApplication') final  dynamic webhookApplication;
@override@JsonKey(name: 'messageMediaurl') final  dynamic messageMediaurl;
@override@JsonKey(name: 'entryDate') final  String? entryDate;
@override@JsonKey(name: 'entryTime') final  dynamic entryTime;
@override@JsonKey(name: 'scannedDate') final  String? scannedDate;
@override@JsonKey(name: 'scannedTime') final  dynamic scannedTime;
@override@JsonKey(name: 'modifyDate') final  String? modifyDate;
@override@JsonKey(name: 'modifyTime') final  dynamic modifyTime;
@override@JsonKey(name: 'isDeleted') final  bool? isDeleted;
@override@JsonKey(name: 'wabaSyncStatus') final  bool? wabaSyncStatus;
@override@JsonKey(name: 'fbBusinessId') final  String? fbBusinessId;
@override@JsonKey(name: 'fbStatus') final  String? fbStatus;
@override@JsonKey(name: 'fbMessagingLimit') final  String? fbMessagingLimit;
@override@JsonKey(name: 'billingAccount') final  int? billingAccount;
@override@JsonKey(name: 'senderMasterId') final  int? senderMasterId;
@override@JsonKey(name: 'rn') final  int? rn;
@override@JsonKey(name: 'isSenderNoInBothApp') final  bool? isSenderNoInBothApp;
@override@JsonKey(name: 'enabledAppId') final  int? enabledAppId;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'userId') final  int? userId;
@override@JsonKey(name: 'mobileNo') final  String? mobileNo;
@override@JsonKey(name: 'countryId') final  int? countryId;
@override@JsonKey(name: 'countryCode') final  String? countryCode;
@override@JsonKey(name: 'callBackURL') final  String? callBackURL;
@override@JsonKey(name: 'protocolId') final  int? protocolId;
@override@JsonKey(name: 'entryOn') final  String? entryOn;
@override@JsonKey(name: 'scannedOn') final  String? scannedOn;
@override@JsonKey(name: 'modifyOn') final  String? modifyOn;
@override@JsonKey(name: 'phoneNoId') final  String? phoneNoId;
@override@JsonKey(name: 'wabaId') final  String? wabaId;
@override@JsonKey(name: 'token') final  String? token;
@override@JsonKey(name: 'level') final  String? level;
@override@JsonKey(name: 'wabaSyncLastDate') final  dynamic wabaSyncLastDate;
@override@JsonKey(name: 'loginStatus') final  bool? loginStatus;
@override@JsonKey(name: 'contactId') final  int? contactId;
@override@JsonKey(name: 'contactNumber') final  dynamic contactNumber;
@override@JsonKey(name: 'senderMobileNo') final  dynamic senderMobileNo;
@override@JsonKey(name: 'isBotReplyOn') final  bool? isBotReplyOn;
@override@JsonKey(name: 'isAIReplyOn') final  bool? isAIReplyOn;
@override@JsonKey(name: 'wid') final  int? wid;
@override@JsonKey(name: 'recipientMobileNo') final  dynamic recipientMobileNo;
@override@JsonKey(name: 'isCallbackDisabled') final  bool? isCallbackDisabled;
@override@JsonKey(name: 'statusCode') final  int? statusCode;
@override@JsonKey(name: 'responseText') final  String? responseText;
@override@JsonKey(name: 'pgStatusCode') final  int? pgStatusCode;
@override@JsonKey(name: 'msg') final  dynamic msg;
@override@JsonKey(name: 'transactionID') final  dynamic transactionID;

/// Create a copy of SenderForChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SenderForChatRequestCopyWith<_SenderForChatRequest> get copyWith => __$SenderForChatRequestCopyWithImpl<_SenderForChatRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SenderForChatRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SenderForChatRequest&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.requestId, requestId) || other.requestId == requestId)&&(identical(other.verifiedName, verifiedName) || other.verifiedName == verifiedName)&&const DeepCollectionEquality().equals(other.codeVerificationStatus, codeVerificationStatus)&&const DeepCollectionEquality().equals(other.displayPhoneNumber, displayPhoneNumber)&&(identical(other.qualityRating, qualityRating) || other.qualityRating == qualityRating)&&const DeepCollectionEquality().equals(other.platformType, platformType)&&const DeepCollectionEquality().equals(other.webhookApplication, webhookApplication)&&const DeepCollectionEquality().equals(other.messageMediaurl, messageMediaurl)&&(identical(other.entryDate, entryDate) || other.entryDate == entryDate)&&const DeepCollectionEquality().equals(other.entryTime, entryTime)&&(identical(other.scannedDate, scannedDate) || other.scannedDate == scannedDate)&&const DeepCollectionEquality().equals(other.scannedTime, scannedTime)&&(identical(other.modifyDate, modifyDate) || other.modifyDate == modifyDate)&&const DeepCollectionEquality().equals(other.modifyTime, modifyTime)&&(identical(other.isDeleted, isDeleted) || other.isDeleted == isDeleted)&&(identical(other.wabaSyncStatus, wabaSyncStatus) || other.wabaSyncStatus == wabaSyncStatus)&&(identical(other.fbBusinessId, fbBusinessId) || other.fbBusinessId == fbBusinessId)&&(identical(other.fbStatus, fbStatus) || other.fbStatus == fbStatus)&&(identical(other.fbMessagingLimit, fbMessagingLimit) || other.fbMessagingLimit == fbMessagingLimit)&&(identical(other.billingAccount, billingAccount) || other.billingAccount == billingAccount)&&(identical(other.senderMasterId, senderMasterId) || other.senderMasterId == senderMasterId)&&(identical(other.rn, rn) || other.rn == rn)&&(identical(other.isSenderNoInBothApp, isSenderNoInBothApp) || other.isSenderNoInBothApp == isSenderNoInBothApp)&&(identical(other.enabledAppId, enabledAppId) || other.enabledAppId == enabledAppId)&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.callBackURL, callBackURL) || other.callBackURL == callBackURL)&&(identical(other.protocolId, protocolId) || other.protocolId == protocolId)&&(identical(other.entryOn, entryOn) || other.entryOn == entryOn)&&(identical(other.scannedOn, scannedOn) || other.scannedOn == scannedOn)&&(identical(other.modifyOn, modifyOn) || other.modifyOn == modifyOn)&&(identical(other.phoneNoId, phoneNoId) || other.phoneNoId == phoneNoId)&&(identical(other.wabaId, wabaId) || other.wabaId == wabaId)&&(identical(other.token, token) || other.token == token)&&(identical(other.level, level) || other.level == level)&&const DeepCollectionEquality().equals(other.wabaSyncLastDate, wabaSyncLastDate)&&(identical(other.loginStatus, loginStatus) || other.loginStatus == loginStatus)&&(identical(other.contactId, contactId) || other.contactId == contactId)&&const DeepCollectionEquality().equals(other.contactNumber, contactNumber)&&const DeepCollectionEquality().equals(other.senderMobileNo, senderMobileNo)&&(identical(other.isBotReplyOn, isBotReplyOn) || other.isBotReplyOn == isBotReplyOn)&&(identical(other.isAIReplyOn, isAIReplyOn) || other.isAIReplyOn == isAIReplyOn)&&(identical(other.wid, wid) || other.wid == wid)&&const DeepCollectionEquality().equals(other.recipientMobileNo, recipientMobileNo)&&(identical(other.isCallbackDisabled, isCallbackDisabled) || other.isCallbackDisabled == isCallbackDisabled)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.responseText, responseText) || other.responseText == responseText)&&(identical(other.pgStatusCode, pgStatusCode) || other.pgStatusCode == pgStatusCode)&&const DeepCollectionEquality().equals(other.msg, msg)&&const DeepCollectionEquality().equals(other.transactionID, transactionID));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,appId,appName,countryName,requestId,verifiedName,const DeepCollectionEquality().hash(codeVerificationStatus),const DeepCollectionEquality().hash(displayPhoneNumber),qualityRating,const DeepCollectionEquality().hash(platformType),const DeepCollectionEquality().hash(webhookApplication),const DeepCollectionEquality().hash(messageMediaurl),entryDate,const DeepCollectionEquality().hash(entryTime),scannedDate,const DeepCollectionEquality().hash(scannedTime),modifyDate,const DeepCollectionEquality().hash(modifyTime),isDeleted,wabaSyncStatus,fbBusinessId,fbStatus,fbMessagingLimit,billingAccount,senderMasterId,rn,isSenderNoInBothApp,enabledAppId,id,userId,mobileNo,countryId,countryCode,callBackURL,protocolId,entryOn,scannedOn,modifyOn,phoneNoId,wabaId,token,level,const DeepCollectionEquality().hash(wabaSyncLastDate),loginStatus,contactId,const DeepCollectionEquality().hash(contactNumber),const DeepCollectionEquality().hash(senderMobileNo),isBotReplyOn,isAIReplyOn,wid,const DeepCollectionEquality().hash(recipientMobileNo),isCallbackDisabled,statusCode,responseText,pgStatusCode,const DeepCollectionEquality().hash(msg),const DeepCollectionEquality().hash(transactionID)]);

@override
String toString() {
  return 'SenderForChatRequest(appId: $appId, appName: $appName, countryName: $countryName, requestId: $requestId, verifiedName: $verifiedName, codeVerificationStatus: $codeVerificationStatus, displayPhoneNumber: $displayPhoneNumber, qualityRating: $qualityRating, platformType: $platformType, webhookApplication: $webhookApplication, messageMediaurl: $messageMediaurl, entryDate: $entryDate, entryTime: $entryTime, scannedDate: $scannedDate, scannedTime: $scannedTime, modifyDate: $modifyDate, modifyTime: $modifyTime, isDeleted: $isDeleted, wabaSyncStatus: $wabaSyncStatus, fbBusinessId: $fbBusinessId, fbStatus: $fbStatus, fbMessagingLimit: $fbMessagingLimit, billingAccount: $billingAccount, senderMasterId: $senderMasterId, rn: $rn, isSenderNoInBothApp: $isSenderNoInBothApp, enabledAppId: $enabledAppId, id: $id, userId: $userId, mobileNo: $mobileNo, countryId: $countryId, countryCode: $countryCode, callBackURL: $callBackURL, protocolId: $protocolId, entryOn: $entryOn, scannedOn: $scannedOn, modifyOn: $modifyOn, phoneNoId: $phoneNoId, wabaId: $wabaId, token: $token, level: $level, wabaSyncLastDate: $wabaSyncLastDate, loginStatus: $loginStatus, contactId: $contactId, contactNumber: $contactNumber, senderMobileNo: $senderMobileNo, isBotReplyOn: $isBotReplyOn, isAIReplyOn: $isAIReplyOn, wid: $wid, recipientMobileNo: $recipientMobileNo, isCallbackDisabled: $isCallbackDisabled, statusCode: $statusCode, responseText: $responseText, pgStatusCode: $pgStatusCode, msg: $msg, transactionID: $transactionID)';
}


}

/// @nodoc
abstract mixin class _$SenderForChatRequestCopyWith<$Res> implements $SenderForChatRequestCopyWith<$Res> {
  factory _$SenderForChatRequestCopyWith(_SenderForChatRequest value, $Res Function(_SenderForChatRequest) _then) = __$SenderForChatRequestCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'appId') int? appId,@JsonKey(name: 'appName') String? appName,@JsonKey(name: 'countryName') String? countryName,@JsonKey(name: 'requestId') String? requestId,@JsonKey(name: 'verifiedName') String? verifiedName,@JsonKey(name: 'codeVerificationStatus') dynamic codeVerificationStatus,@JsonKey(name: 'displayPhoneNumber') dynamic displayPhoneNumber,@JsonKey(name: 'qualityRating') String? qualityRating,@JsonKey(name: 'platformType') dynamic platformType,@JsonKey(name: 'webhookApplication') dynamic webhookApplication,@JsonKey(name: 'messageMediaurl') dynamic messageMediaurl,@JsonKey(name: 'entryDate') String? entryDate,@JsonKey(name: 'entryTime') dynamic entryTime,@JsonKey(name: 'scannedDate') String? scannedDate,@JsonKey(name: 'scannedTime') dynamic scannedTime,@JsonKey(name: 'modifyDate') String? modifyDate,@JsonKey(name: 'modifyTime') dynamic modifyTime,@JsonKey(name: 'isDeleted') bool? isDeleted,@JsonKey(name: 'wabaSyncStatus') bool? wabaSyncStatus,@JsonKey(name: 'fbBusinessId') String? fbBusinessId,@JsonKey(name: 'fbStatus') String? fbStatus,@JsonKey(name: 'fbMessagingLimit') String? fbMessagingLimit,@JsonKey(name: 'billingAccount') int? billingAccount,@JsonKey(name: 'senderMasterId') int? senderMasterId,@JsonKey(name: 'rn') int? rn,@JsonKey(name: 'isSenderNoInBothApp') bool? isSenderNoInBothApp,@JsonKey(name: 'enabledAppId') int? enabledAppId,@JsonKey(name: 'id') int? id,@JsonKey(name: 'userId') int? userId,@JsonKey(name: 'mobileNo') String? mobileNo,@JsonKey(name: 'countryId') int? countryId,@JsonKey(name: 'countryCode') String? countryCode,@JsonKey(name: 'callBackURL') String? callBackURL,@JsonKey(name: 'protocolId') int? protocolId,@JsonKey(name: 'entryOn') String? entryOn,@JsonKey(name: 'scannedOn') String? scannedOn,@JsonKey(name: 'modifyOn') String? modifyOn,@JsonKey(name: 'phoneNoId') String? phoneNoId,@JsonKey(name: 'wabaId') String? wabaId,@JsonKey(name: 'token') String? token,@JsonKey(name: 'level') String? level,@JsonKey(name: 'wabaSyncLastDate') dynamic wabaSyncLastDate,@JsonKey(name: 'loginStatus') bool? loginStatus,@JsonKey(name: 'contactId') int? contactId,@JsonKey(name: 'contactNumber') dynamic contactNumber,@JsonKey(name: 'senderMobileNo') dynamic senderMobileNo,@JsonKey(name: 'isBotReplyOn') bool? isBotReplyOn,@JsonKey(name: 'isAIReplyOn') bool? isAIReplyOn,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'recipientMobileNo') dynamic recipientMobileNo,@JsonKey(name: 'isCallbackDisabled') bool? isCallbackDisabled,@JsonKey(name: 'statusCode') int? statusCode,@JsonKey(name: 'responseText') String? responseText,@JsonKey(name: 'pgStatusCode') int? pgStatusCode,@JsonKey(name: 'msg') dynamic msg,@JsonKey(name: 'transactionID') dynamic transactionID
});




}
/// @nodoc
class __$SenderForChatRequestCopyWithImpl<$Res>
    implements _$SenderForChatRequestCopyWith<$Res> {
  __$SenderForChatRequestCopyWithImpl(this._self, this._then);

  final _SenderForChatRequest _self;
  final $Res Function(_SenderForChatRequest) _then;

/// Create a copy of SenderForChatRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? appId = freezed,Object? appName = freezed,Object? countryName = freezed,Object? requestId = freezed,Object? verifiedName = freezed,Object? codeVerificationStatus = freezed,Object? displayPhoneNumber = freezed,Object? qualityRating = freezed,Object? platformType = freezed,Object? webhookApplication = freezed,Object? messageMediaurl = freezed,Object? entryDate = freezed,Object? entryTime = freezed,Object? scannedDate = freezed,Object? scannedTime = freezed,Object? modifyDate = freezed,Object? modifyTime = freezed,Object? isDeleted = freezed,Object? wabaSyncStatus = freezed,Object? fbBusinessId = freezed,Object? fbStatus = freezed,Object? fbMessagingLimit = freezed,Object? billingAccount = freezed,Object? senderMasterId = freezed,Object? rn = freezed,Object? isSenderNoInBothApp = freezed,Object? enabledAppId = freezed,Object? id = freezed,Object? userId = freezed,Object? mobileNo = freezed,Object? countryId = freezed,Object? countryCode = freezed,Object? callBackURL = freezed,Object? protocolId = freezed,Object? entryOn = freezed,Object? scannedOn = freezed,Object? modifyOn = freezed,Object? phoneNoId = freezed,Object? wabaId = freezed,Object? token = freezed,Object? level = freezed,Object? wabaSyncLastDate = freezed,Object? loginStatus = freezed,Object? contactId = freezed,Object? contactNumber = freezed,Object? senderMobileNo = freezed,Object? isBotReplyOn = freezed,Object? isAIReplyOn = freezed,Object? wid = freezed,Object? recipientMobileNo = freezed,Object? isCallbackDisabled = freezed,Object? statusCode = freezed,Object? responseText = freezed,Object? pgStatusCode = freezed,Object? msg = freezed,Object? transactionID = freezed,}) {
  return _then(_SenderForChatRequest(
appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,requestId: freezed == requestId ? _self.requestId : requestId // ignore: cast_nullable_to_non_nullable
as String?,verifiedName: freezed == verifiedName ? _self.verifiedName : verifiedName // ignore: cast_nullable_to_non_nullable
as String?,codeVerificationStatus: freezed == codeVerificationStatus ? _self.codeVerificationStatus : codeVerificationStatus // ignore: cast_nullable_to_non_nullable
as dynamic,displayPhoneNumber: freezed == displayPhoneNumber ? _self.displayPhoneNumber : displayPhoneNumber // ignore: cast_nullable_to_non_nullable
as dynamic,qualityRating: freezed == qualityRating ? _self.qualityRating : qualityRating // ignore: cast_nullable_to_non_nullable
as String?,platformType: freezed == platformType ? _self.platformType : platformType // ignore: cast_nullable_to_non_nullable
as dynamic,webhookApplication: freezed == webhookApplication ? _self.webhookApplication : webhookApplication // ignore: cast_nullable_to_non_nullable
as dynamic,messageMediaurl: freezed == messageMediaurl ? _self.messageMediaurl : messageMediaurl // ignore: cast_nullable_to_non_nullable
as dynamic,entryDate: freezed == entryDate ? _self.entryDate : entryDate // ignore: cast_nullable_to_non_nullable
as String?,entryTime: freezed == entryTime ? _self.entryTime : entryTime // ignore: cast_nullable_to_non_nullable
as dynamic,scannedDate: freezed == scannedDate ? _self.scannedDate : scannedDate // ignore: cast_nullable_to_non_nullable
as String?,scannedTime: freezed == scannedTime ? _self.scannedTime : scannedTime // ignore: cast_nullable_to_non_nullable
as dynamic,modifyDate: freezed == modifyDate ? _self.modifyDate : modifyDate // ignore: cast_nullable_to_non_nullable
as String?,modifyTime: freezed == modifyTime ? _self.modifyTime : modifyTime // ignore: cast_nullable_to_non_nullable
as dynamic,isDeleted: freezed == isDeleted ? _self.isDeleted : isDeleted // ignore: cast_nullable_to_non_nullable
as bool?,wabaSyncStatus: freezed == wabaSyncStatus ? _self.wabaSyncStatus : wabaSyncStatus // ignore: cast_nullable_to_non_nullable
as bool?,fbBusinessId: freezed == fbBusinessId ? _self.fbBusinessId : fbBusinessId // ignore: cast_nullable_to_non_nullable
as String?,fbStatus: freezed == fbStatus ? _self.fbStatus : fbStatus // ignore: cast_nullable_to_non_nullable
as String?,fbMessagingLimit: freezed == fbMessagingLimit ? _self.fbMessagingLimit : fbMessagingLimit // ignore: cast_nullable_to_non_nullable
as String?,billingAccount: freezed == billingAccount ? _self.billingAccount : billingAccount // ignore: cast_nullable_to_non_nullable
as int?,senderMasterId: freezed == senderMasterId ? _self.senderMasterId : senderMasterId // ignore: cast_nullable_to_non_nullable
as int?,rn: freezed == rn ? _self.rn : rn // ignore: cast_nullable_to_non_nullable
as int?,isSenderNoInBothApp: freezed == isSenderNoInBothApp ? _self.isSenderNoInBothApp : isSenderNoInBothApp // ignore: cast_nullable_to_non_nullable
as bool?,enabledAppId: freezed == enabledAppId ? _self.enabledAppId : enabledAppId // ignore: cast_nullable_to_non_nullable
as int?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as int?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,callBackURL: freezed == callBackURL ? _self.callBackURL : callBackURL // ignore: cast_nullable_to_non_nullable
as String?,protocolId: freezed == protocolId ? _self.protocolId : protocolId // ignore: cast_nullable_to_non_nullable
as int?,entryOn: freezed == entryOn ? _self.entryOn : entryOn // ignore: cast_nullable_to_non_nullable
as String?,scannedOn: freezed == scannedOn ? _self.scannedOn : scannedOn // ignore: cast_nullable_to_non_nullable
as String?,modifyOn: freezed == modifyOn ? _self.modifyOn : modifyOn // ignore: cast_nullable_to_non_nullable
as String?,phoneNoId: freezed == phoneNoId ? _self.phoneNoId : phoneNoId // ignore: cast_nullable_to_non_nullable
as String?,wabaId: freezed == wabaId ? _self.wabaId : wabaId // ignore: cast_nullable_to_non_nullable
as String?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,level: freezed == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as String?,wabaSyncLastDate: freezed == wabaSyncLastDate ? _self.wabaSyncLastDate : wabaSyncLastDate // ignore: cast_nullable_to_non_nullable
as dynamic,loginStatus: freezed == loginStatus ? _self.loginStatus : loginStatus // ignore: cast_nullable_to_non_nullable
as bool?,contactId: freezed == contactId ? _self.contactId : contactId // ignore: cast_nullable_to_non_nullable
as int?,contactNumber: freezed == contactNumber ? _self.contactNumber : contactNumber // ignore: cast_nullable_to_non_nullable
as dynamic,senderMobileNo: freezed == senderMobileNo ? _self.senderMobileNo : senderMobileNo // ignore: cast_nullable_to_non_nullable
as dynamic,isBotReplyOn: freezed == isBotReplyOn ? _self.isBotReplyOn : isBotReplyOn // ignore: cast_nullable_to_non_nullable
as bool?,isAIReplyOn: freezed == isAIReplyOn ? _self.isAIReplyOn : isAIReplyOn // ignore: cast_nullable_to_non_nullable
as bool?,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,recipientMobileNo: freezed == recipientMobileNo ? _self.recipientMobileNo : recipientMobileNo // ignore: cast_nullable_to_non_nullable
as dynamic,isCallbackDisabled: freezed == isCallbackDisabled ? _self.isCallbackDisabled : isCallbackDisabled // ignore: cast_nullable_to_non_nullable
as bool?,statusCode: freezed == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int?,responseText: freezed == responseText ? _self.responseText : responseText // ignore: cast_nullable_to_non_nullable
as String?,pgStatusCode: freezed == pgStatusCode ? _self.pgStatusCode : pgStatusCode // ignore: cast_nullable_to_non_nullable
as int?,msg: freezed == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as dynamic,transactionID: freezed == transactionID ? _self.transactionID : transactionID // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
