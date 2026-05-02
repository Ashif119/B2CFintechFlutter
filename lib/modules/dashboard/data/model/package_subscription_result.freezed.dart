// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_subscription_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageSubscriptionResult {

@JsonKey(name: 'packageName') String? get packageName;@JsonKey(name: 'description') String? get description;@JsonKey(name: 'duration') int? get duration;@JsonKey(name: 'allowedNumberLimit') int? get allowedNumberLimit;@JsonKey(name: 'dailySendLimit') int? get dailySendLimit;@JsonKey(name: 'dailyReceiveLimit') int? get dailyReceiveLimit;@JsonKey(name: 'packageRate') double? get packageRate;@JsonKey(name: 'isSendRateIncluded') bool? get isSendRateIncluded;@JsonKey(name: 'sendRate') double? get sendRate;@JsonKey(name: 'isReceiveRateIncluded') bool? get isReceiveRateIncluded;@JsonKey(name: 'receiveRate') double? get receiveRate;@JsonKey(name: 'isTrialPack') bool? get isTrialPack;@JsonKey(name: 'isGroupMessaging') bool? get isGroupMessaging;@JsonKey(name: 'isActive') bool? get isActive;@JsonKey(name: 'entryAt') String? get entryAt;@JsonKey(name: 'modifyAt') String? get modifyAt;@JsonKey(name: 'allowApp') int? get allowApp;@JsonKey(name: 'isBotAllowed') bool? get isBotAllowed;@JsonKey(name: 'isFbCloudAllowed') bool? get isFbCloudAllowed;@JsonKey(name: 'activated') bool? get activated;@JsonKey(name: 'expiryOn') int? get expiryOn;@JsonKey(name: 'expiryDate') dynamic get expiryDate;@JsonKey(name: 'wid') int? get wid;@JsonKey(name: 'entryBy') int? get entryBy;@JsonKey(name: 'modifyBy') int? get modifyBy;@JsonKey(name: 'teamMember') int? get teamMember;@JsonKey(name: 'allowedTeamMember') int? get allowedTeamMember;@JsonKey(name: 'leadCount') int? get leadCount;@JsonKey(name: 'contactCount') int? get contactCount;@JsonKey(name: 'annualDiscount') int? get annualDiscount;@JsonKey(name: 'status') int? get status;@JsonKey(name: 'message') dynamic get message;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'loginId') int? get loginId;
/// Create a copy of PackageSubscriptionResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageSubscriptionResultCopyWith<PackageSubscriptionResult> get copyWith => _$PackageSubscriptionResultCopyWithImpl<PackageSubscriptionResult>(this as PackageSubscriptionResult, _$identity);

  /// Serializes this PackageSubscriptionResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageSubscriptionResult&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.allowedNumberLimit, allowedNumberLimit) || other.allowedNumberLimit == allowedNumberLimit)&&(identical(other.dailySendLimit, dailySendLimit) || other.dailySendLimit == dailySendLimit)&&(identical(other.dailyReceiveLimit, dailyReceiveLimit) || other.dailyReceiveLimit == dailyReceiveLimit)&&(identical(other.packageRate, packageRate) || other.packageRate == packageRate)&&(identical(other.isSendRateIncluded, isSendRateIncluded) || other.isSendRateIncluded == isSendRateIncluded)&&(identical(other.sendRate, sendRate) || other.sendRate == sendRate)&&(identical(other.isReceiveRateIncluded, isReceiveRateIncluded) || other.isReceiveRateIncluded == isReceiveRateIncluded)&&(identical(other.receiveRate, receiveRate) || other.receiveRate == receiveRate)&&(identical(other.isTrialPack, isTrialPack) || other.isTrialPack == isTrialPack)&&(identical(other.isGroupMessaging, isGroupMessaging) || other.isGroupMessaging == isGroupMessaging)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.entryAt, entryAt) || other.entryAt == entryAt)&&(identical(other.modifyAt, modifyAt) || other.modifyAt == modifyAt)&&(identical(other.allowApp, allowApp) || other.allowApp == allowApp)&&(identical(other.isBotAllowed, isBotAllowed) || other.isBotAllowed == isBotAllowed)&&(identical(other.isFbCloudAllowed, isFbCloudAllowed) || other.isFbCloudAllowed == isFbCloudAllowed)&&(identical(other.activated, activated) || other.activated == activated)&&(identical(other.expiryOn, expiryOn) || other.expiryOn == expiryOn)&&const DeepCollectionEquality().equals(other.expiryDate, expiryDate)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.entryBy, entryBy) || other.entryBy == entryBy)&&(identical(other.modifyBy, modifyBy) || other.modifyBy == modifyBy)&&(identical(other.teamMember, teamMember) || other.teamMember == teamMember)&&(identical(other.allowedTeamMember, allowedTeamMember) || other.allowedTeamMember == allowedTeamMember)&&(identical(other.leadCount, leadCount) || other.leadCount == leadCount)&&(identical(other.contactCount, contactCount) || other.contactCount == contactCount)&&(identical(other.annualDiscount, annualDiscount) || other.annualDiscount == annualDiscount)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.id, id) || other.id == id)&&(identical(other.loginId, loginId) || other.loginId == loginId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,packageName,description,duration,allowedNumberLimit,dailySendLimit,dailyReceiveLimit,packageRate,isSendRateIncluded,sendRate,isReceiveRateIncluded,receiveRate,isTrialPack,isGroupMessaging,isActive,entryAt,modifyAt,allowApp,isBotAllowed,isFbCloudAllowed,activated,expiryOn,const DeepCollectionEquality().hash(expiryDate),wid,entryBy,modifyBy,teamMember,allowedTeamMember,leadCount,contactCount,annualDiscount,status,const DeepCollectionEquality().hash(message),id,loginId]);

