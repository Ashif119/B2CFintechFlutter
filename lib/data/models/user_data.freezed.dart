// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserData {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'username') String? get username;@JsonKey(name: 'password') dynamic get password;@JsonKey(name: 'mobileNo') String? get mobileNo;@JsonKey(name: 'email') String? get email;@JsonKey(name: 'countryCode') String? get countryCode;@JsonKey(name: 'role') int? get role;@JsonKey(name: 'token') String? get token;@JsonKey(name: 'refreshToken') dynamic get refreshToken;@JsonKey(name: 'name') String? get name;@JsonKey(name: 'profileImg') String? get profileImg;@JsonKey(name: 'wrongAttempt') int? get wrongAttempt;@JsonKey(name: 'isLocked') bool? get isLocked;@JsonKey(name: 'wid') int? get wid;@JsonKey(name: 'allowedApp') String? get allowedApp;@JsonKey(name: 'lockout') dynamic get lockout;@JsonKey(name: 'twoFAType') int? get twoFAType;@JsonKey(name: 'isRegisteredWithGST') int? get isRegisteredWithGST;
/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserDataCopyWith<UserData> get copyWith => _$UserDataCopyWithImpl<UserData>(this as UserData, _$identity);

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserData&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other.password, password)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.role, role) || other.role == role)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.refreshToken, refreshToken)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.wrongAttempt, wrongAttempt) || other.wrongAttempt == wrongAttempt)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.allowedApp, allowedApp) || other.allowedApp == allowedApp)&&const DeepCollectionEquality().equals(other.lockout, lockout)&&(identical(other.twoFAType, twoFAType) || other.twoFAType == twoFAType)&&(identical(other.isRegisteredWithGST, isRegisteredWithGST) || other.isRegisteredWithGST == isRegisteredWithGST));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,const DeepCollectionEquality().hash(password),mobileNo,email,countryCode,role,token,const DeepCollectionEquality().hash(refreshToken),name,profileImg,wrongAttempt,isLocked,wid,allowedApp,const DeepCollectionEquality().hash(lockout),twoFAType,isRegisteredWithGST);

@override
String toString() {
  return 'UserData(id: $id, username: $username, password: $password, mobileNo: $mobileNo, email: $email, countryCode: $countryCode, role: $role, token: $token, refreshToken: $refreshToken, name: $name, profileImg: $profileImg, wrongAttempt: $wrongAttempt, isLocked: $isLocked, wid: $wid, allowedApp: $allowedApp, lockout: $lockout, twoFAType: $twoFAType, isRegisteredWithGST: $isRegisteredWithGST)';
}


}

/// @nodoc
abstract mixin class $UserDataCopyWith<$Res>  {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) _then) = _$UserDataCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'username') String? username,@JsonKey(name: 'password') dynamic password,@JsonKey(name: 'mobileNo') String? mobileNo,@JsonKey(name: 'email') String? email,@JsonKey(name: 'countryCode') String? countryCode,@JsonKey(name: 'role') int? role,@JsonKey(name: 'token') String? token,@JsonKey(name: 'refreshToken') dynamic refreshToken,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profileImg') String? profileImg,@JsonKey(name: 'wrongAttempt') int? wrongAttempt,@JsonKey(name: 'isLocked') bool? isLocked,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'allowedApp') String? allowedApp,@JsonKey(name: 'lockout') dynamic lockout,@JsonKey(name: 'twoFAType') int? twoFAType,@JsonKey(name: 'isRegisteredWithGST') int? isRegisteredWithGST
});




}
/// @nodoc
class _$UserDataCopyWithImpl<$Res>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._self, this._then);

  final UserData _self;
  final $Res Function(UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? username = freezed,Object? password = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? countryCode = freezed,Object? role = freezed,Object? token = freezed,Object? refreshToken = freezed,Object? name = freezed,Object? profileImg = freezed,Object? wrongAttempt = freezed,Object? isLocked = freezed,Object? wid = freezed,Object? allowedApp = freezed,Object? lockout = freezed,Object? twoFAType = freezed,Object? isRegisteredWithGST = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as dynamic,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as int?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,wrongAttempt: freezed == wrongAttempt ? _self.wrongAttempt : wrongAttempt // ignore: cast_nullable_to_non_nullable
as int?,isLocked: freezed == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool?,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,allowedApp: freezed == allowedApp ? _self.allowedApp : allowedApp // ignore: cast_nullable_to_non_nullable
as String?,lockout: freezed == lockout ? _self.lockout : lockout // ignore: cast_nullable_to_non_nullable
as dynamic,twoFAType: freezed == twoFAType ? _self.twoFAType : twoFAType // ignore: cast_nullable_to_non_nullable
as int?,isRegisteredWithGST: freezed == isRegisteredWithGST ? _self.isRegisteredWithGST : isRegisteredWithGST // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [UserData].
extension UserDataPatterns on UserData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserData value)  $default,){
final _that = this;
switch (_that) {
case _UserData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserData value)?  $default,){
final _that = this;
switch (_that) {
case _UserData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'password')  dynamic password, @JsonKey(name: 'mobileNo')  String? mobileNo, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'countryCode')  String? countryCode, @JsonKey(name: 'role')  int? role, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'refreshToken')  dynamic refreshToken, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profileImg')  String? profileImg, @JsonKey(name: 'wrongAttempt')  int? wrongAttempt, @JsonKey(name: 'isLocked')  bool? isLocked, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'allowedApp')  String? allowedApp, @JsonKey(name: 'lockout')  dynamic lockout, @JsonKey(name: 'twoFAType')  int? twoFAType, @JsonKey(name: 'isRegisteredWithGST')  int? isRegisteredWithGST)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.id,_that.username,_that.password,_that.mobileNo,_that.email,_that.countryCode,_that.role,_that.token,_that.refreshToken,_that.name,_that.profileImg,_that.wrongAttempt,_that.isLocked,_that.wid,_that.allowedApp,_that.lockout,_that.twoFAType,_that.isRegisteredWithGST);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'password')  dynamic password, @JsonKey(name: 'mobileNo')  String? mobileNo, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'countryCode')  String? countryCode, @JsonKey(name: 'role')  int? role, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'refreshToken')  dynamic refreshToken, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profileImg')  String? profileImg, @JsonKey(name: 'wrongAttempt')  int? wrongAttempt, @JsonKey(name: 'isLocked')  bool? isLocked, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'allowedApp')  String? allowedApp, @JsonKey(name: 'lockout')  dynamic lockout, @JsonKey(name: 'twoFAType')  int? twoFAType, @JsonKey(name: 'isRegisteredWithGST')  int? isRegisteredWithGST)  $default,) {final _that = this;
switch (_that) {
case _UserData():
return $default(_that.id,_that.username,_that.password,_that.mobileNo,_that.email,_that.countryCode,_that.role,_that.token,_that.refreshToken,_that.name,_that.profileImg,_that.wrongAttempt,_that.isLocked,_that.wid,_that.allowedApp,_that.lockout,_that.twoFAType,_that.isRegisteredWithGST);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'username')  String? username, @JsonKey(name: 'password')  dynamic password, @JsonKey(name: 'mobileNo')  String? mobileNo, @JsonKey(name: 'email')  String? email, @JsonKey(name: 'countryCode')  String? countryCode, @JsonKey(name: 'role')  int? role, @JsonKey(name: 'token')  String? token, @JsonKey(name: 'refreshToken')  dynamic refreshToken, @JsonKey(name: 'name')  String? name, @JsonKey(name: 'profileImg')  String? profileImg, @JsonKey(name: 'wrongAttempt')  int? wrongAttempt, @JsonKey(name: 'isLocked')  bool? isLocked, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'allowedApp')  String? allowedApp, @JsonKey(name: 'lockout')  dynamic lockout, @JsonKey(name: 'twoFAType')  int? twoFAType, @JsonKey(name: 'isRegisteredWithGST')  int? isRegisteredWithGST)?  $default,) {final _that = this;
switch (_that) {
case _UserData() when $default != null:
return $default(_that.id,_that.username,_that.password,_that.mobileNo,_that.email,_that.countryCode,_that.role,_that.token,_that.refreshToken,_that.name,_that.profileImg,_that.wrongAttempt,_that.isLocked,_that.wid,_that.allowedApp,_that.lockout,_that.twoFAType,_that.isRegisteredWithGST);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserData implements UserData {
  const _UserData({@JsonKey(name: 'id') this.id, @JsonKey(name: 'username') this.username, @JsonKey(name: 'password') this.password, @JsonKey(name: 'mobileNo') this.mobileNo, @JsonKey(name: 'email') this.email, @JsonKey(name: 'countryCode') this.countryCode, @JsonKey(name: 'role') this.role, @JsonKey(name: 'token') this.token, @JsonKey(name: 'refreshToken') this.refreshToken, @JsonKey(name: 'name') this.name, @JsonKey(name: 'profileImg') this.profileImg, @JsonKey(name: 'wrongAttempt') this.wrongAttempt, @JsonKey(name: 'isLocked') this.isLocked, @JsonKey(name: 'wid') this.wid, @JsonKey(name: 'allowedApp') this.allowedApp, @JsonKey(name: 'lockout') this.lockout, @JsonKey(name: 'twoFAType') this.twoFAType, @JsonKey(name: 'isRegisteredWithGST') this.isRegisteredWithGST});
  factory _UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'username') final  String? username;
@override@JsonKey(name: 'password') final  dynamic password;
@override@JsonKey(name: 'mobileNo') final  String? mobileNo;
@override@JsonKey(name: 'email') final  String? email;
@override@JsonKey(name: 'countryCode') final  String? countryCode;
@override@JsonKey(name: 'role') final  int? role;
@override@JsonKey(name: 'token') final  String? token;
@override@JsonKey(name: 'refreshToken') final  dynamic refreshToken;
@override@JsonKey(name: 'name') final  String? name;
@override@JsonKey(name: 'profileImg') final  String? profileImg;
@override@JsonKey(name: 'wrongAttempt') final  int? wrongAttempt;
@override@JsonKey(name: 'isLocked') final  bool? isLocked;
@override@JsonKey(name: 'wid') final  int? wid;
@override@JsonKey(name: 'allowedApp') final  String? allowedApp;
@override@JsonKey(name: 'lockout') final  dynamic lockout;
@override@JsonKey(name: 'twoFAType') final  int? twoFAType;
@override@JsonKey(name: 'isRegisteredWithGST') final  int? isRegisteredWithGST;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserDataCopyWith<_UserData> get copyWith => __$UserDataCopyWithImpl<_UserData>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserDataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserData&&(identical(other.id, id) || other.id == id)&&(identical(other.username, username) || other.username == username)&&const DeepCollectionEquality().equals(other.password, password)&&(identical(other.mobileNo, mobileNo) || other.mobileNo == mobileNo)&&(identical(other.email, email) || other.email == email)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode)&&(identical(other.role, role) || other.role == role)&&(identical(other.token, token) || other.token == token)&&const DeepCollectionEquality().equals(other.refreshToken, refreshToken)&&(identical(other.name, name) || other.name == name)&&(identical(other.profileImg, profileImg) || other.profileImg == profileImg)&&(identical(other.wrongAttempt, wrongAttempt) || other.wrongAttempt == wrongAttempt)&&(identical(other.isLocked, isLocked) || other.isLocked == isLocked)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.allowedApp, allowedApp) || other.allowedApp == allowedApp)&&const DeepCollectionEquality().equals(other.lockout, lockout)&&(identical(other.twoFAType, twoFAType) || other.twoFAType == twoFAType)&&(identical(other.isRegisteredWithGST, isRegisteredWithGST) || other.isRegisteredWithGST == isRegisteredWithGST));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,username,const DeepCollectionEquality().hash(password),mobileNo,email,countryCode,role,token,const DeepCollectionEquality().hash(refreshToken),name,profileImg,wrongAttempt,isLocked,wid,allowedApp,const DeepCollectionEquality().hash(lockout),twoFAType,isRegisteredWithGST);