@override
String toString() {
  return 'PackageSubscriptionResult(packageName: $packageName, description: $description, duration: $duration, allowedNumberLimit: $allowedNumberLimit, dailySendLimit: $dailySendLimit, dailyReceiveLimit: $dailyReceiveLimit, packageRate: $packageRate, isSendRateIncluded: $isSendRateIncluded, sendRate: $sendRate, isReceiveRateIncluded: $isReceiveRateIncluded, receiveRate: $receiveRate, isTrialPack: $isTrialPack, isGroupMessaging: $isGroupMessaging, isActive: $isActive, entryAt: $entryAt, modifyAt: $modifyAt, allowApp: $allowApp, isBotAllowed: $isBotAllowed, isFbCloudAllowed: $isFbCloudAllowed, activated: $activated, expiryOn: $expiryOn, expiryDate: $expiryDate, wid: $wid, entryBy: $entryBy, modifyBy: $modifyBy, teamMember: $teamMember, allowedTeamMember: $allowedTeamMember, leadCount: $leadCount, contactCount: $contactCount, annualDiscount: $annualDiscount, status: $status, message: $message, id: $id, loginId: $loginId)';
}


}

/// @nodoc
abstract mixin class $PackageSubscriptionResultCopyWith<$Res>  {
  factory $PackageSubscriptionResultCopyWith(PackageSubscriptionResult value, $Res Function(PackageSubscriptionResult) _then) = _$PackageSubscriptionResultCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'packageName') String? packageName,@JsonKey(name: 'description') String? description,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'allowedNumberLimit') int? allowedNumberLimit,@JsonKey(name: 'dailySendLimit') int? dailySendLimit,@JsonKey(name: 'dailyReceiveLimit') int? dailyReceiveLimit,@JsonKey(name: 'packageRate') double? packageRate,@JsonKey(name: 'isSendRateIncluded') bool? isSendRateIncluded,@JsonKey(name: 'sendRate') double? sendRate,@JsonKey(name: 'isReceiveRateIncluded') bool? isReceiveRateIncluded,@JsonKey(name: 'receiveRate') double? receiveRate,@JsonKey(name: 'isTrialPack') bool? isTrialPack,@JsonKey(name: 'isGroupMessaging') bool? isGroupMessaging,@JsonKey(name: 'isActive') bool? isActive,@JsonKey(name: 'entryAt') String? entryAt,@JsonKey(name: 'modifyAt') String? modifyAt,@JsonKey(name: 'allowApp') int? allowApp,@JsonKey(name: 'isBotAllowed') bool? isBotAllowed,@JsonKey(name: 'isFbCloudAllowed') bool? isFbCloudAllowed,@JsonKey(name: 'activated') bool? activated,@JsonKey(name: 'expiryOn') int? expiryOn,@JsonKey(name: 'expiryDate') dynamic expiryDate,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'entryBy') int? entryBy,@JsonKey(name: 'modifyBy') int? modifyBy,@JsonKey(name: 'teamMember') int? teamMember,@JsonKey(name: 'allowedTeamMember') int? allowedTeamMember,@JsonKey(name: 'leadCount') int? leadCount,@JsonKey(name: 'contactCount') int? contactCount,@JsonKey(name: 'annualDiscount') int? annualDiscount,@JsonKey(name: 'status') int? status,@JsonKey(name: 'message') dynamic message,@JsonKey(name: 'id') int? id,@JsonKey(name: 'loginId') int? loginId
});




}
/// @nodoc
class _$PackageSubscriptionResultCopyWithImpl<$Res>
    implements $PackageSubscriptionResultCopyWith<$Res> {
  _$PackageSubscriptionResultCopyWithImpl(this._self, this._then);

  final PackageSubscriptionResult _self;
  final $Res Function(PackageSubscriptionResult) _then;

/// Create a copy of PackageSubscriptionResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? packageName = freezed,Object? description = freezed,Object? duration = freezed,Object? allowedNumberLimit = freezed,Object? dailySendLimit = freezed,Object? dailyReceiveLimit = freezed,Object? packageRate = freezed,Object? isSendRateIncluded = freezed,Object? sendRate = freezed,Object? isReceiveRateIncluded = freezed,Object? receiveRate = freezed,Object? isTrialPack = freezed,Object? isGroupMessaging = freezed,Object? isActive = freezed,Object? entryAt = freezed,Object? modifyAt = freezed,Object? allowApp = freezed,Object? isBotAllowed = freezed,Object? isFbCloudAllowed = freezed,Object? activated = freezed,Object? expiryOn = freezed,Object? expiryDate = freezed,Object? wid = freezed,Object? entryBy = freezed,Object? modifyBy = freezed,Object? teamMember = freezed,Object? allowedTeamMember = freezed,Object? leadCount = freezed,Object? contactCount = freezed,Object? annualDiscount = freezed,Object? status = freezed,Object? message = freezed,Object? id = freezed,Object? loginId = freezed,}) {
  return _then(_self.copyWith(
packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,allowedNumberLimit: freezed == allowedNumberLimit ? _self.allowedNumberLimit : allowedNumberLimit // ignore: cast_nullable_to_non_nullable
as int?,dailySendLimit: freezed == dailySendLimit ? _self.dailySendLimit : dailySendLimit // ignore: cast_nullable_to_non_nullable
as int?,dailyReceiveLimit: freezed == dailyReceiveLimit ? _self.dailyReceiveLimit : dailyReceiveLimit // ignore: cast_nullable_to_non_nullable
as int?,packageRate: freezed == packageRate ? _self.packageRate : packageRate // ignore: cast_nullable_to_non_nullable
as double?,isSendRateIncluded: freezed == isSendRateIncluded ? _self.isSendRateIncluded : isSendRateIncluded // ignore: cast_nullable_to_non_nullable
as bool?,sendRate: freezed == sendRate ? _self.sendRate : sendRate // ignore: cast_nullable_to_non_nullable
as double?,isReceiveRateIncluded: freezed == isReceiveRateIncluded ? _self.isReceiveRateIncluded : isReceiveRateIncluded // ignore: cast_nullable_to_non_nullable
as bool?,receiveRate: freezed == receiveRate ? _self.receiveRate : receiveRate // ignore: cast_nullable_to_non_nullable
as double?,isTrialPack: freezed == isTrialPack ? _self.isTrialPack : isTrialPack // ignore: cast_nullable_to_non_nullable
as bool?,isGroupMessaging: freezed == isGroupMessaging ? _self.isGroupMessaging : isGroupMessaging // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,entryAt: freezed == entryAt ? _self.entryAt : entryAt // ignore: cast_nullable_to_non_nullable
as String?,modifyAt: freezed == modifyAt ? _self.modifyAt : modifyAt // ignore: cast_nullable_to_non_nullable
as String?,allowApp: freezed == allowApp ? _self.allowApp : allowApp // ignore: cast_nullable_to_non_nullable
as int?,isBotAllowed: freezed == isBotAllowed ? _self.isBotAllowed : isBotAllowed // ignore: cast_nullable_to_non_nullable
as bool?,isFbCloudAllowed: freezed == isFbCloudAllowed ? _self.isFbCloudAllowed : isFbCloudAllowed // ignore: cast_nullable_to_non_nullable
as bool?,activated: freezed == activated ? _self.activated : activated // ignore: cast_nullable_to_non_nullable
as bool?,expiryOn: freezed == expiryOn ? _self.expiryOn : expiryOn // ignore: cast_nullable_to_non_nullable
as int?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as dynamic,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,entryBy: freezed == entryBy ? _self.entryBy : entryBy // ignore: cast_nullable_to_non_nullable
as int?,modifyBy: freezed == modifyBy ? _self.modifyBy : modifyBy // ignore: cast_nullable_to_non_nullable
as int?,teamMember: freezed == teamMember ? _self.teamMember : teamMember // ignore: cast_nullable_to_non_nullable
as int?,allowedTeamMember: freezed == allowedTeamMember ? _self.allowedTeamMember : allowedTeamMember // ignore: cast_nullable_to_non_nullable
as int?,leadCount: freezed == leadCount ? _self.leadCount : leadCount // ignore: cast_nullable_to_non_nullable
as int?,contactCount: freezed == contactCount ? _self.contactCount : contactCount // ignore: cast_nullable_to_non_nullable
as int?,annualDiscount: freezed == annualDiscount ? _self.annualDiscount : annualDiscount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as dynamic,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,loginId: freezed == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PackageSubscriptionResult].
extension PackageSubscriptionResultPatterns on PackageSubscriptionResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PackageSubscriptionResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PackageSubscriptionResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PackageSubscriptionResult value)  $default,){
final _that = this;
switch (_that) {
case _PackageSubscriptionResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PackageSubscriptionResult value)?  $default,){
final _that = this;
switch (_that) {
case _PackageSubscriptionResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'packageName')  String? packageName, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'allowedNumberLimit')  int? allowedNumberLimit, @JsonKey(name: 'dailySendLimit')  int? dailySendLimit, @JsonKey(name: 'dailyReceiveLimit')  int? dailyReceiveLimit, @JsonKey(name: 'packageRate')  double? packageRate, @JsonKey(name: 'isSendRateIncluded')  bool? isSendRateIncluded, @JsonKey(name: 'sendRate')  double? sendRate, @JsonKey(name: 'isReceiveRateIncluded')  bool? isReceiveRateIncluded, @JsonKey(name: 'receiveRate')  double? receiveRate, @JsonKey(name: 'isTrialPack')  bool? isTrialPack, @JsonKey(name: 'isGroupMessaging')  bool? isGroupMessaging, @JsonKey(name: 'isActive')  bool? isActive, @JsonKey(name: 'entryAt')  String? entryAt, @JsonKey(name: 'modifyAt')  String? modifyAt, @JsonKey(name: 'allowApp')  int? allowApp, @JsonKey(name: 'isBotAllowed')  bool? isBotAllowed, @JsonKey(name: 'isFbCloudAllowed')  bool? isFbCloudAllowed, @JsonKey(name: 'activated')  bool? activated, @JsonKey(name: 'expiryOn')  int? expiryOn, @JsonKey(name: 'expiryDate')  dynamic expiryDate, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'entryBy')  int? entryBy, @JsonKey(name: 'modifyBy')  int? modifyBy, @JsonKey(name: 'teamMember')  int? teamMember, @JsonKey(name: 'allowedTeamMember')  int? allowedTeamMember, @JsonKey(name: 'leadCount')  int? leadCount, @JsonKey(name: 'contactCount')  int? contactCount, @JsonKey(name: 'annualDiscount')  int? annualDiscount, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'message')  dynamic message, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'loginId')  int? loginId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PackageSubscriptionResult() when $default != null:
return $default(_that.packageName,_that.description,_that.duration,_that.allowedNumberLimit,_that.dailySendLimit,_that.dailyReceiveLimit,_that.packageRate,_that.isSendRateIncluded,_that.sendRate,_that.isReceiveRateIncluded,_that.receiveRate,_that.isTrialPack,_that.isGroupMessaging,_that.isActive,_that.entryAt,_that.modifyAt,_that.allowApp,_that.isBotAllowed,_that.isFbCloudAllowed,_that.activated,_that.expiryOn,_that.expiryDate,_that.wid,_that.entryBy,_that.modifyBy,_that.teamMember,_that.allowedTeamMember,_that.leadCount,_that.contactCount,_that.annualDiscount,_that.status,_that.message,_that.id,_that.loginId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'packageName')  String? packageName, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'allowedNumberLimit')  int? allowedNumberLimit, @JsonKey(name: 'dailySendLimit')  int? dailySendLimit, @JsonKey(name: 'dailyReceiveLimit')  int? dailyReceiveLimit, @JsonKey(name: 'packageRate')  double? packageRate, @JsonKey(name: 'isSendRateIncluded')  bool? isSendRateIncluded, @JsonKey(name: 'sendRate')  double? sendRate, @JsonKey(name: 'isReceiveRateIncluded')  bool? isReceiveRateIncluded, @JsonKey(name: 'receiveRate')  double? receiveRate, @JsonKey(name: 'isTrialPack')  bool? isTrialPack, @JsonKey(name: 'isGroupMessaging')  bool? isGroupMessaging, @JsonKey(name: 'isActive')  bool? isActive, @JsonKey(name: 'entryAt')  String? entryAt, @JsonKey(name: 'modifyAt')  String? modifyAt, @JsonKey(name: 'allowApp')  int? allowApp, @JsonKey(name: 'isBotAllowed')  bool? isBotAllowed, @JsonKey(name: 'isFbCloudAllowed')  bool? isFbCloudAllowed, @JsonKey(name: 'activated')  bool? activated, @JsonKey(name: 'expiryOn')  int? expiryOn, @JsonKey(name: 'expiryDate')  dynamic expiryDate, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'entryBy')  int? entryBy, @JsonKey(name: 'modifyBy')  int? modifyBy, @JsonKey(name: 'teamMember')  int? teamMember, @JsonKey(name: 'allowedTeamMember')  int? allowedTeamMember, @JsonKey(name: 'leadCount')  int? leadCount, @JsonKey(name: 'contactCount')  int? contactCount, @JsonKey(name: 'annualDiscount')  int? annualDiscount, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'message')  dynamic message, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'loginId')  int? loginId)  $default,) {final _that = this;
switch (_that) {
case _PackageSubscriptionResult():
return $default(_that.packageName,_that.description,_that.duration,_that.allowedNumberLimit,_that.dailySendLimit,_that.dailyReceiveLimit,_that.packageRate,_that.isSendRateIncluded,_that.sendRate,_that.isReceiveRateIncluded,_that.receiveRate,_that.isTrialPack,_that.isGroupMessaging,_that.isActive,_that.entryAt,_that.modifyAt,_that.allowApp,_that.isBotAllowed,_that.isFbCloudAllowed,_that.activated,_that.expiryOn,_that.expiryDate,_that.wid,_that.entryBy,_that.modifyBy,_that.teamMember,_that.allowedTeamMember,_that.leadCount,_that.contactCount,_that.annualDiscount,_that.status,_that.message,_that.id,_that.loginId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'packageName')  String? packageName, @JsonKey(name: 'description')  String? description, @JsonKey(name: 'duration')  int? duration, @JsonKey(name: 'allowedNumberLimit')  int? allowedNumberLimit, @JsonKey(name: 'dailySendLimit')  int? dailySendLimit, @JsonKey(name: 'dailyReceiveLimit')  int? dailyReceiveLimit, @JsonKey(name: 'packageRate')  double? packageRate, @JsonKey(name: 'isSendRateIncluded')  bool? isSendRateIncluded, @JsonKey(name: 'sendRate')  double? sendRate, @JsonKey(name: 'isReceiveRateIncluded')  bool? isReceiveRateIncluded, @JsonKey(name: 'receiveRate')  double? receiveRate, @JsonKey(name: 'isTrialPack')  bool? isTrialPack, @JsonKey(name: 'isGroupMessaging')  bool? isGroupMessaging, @JsonKey(name: 'isActive')  bool? isActive, @JsonKey(name: 'entryAt')  String? entryAt, @JsonKey(name: 'modifyAt')  String? modifyAt, @JsonKey(name: 'allowApp')  int? allowApp, @JsonKey(name: 'isBotAllowed')  bool? isBotAllowed, @JsonKey(name: 'isFbCloudAllowed')  bool? isFbCloudAllowed, @JsonKey(name: 'activated')  bool? activated, @JsonKey(name: 'expiryOn')  int? expiryOn, @JsonKey(name: 'expiryDate')  dynamic expiryDate, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'entryBy')  int? entryBy, @JsonKey(name: 'modifyBy')  int? modifyBy, @JsonKey(name: 'teamMember')  int? teamMember, @JsonKey(name: 'allowedTeamMember')  int? allowedTeamMember, @JsonKey(name: 'leadCount')  int? leadCount, @JsonKey(name: 'contactCount')  int? contactCount, @JsonKey(name: 'annualDiscount')  int? annualDiscount, @JsonKey(name: 'status')  int? status, @JsonKey(name: 'message')  dynamic message, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'loginId')  int? loginId)?  $default,) {final _that = this;
switch (_that) {
case _PackageSubscriptionResult() when $default != null:
return $default(_that.packageName,_that.description,_that.duration,_that.allowedNumberLimit,_that.dailySendLimit,_that.dailyReceiveLimit,_that.packageRate,_that.isSendRateIncluded,_that.sendRate,_that.isReceiveRateIncluded,_that.receiveRate,_that.isTrialPack,_that.isGroupMessaging,_that.isActive,_that.entryAt,_that.modifyAt,_that.allowApp,_that.isBotAllowed,_that.isFbCloudAllowed,_that.activated,_that.expiryOn,_that.expiryDate,_that.wid,_that.entryBy,_that.modifyBy,_that.teamMember,_that.allowedTeamMember,_that.leadCount,_that.contactCount,_that.annualDiscount,_that.status,_that.message,_that.id,_that.loginId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PackageSubscriptionResult implements PackageSubscriptionResult {
  const _PackageSubscriptionResult({@JsonKey(name: 'packageName') this.packageName, @JsonKey(name: 'description') this.description, @JsonKey(name: 'duration') this.duration, @JsonKey(name: 'allowedNumberLimit') this.allowedNumberLimit, @JsonKey(name: 'dailySendLimit') this.dailySendLimit, @JsonKey(name: 'dailyReceiveLimit') this.dailyReceiveLimit, @JsonKey(name: 'packageRate') this.packageRate, @JsonKey(name: 'isSendRateIncluded') this.isSendRateIncluded, @JsonKey(name: 'sendRate') this.sendRate, @JsonKey(name: 'isReceiveRateIncluded') this.isReceiveRateIncluded, @JsonKey(name: 'receiveRate') this.receiveRate, @JsonKey(name: 'isTrialPack') this.isTrialPack, @JsonKey(name: 'isGroupMessaging') this.isGroupMessaging, @JsonKey(name: 'isActive') this.isActive, @JsonKey(name: 'entryAt') this.entryAt, @JsonKey(name: 'modifyAt') this.modifyAt, @JsonKey(name: 'allowApp') this.allowApp, @JsonKey(name: 'isBotAllowed') this.isBotAllowed, @JsonKey(name: 'isFbCloudAllowed') this.isFbCloudAllowed, @JsonKey(name: 'activated') this.activated, @JsonKey(name: 'expiryOn') this.expiryOn, @JsonKey(name: 'expiryDate') this.expiryDate, @JsonKey(name: 'wid') this.wid, @JsonKey(name: 'entryBy') this.entryBy, @JsonKey(name: 'modifyBy') this.modifyBy, @JsonKey(name: 'teamMember') this.teamMember, @JsonKey(name: 'allowedTeamMember') this.allowedTeamMember, @JsonKey(name: 'leadCount') this.leadCount, @JsonKey(name: 'contactCount') this.contactCount, @JsonKey(name: 'annualDiscount') this.annualDiscount, @JsonKey(name: 'status') this.status, @JsonKey(name: 'message') this.message, @JsonKey(name: 'id') this.id, @JsonKey(name: 'loginId') this.loginId});
  factory _PackageSubscriptionResult.fromJson(Map<String, dynamic> json) => _$PackageSubscriptionResultFromJson(json);

@override@JsonKey(name: 'packageName') final  String? packageName;
@override@JsonKey(name: 'description') final  String? description;
@override@JsonKey(name: 'duration') final  int? duration;
@override@JsonKey(name: 'allowedNumberLimit') final  int? allowedNumberLimit;
@override@JsonKey(name: 'dailySendLimit') final  int? dailySendLimit;
@override@JsonKey(name: 'dailyReceiveLimit') final  int? dailyReceiveLimit;
@override@JsonKey(name: 'packageRate') final  double? packageRate;
@override@JsonKey(name: 'isSendRateIncluded') final  bool? isSendRateIncluded;
@override@JsonKey(name: 'sendRate') final  double? sendRate;
@override@JsonKey(name: 'isReceiveRateIncluded') final  bool? isReceiveRateIncluded;
@override@JsonKey(name: 'receiveRate') final  double? receiveRate;
@override@JsonKey(name: 'isTrialPack') final  bool? isTrialPack;
@override@JsonKey(name: 'isGroupMessaging') final  bool? isGroupMessaging;
@override@JsonKey(name: 'isActive') final  bool? isActive;
@override@JsonKey(name: 'entryAt') final  String? entryAt;
@override@JsonKey(name: 'modifyAt') final  String? modifyAt;
@override@JsonKey(name: 'allowApp') final  int? allowApp;
@override@JsonKey(name: 'isBotAllowed') final  bool? isBotAllowed;
@override@JsonKey(name: 'isFbCloudAllowed') final  bool? isFbCloudAllowed;
@override@JsonKey(name: 'activated') final  bool? activated;
@override@JsonKey(name: 'expiryOn') final  int? expiryOn;
@override@JsonKey(name: 'expiryDate') final  dynamic expiryDate;
@override@JsonKey(name: 'wid') final  int? wid;
@override@JsonKey(name: 'entryBy') final  int? entryBy;
@override@JsonKey(name: 'modifyBy') final  int? modifyBy;
@override@JsonKey(name: 'teamMember') final  int? teamMember;
@override@JsonKey(name: 'allowedTeamMember') final  int? allowedTeamMember;
@override@JsonKey(name: 'leadCount') final  int? leadCount;
@override@JsonKey(name: 'contactCount') final  int? contactCount;
@override@JsonKey(name: 'annualDiscount') final  int? annualDiscount;
@override@JsonKey(name: 'status') final  int? status;
@override@JsonKey(name: 'message') final  dynamic message;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'loginId') final  int? loginId;

/// Create a copy of PackageSubscriptionResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageSubscriptionResultCopyWith<_PackageSubscriptionResult> get copyWith => __$PackageSubscriptionResultCopyWithImpl<_PackageSubscriptionResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageSubscriptionResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageSubscriptionResult&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.description, description) || other.description == description)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.allowedNumberLimit, allowedNumberLimit) || other.allowedNumberLimit == allowedNumberLimit)&&(identical(other.dailySendLimit, dailySendLimit) || other.dailySendLimit == dailySendLimit)&&(identical(other.dailyReceiveLimit, dailyReceiveLimit) || other.dailyReceiveLimit == dailyReceiveLimit)&&(identical(other.packageRate, packageRate) || other.packageRate == packageRate)&&(identical(other.isSendRateIncluded, isSendRateIncluded) || other.isSendRateIncluded == isSendRateIncluded)&&(identical(other.sendRate, sendRate) || other.sendRate == sendRate)&&(identical(other.isReceiveRateIncluded, isReceiveRateIncluded) || other.isReceiveRateIncluded == isReceiveRateIncluded)&&(identical(other.receiveRate, receiveRate) || other.receiveRate == receiveRate)&&(identical(other.isTrialPack, isTrialPack) || other.isTrialPack == isTrialPack)&&(identical(other.isGroupMessaging, isGroupMessaging) || other.isGroupMessaging == isGroupMessaging)&&(identical(other.isActive, isActive) || other.isActive == isActive)&&(identical(other.entryAt, entryAt) || other.entryAt == entryAt)&&(identical(other.modifyAt, modifyAt) || other.modifyAt == modifyAt)&&(identical(other.allowApp, allowApp) || other.allowApp == allowApp)&&(identical(other.isBotAllowed, isBotAllowed) || other.isBotAllowed == isBotAllowed)&&(identical(other.isFbCloudAllowed, isFbCloudAllowed) || other.isFbCloudAllowed == isFbCloudAllowed)&&(identical(other.activated, activated) || other.activated == activated)&&(identical(other.expiryOn, expiryOn) || other.expiryOn == expiryOn)&&const DeepCollectionEquality().equals(other.expiryDate, expiryDate)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.entryBy, entryBy) || other.entryBy == entryBy)&&(identical(other.modifyBy, modifyBy) || other.modifyBy == modifyBy)&&(identical(other.teamMember, teamMember) || other.teamMember == teamMember)&&(identical(other.allowedTeamMember, allowedTeamMember) || other.allowedTeamMember == allowedTeamMember)&&(identical(other.leadCount, leadCount) || other.leadCount == leadCount)&&(identical(other.contactCount, contactCount) || other.contactCount == contactCount)&&(identical(other.annualDiscount, annualDiscount) || other.annualDiscount == annualDiscount)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.message, message)&&(identical(other.id, id) || other.id == id)&&(identical(other.loginId, loginId) || other.loginId == loginId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,packageName,description,duration,allowedNumberLimit,dailySendLimit,dailyReceiveLimit,packageRate,isSendRateIncluded,sendRate,isReceiveRateIncluded,receiveRate,isTrialPack,isGroupMessaging,isActive,entryAt,modifyAt,allowApp,isBotAllowed,isFbCloudAllowed,activated,expiryOn,const DeepCollectionEquality().hash(expiryDate),wid,entryBy,modifyBy,teamMember,allowedTeamMember,leadCount,contactCount,annualDiscount,status,const DeepCollectionEquality().hash(message),id,loginId]);

@override
String toString() {
  return 'PackageSubscriptionResult(packageName: $packageName, description: $description, duration: $duration, allowedNumberLimit: $allowedNumberLimit, dailySendLimit: $dailySendLimit, dailyReceiveLimit: $dailyReceiveLimit, packageRate: $packageRate, isSendRateIncluded: $isSendRateIncluded, sendRate: $sendRate, isReceiveRateIncluded: $isReceiveRateIncluded, receiveRate: $receiveRate, isTrialPack: $isTrialPack, isGroupMessaging: $isGroupMessaging, isActive: $isActive, entryAt: $entryAt, modifyAt: $modifyAt, allowApp: $allowApp, isBotAllowed: $isBotAllowed, isFbCloudAllowed: $isFbCloudAllowed, activated: $activated, expiryOn: $expiryOn, expiryDate: $expiryDate, wid: $wid, entryBy: $entryBy, modifyBy: $modifyBy, teamMember: $teamMember, allowedTeamMember: $allowedTeamMember, leadCount: $leadCount, contactCount: $contactCount, annualDiscount: $annualDiscount, status: $status, message: $message, id: $id, loginId: $loginId)';
}


}

/// @nodoc
abstract mixin class _$PackageSubscriptionResultCopyWith<$Res> implements $PackageSubscriptionResultCopyWith<$Res> {
  factory _$PackageSubscriptionResultCopyWith(_PackageSubscriptionResult value, $Res Function(_PackageSubscriptionResult) _then) = __$PackageSubscriptionResultCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'packageName') String? packageName,@JsonKey(name: 'description') String? description,@JsonKey(name: 'duration') int? duration,@JsonKey(name: 'allowedNumberLimit') int? allowedNumberLimit,@JsonKey(name: 'dailySendLimit') int? dailySendLimit,@JsonKey(name: 'dailyReceiveLimit') int? dailyReceiveLimit,@JsonKey(name: 'packageRate') double? packageRate,@JsonKey(name: 'isSendRateIncluded') bool? isSendRateIncluded,@JsonKey(name: 'sendRate') double? sendRate,@JsonKey(name: 'isReceiveRateIncluded') bool? isReceiveRateIncluded,@JsonKey(name: 'receiveRate') double? receiveRate,@JsonKey(name: 'isTrialPack') bool? isTrialPack,@JsonKey(name: 'isGroupMessaging') bool? isGroupMessaging,@JsonKey(name: 'isActive') bool? isActive,@JsonKey(name: 'entryAt') String? entryAt,@JsonKey(name: 'modifyAt') String? modifyAt,@JsonKey(name: 'allowApp') int? allowApp,@JsonKey(name: 'isBotAllowed') bool? isBotAllowed,@JsonKey(name: 'isFbCloudAllowed') bool? isFbCloudAllowed,@JsonKey(name: 'activated') bool? activated,@JsonKey(name: 'expiryOn') int? expiryOn,@JsonKey(name: 'expiryDate') dynamic expiryDate,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'entryBy') int? entryBy,@JsonKey(name: 'modifyBy') int? modifyBy,@JsonKey(name: 'teamMember') int? teamMember,@JsonKey(name: 'allowedTeamMember') int? allowedTeamMember,@JsonKey(name: 'leadCount') int? leadCount,@JsonKey(name: 'contactCount') int? contactCount,@JsonKey(name: 'annualDiscount') int? annualDiscount,@JsonKey(name: 'status') int? status,@JsonKey(name: 'message') dynamic message,@JsonKey(name: 'id') int? id,@JsonKey(name: 'loginId') int? loginId
});




}
/// @nodoc
class __$PackageSubscriptionResultCopyWithImpl<$Res>
    implements _$PackageSubscriptionResultCopyWith<$Res> {
  __$PackageSubscriptionResultCopyWithImpl(this._self, this._then);

  final _PackageSubscriptionResult _self;
  final $Res Function(_PackageSubscriptionResult) _then;

/// Create a copy of PackageSubscriptionResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? packageName = freezed,Object? description = freezed,Object? duration = freezed,Object? allowedNumberLimit = freezed,Object? dailySendLimit = freezed,Object? dailyReceiveLimit = freezed,Object? packageRate = freezed,Object? isSendRateIncluded = freezed,Object? sendRate = freezed,Object? isReceiveRateIncluded = freezed,Object? receiveRate = freezed,Object? isTrialPack = freezed,Object? isGroupMessaging = freezed,Object? isActive = freezed,Object? entryAt = freezed,Object? modifyAt = freezed,Object? allowApp = freezed,Object? isBotAllowed = freezed,Object? isFbCloudAllowed = freezed,Object? activated = freezed,Object? expiryOn = freezed,Object? expiryDate = freezed,Object? wid = freezed,Object? entryBy = freezed,Object? modifyBy = freezed,Object? teamMember = freezed,Object? allowedTeamMember = freezed,Object? leadCount = freezed,Object? contactCount = freezed,Object? annualDiscount = freezed,Object? status = freezed,Object? message = freezed,Object? id = freezed,Object? loginId = freezed,}) {
  return _then(_PackageSubscriptionResult(
packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,allowedNumberLimit: freezed == allowedNumberLimit ? _self.allowedNumberLimit : allowedNumberLimit // ignore: cast_nullable_to_non_nullable
as int?,dailySendLimit: freezed == dailySendLimit ? _self.dailySendLimit : dailySendLimit // ignore: cast_nullable_to_non_nullable
as int?,dailyReceiveLimit: freezed == dailyReceiveLimit ? _self.dailyReceiveLimit : dailyReceiveLimit // ignore: cast_nullable_to_non_nullable
as int?,packageRate: freezed == packageRate ? _self.packageRate : packageRate // ignore: cast_nullable_to_non_nullable
as double?,isSendRateIncluded: freezed == isSendRateIncluded ? _self.isSendRateIncluded : isSendRateIncluded // ignore: cast_nullable_to_non_nullable
as bool?,sendRate: freezed == sendRate ? _self.sendRate : sendRate // ignore: cast_nullable_to_non_nullable
as double?,isReceiveRateIncluded: freezed == isReceiveRateIncluded ? _self.isReceiveRateIncluded : isReceiveRateIncluded // ignore: cast_nullable_to_non_nullable
as bool?,receiveRate: freezed == receiveRate ? _self.receiveRate : receiveRate // ignore: cast_nullable_to_non_nullable
as double?,isTrialPack: freezed == isTrialPack ? _self.isTrialPack : isTrialPack // ignore: cast_nullable_to_non_nullable
as bool?,isGroupMessaging: freezed == isGroupMessaging ? _self.isGroupMessaging : isGroupMessaging // ignore: cast_nullable_to_non_nullable
as bool?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,entryAt: freezed == entryAt ? _self.entryAt : entryAt // ignore: cast_nullable_to_non_nullable
as String?,modifyAt: freezed == modifyAt ? _self.modifyAt : modifyAt // ignore: cast_nullable_to_non_nullable
as String?,allowApp: freezed == allowApp ? _self.allowApp : allowApp // ignore: cast_nullable_to_non_nullable
as int?,isBotAllowed: freezed == isBotAllowed ? _self.isBotAllowed : isBotAllowed // ignore: cast_nullable_to_non_nullable
as bool?,isFbCloudAllowed: freezed == isFbCloudAllowed ? _self.isFbCloudAllowed : isFbCloudAllowed // ignore: cast_nullable_to_non_nullable
as bool?,activated: freezed == activated ? _self.activated : activated // ignore: cast_nullable_to_non_nullable
as bool?,expiryOn: freezed == expiryOn ? _self.expiryOn : expiryOn // ignore: cast_nullable_to_non_nullable
as int?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as dynamic,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,entryBy: freezed == entryBy ? _self.entryBy : entryBy // ignore: cast_nullable_to_non_nullable
as int?,modifyBy: freezed == modifyBy ? _self.modifyBy : modifyBy // ignore: cast_nullable_to_non_nullable
as int?,teamMember: freezed == teamMember ? _self.teamMember : teamMember // ignore: cast_nullable_to_non_nullable
as int?,allowedTeamMember: freezed == allowedTeamMember ? _self.allowedTeamMember : allowedTeamMember // ignore: cast_nullable_to_non_nullable
as int?,leadCount: freezed == leadCount ? _self.leadCount : leadCount // ignore: cast_nullable_to_non_nullable
as int?,contactCount: freezed == contactCount ? _self.contactCount : contactCount // ignore: cast_nullable_to_non_nullable
as int?,annualDiscount: freezed == annualDiscount ? _self.annualDiscount : annualDiscount // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,message: freezed == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as dynamic,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,loginId: freezed == loginId ? _self.loginId : loginId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