@override
String toString() {
  return 'UserData(id: $id, username: $username, password: $password, mobileNo: $mobileNo, email: $email, countryCode: $countryCode, role: $role, token: $token, refreshToken: $refreshToken, name: $name, profileImg: $profileImg, wrongAttempt: $wrongAttempt, isLocked: $isLocked, wid: $wid, allowedApp: $allowedApp, lockout: $lockout, twoFAType: $twoFAType, isRegisteredWithGST: $isRegisteredWithGST)';
}


}

/// @nodoc
abstract mixin class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) _then) = __$UserDataCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'username') String? username,@JsonKey(name: 'password') dynamic password,@JsonKey(name: 'mobileNo') String? mobileNo,@JsonKey(name: 'email') String? email,@JsonKey(name: 'countryCode') String? countryCode,@JsonKey(name: 'role') int? role,@JsonKey(name: 'token') String? token,@JsonKey(name: 'refreshToken') dynamic refreshToken,@JsonKey(name: 'name') String? name,@JsonKey(name: 'profileImg') String? profileImg,@JsonKey(name: 'wrongAttempt') int? wrongAttempt,@JsonKey(name: 'isLocked') bool? isLocked,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'allowedApp') String? allowedApp,@JsonKey(name: 'lockout') dynamic lockout,@JsonKey(name: 'twoFAType') int? twoFAType,@JsonKey(name: 'isRegisteredWithGST') int? isRegisteredWithGST
});




}
/// @nodoc
class __$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(this._self, this._then);

  final _UserData _self;
  final $Res Function(_UserData) _then;

/// Create a copy of UserData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? username = freezed,Object? password = freezed,Object? mobileNo = freezed,Object? email = freezed,Object? countryCode = freezed,Object? role = freezed,Object? token = freezed,Object? refreshToken = freezed,Object? name = freezed,Object? profileImg = freezed,Object? wrongAttempt = freezed,Object? isLocked = freezed,Object? wid = freezed,Object? allowedApp = freezed,Object? lockout = freezed,Object? twoFAType = freezed,Object? isRegisteredWithGST = freezed,}) {
  return _then(_UserData(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,username: freezed == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String?,password: freezed == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as dynamic,mobileNo: freezed == mobileNo ? _self.mobileNo : mobileNo // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String?,role: freezed == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as int?,token: freezed == token ? _self.token : token // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as dynamic,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,profileImg: freezed == profileImg ? _self.profileImg : profileImg // ignore: cast_nullable_to_non_nullable
as String?,wrongAttempt: freezed == wrongAttempt ? _self.wrongAttempt : wrongAttempt // ignore: cast_nullable_to_non_nullable
as int?,isLocked: freezed == isLocked ? _self.isLocked : isLocked // ignore: cast_nullable_to_non_nullable
as bool?,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,allowedApp: freezed == allowedApp ? _self.allowedApp : allowedApp // ignore: cast_nullable_to_non_nullable
as String?,lockout: freezed == lockout ? _self.lockout : lockout // ignore: cast_nullable_to_non_nullable
as dynamic,twoFAType: freezed == twoFAType ? _self.twoFAType : twoFAType // ignore: cast_nullable_to_non_nullable
as int?,isRegisteredWithGST: freezed == isRegisteredWithGST ? _self.isRegisteredWithGST : isRegisteredWithGST // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
