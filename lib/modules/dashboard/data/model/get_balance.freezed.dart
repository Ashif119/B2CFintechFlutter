// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_balance.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetBalance {

@JsonKey(name: 'masterwallet') List<Masterwallet>? get masterwallet;@JsonKey(name: 'userbalance') Userbalance? get userbalance;
/// Create a copy of GetBalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetBalanceCopyWith<GetBalance> get copyWith => _$GetBalanceCopyWithImpl<GetBalance>(this as GetBalance, _$identity);

  /// Serializes this GetBalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetBalance&&const DeepCollectionEquality().equals(other.masterwallet, masterwallet)&&(identical(other.userbalance, userbalance) || other.userbalance == userbalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(masterwallet),userbalance);

@override
String toString() {
  return 'GetBalance(masterwallet: $masterwallet, userbalance: $userbalance)';
}


}

/// @nodoc
abstract mixin class $GetBalanceCopyWith<$Res>  {
  factory $GetBalanceCopyWith(GetBalance value, $Res Function(GetBalance) _then) = _$GetBalanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'masterwallet') List<Masterwallet>? masterwallet,@JsonKey(name: 'userbalance') Userbalance? userbalance
});


$UserbalanceCopyWith<$Res>? get userbalance;

}
/// @nodoc
class _$GetBalanceCopyWithImpl<$Res>
    implements $GetBalanceCopyWith<$Res> {
  _$GetBalanceCopyWithImpl(this._self, this._then);

  final GetBalance _self;
  final $Res Function(GetBalance) _then;

/// Create a copy of GetBalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? masterwallet = freezed,Object? userbalance = freezed,}) {
  return _then(_self.copyWith(
masterwallet: freezed == masterwallet ? _self.masterwallet : masterwallet // ignore: cast_nullable_to_non_nullable
as List<Masterwallet>?,userbalance: freezed == userbalance ? _self.userbalance : userbalance // ignore: cast_nullable_to_non_nullable
as Userbalance?,
  ));
}
/// Create a copy of GetBalance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserbalanceCopyWith<$Res>? get userbalance {
    if (_self.userbalance == null) {
    return null;
  }

  return $UserbalanceCopyWith<$Res>(_self.userbalance!, (value) {
    return _then(_self.copyWith(userbalance: value));
  });
}
}


/// Adds pattern-matching-related methods to [GetBalance].
extension GetBalancePatterns on GetBalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetBalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetBalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetBalance value)  $default,){
final _that = this;
switch (_that) {
case _GetBalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetBalance value)?  $default,){
final _that = this;
switch (_that) {
case _GetBalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'masterwallet')  List<Masterwallet>? masterwallet, @JsonKey(name: 'userbalance')  Userbalance? userbalance)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetBalance() when $default != null:
return $default(_that.masterwallet,_that.userbalance);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'masterwallet')  List<Masterwallet>? masterwallet, @JsonKey(name: 'userbalance')  Userbalance? userbalance)  $default,) {final _that = this;
switch (_that) {
case _GetBalance():
return $default(_that.masterwallet,_that.userbalance);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'masterwallet')  List<Masterwallet>? masterwallet, @JsonKey(name: 'userbalance')  Userbalance? userbalance)?  $default,) {final _that = this;
switch (_that) {
case _GetBalance() when $default != null:
return $default(_that.masterwallet,_that.userbalance);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetBalance implements GetBalance {
  const _GetBalance({@JsonKey(name: 'masterwallet') final  List<Masterwallet>? masterwallet, @JsonKey(name: 'userbalance') this.userbalance}): _masterwallet = masterwallet;
  factory _GetBalance.fromJson(Map<String, dynamic> json) => _$GetBalanceFromJson(json);

 final  List<Masterwallet>? _masterwallet;
@override@JsonKey(name: 'masterwallet') List<Masterwallet>? get masterwallet {
  final value = _masterwallet;
  if (value == null) return null;
  if (_masterwallet is EqualUnmodifiableListView) return _masterwallet;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey(name: 'userbalance') final  Userbalance? userbalance;

/// Create a copy of GetBalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetBalanceCopyWith<_GetBalance> get copyWith => __$GetBalanceCopyWithImpl<_GetBalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetBalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetBalance&&const DeepCollectionEquality().equals(other._masterwallet, _masterwallet)&&(identical(other.userbalance, userbalance) || other.userbalance == userbalance));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_masterwallet),userbalance);

@override
String toString() {
  return 'GetBalance(masterwallet: $masterwallet, userbalance: $userbalance)';
}


}

/// @nodoc
abstract mixin class _$GetBalanceCopyWith<$Res> implements $GetBalanceCopyWith<$Res> {
  factory _$GetBalanceCopyWith(_GetBalance value, $Res Function(_GetBalance) _then) = __$GetBalanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'masterwallet') List<Masterwallet>? masterwallet,@JsonKey(name: 'userbalance') Userbalance? userbalance
});


@override $UserbalanceCopyWith<$Res>? get userbalance;

}
/// @nodoc
class __$GetBalanceCopyWithImpl<$Res>
    implements _$GetBalanceCopyWith<$Res> {
  __$GetBalanceCopyWithImpl(this._self, this._then);

  final _GetBalance _self;
  final $Res Function(_GetBalance) _then;

/// Create a copy of GetBalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? masterwallet = freezed,Object? userbalance = freezed,}) {
  return _then(_GetBalance(
masterwallet: freezed == masterwallet ? _self._masterwallet : masterwallet // ignore: cast_nullable_to_non_nullable
as List<Masterwallet>?,userbalance: freezed == userbalance ? _self.userbalance : userbalance // ignore: cast_nullable_to_non_nullable
as Userbalance?,
  ));
}

/// Create a copy of GetBalance
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserbalanceCopyWith<$Res>? get userbalance {
    if (_self.userbalance == null) {
    return null;
  }

  return $UserbalanceCopyWith<$Res>(_self.userbalance!, (value) {
    return _then(_self.copyWith(userbalance: value));
  });
}
}


/// @nodoc
mixin _$Userbalance {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'userId') int? get userId;@JsonKey(name: 'amount') double? get amount;@JsonKey(name: 'lien') double? get lien;@JsonKey(name: 'modifyAt') String? get modifyAt;
/// Create a copy of Userbalance
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserbalanceCopyWith<Userbalance> get copyWith => _$UserbalanceCopyWithImpl<Userbalance>(this as Userbalance, _$identity);

  /// Serializes this Userbalance to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Userbalance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.lien, lien) || other.lien == lien)&&(identical(other.modifyAt, modifyAt) || other.modifyAt == modifyAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,lien,modifyAt);

@override
String toString() {
  return 'Userbalance(id: $id, userId: $userId, amount: $amount, lien: $lien, modifyAt: $modifyAt)';
}


}

/// @nodoc
abstract mixin class $UserbalanceCopyWith<$Res>  {
  factory $UserbalanceCopyWith(Userbalance value, $Res Function(Userbalance) _then) = _$UserbalanceCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'userId') int? userId,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'lien') double? lien,@JsonKey(name: 'modifyAt') String? modifyAt
});




}
/// @nodoc
class _$UserbalanceCopyWithImpl<$Res>
    implements $UserbalanceCopyWith<$Res> {
  _$UserbalanceCopyWithImpl(this._self, this._then);

  final Userbalance _self;
  final $Res Function(Userbalance) _then;

/// Create a copy of Userbalance
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? userId = freezed,Object? amount = freezed,Object? lien = freezed,Object? modifyAt = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,lien: freezed == lien ? _self.lien : lien // ignore: cast_nullable_to_non_nullable
as double?,modifyAt: freezed == modifyAt ? _self.modifyAt : modifyAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Userbalance].
extension UserbalancePatterns on Userbalance {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Userbalance value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Userbalance() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Userbalance value)  $default,){
final _that = this;
switch (_that) {
case _Userbalance():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Userbalance value)?  $default,){
final _that = this;
switch (_that) {
case _Userbalance() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'userId')  int? userId, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'lien')  double? lien, @JsonKey(name: 'modifyAt')  String? modifyAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Userbalance() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.lien,_that.modifyAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'userId')  int? userId, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'lien')  double? lien, @JsonKey(name: 'modifyAt')  String? modifyAt)  $default,) {final _that = this;
switch (_that) {
case _Userbalance():
return $default(_that.id,_that.userId,_that.amount,_that.lien,_that.modifyAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'userId')  int? userId, @JsonKey(name: 'amount')  double? amount, @JsonKey(name: 'lien')  double? lien, @JsonKey(name: 'modifyAt')  String? modifyAt)?  $default,) {final _that = this;
switch (_that) {
case _Userbalance() when $default != null:
return $default(_that.id,_that.userId,_that.amount,_that.lien,_that.modifyAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Userbalance implements Userbalance {
  const _Userbalance({@JsonKey(name: 'id') this.id, @JsonKey(name: 'userId') this.userId, @JsonKey(name: 'amount') this.amount, @JsonKey(name: 'lien') this.lien, @JsonKey(name: 'modifyAt') this.modifyAt});
  factory _Userbalance.fromJson(Map<String, dynamic> json) => _$UserbalanceFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'userId') final  int? userId;
@override@JsonKey(name: 'amount') final  double? amount;
@override@JsonKey(name: 'lien') final  double? lien;
@override@JsonKey(name: 'modifyAt') final  String? modifyAt;

/// Create a copy of Userbalance
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserbalanceCopyWith<_Userbalance> get copyWith => __$UserbalanceCopyWithImpl<_Userbalance>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserbalanceToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Userbalance&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.lien, lien) || other.lien == lien)&&(identical(other.modifyAt, modifyAt) || other.modifyAt == modifyAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,userId,amount,lien,modifyAt);

@override
String toString() {
  return 'Userbalance(id: $id, userId: $userId, amount: $amount, lien: $lien, modifyAt: $modifyAt)';
}


}

/// @nodoc
abstract mixin class _$UserbalanceCopyWith<$Res> implements $UserbalanceCopyWith<$Res> {
  factory _$UserbalanceCopyWith(_Userbalance value, $Res Function(_Userbalance) _then) = __$UserbalanceCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'userId') int? userId,@JsonKey(name: 'amount') double? amount,@JsonKey(name: 'lien') double? lien,@JsonKey(name: 'modifyAt') String? modifyAt
});




}
/// @nodoc
class __$UserbalanceCopyWithImpl<$Res>
    implements _$UserbalanceCopyWith<$Res> {
  __$UserbalanceCopyWithImpl(this._self, this._then);

  final _Userbalance _self;
  final $Res Function(_Userbalance) _then;

/// Create a copy of Userbalance
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? userId = freezed,Object? amount = freezed,Object? lien = freezed,Object? modifyAt = freezed,}) {
  return _then(_Userbalance(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,userId: freezed == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as int?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,lien: freezed == lien ? _self.lien : lien // ignore: cast_nullable_to_non_nullable
as double?,modifyAt: freezed == modifyAt ? _self.modifyAt : modifyAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Masterwallet {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'walletType') String? get walletType;@JsonKey(name: 'remark') String? get remark;@JsonKey(name: 'status') bool? get status;@JsonKey(name: 'inFundProcess') bool? get inFundProcess;
/// Create a copy of Masterwallet
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MasterwalletCopyWith<Masterwallet> get copyWith => _$MasterwalletCopyWithImpl<Masterwallet>(this as Masterwallet, _$identity);

  /// Serializes this Masterwallet to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Masterwallet&&(identical(other.id, id) || other.id == id)&&(identical(other.walletType, walletType) || other.walletType == walletType)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.status, status) || other.status == status)&&(identical(other.inFundProcess, inFundProcess) || other.inFundProcess == inFundProcess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,walletType,remark,status,inFundProcess);

@override
String toString() {
  return 'Masterwallet(id: $id, walletType: $walletType, remark: $remark, status: $status, inFundProcess: $inFundProcess)';
}


}

/// @nodoc
abstract mixin class $MasterwalletCopyWith<$Res>  {
  factory $MasterwalletCopyWith(Masterwallet value, $Res Function(Masterwallet) _then) = _$MasterwalletCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'walletType') String? walletType,@JsonKey(name: 'remark') String? remark,@JsonKey(name: 'status') bool? status,@JsonKey(name: 'inFundProcess') bool? inFundProcess
});




}
/// @nodoc
class _$MasterwalletCopyWithImpl<$Res>
    implements $MasterwalletCopyWith<$Res> {
  _$MasterwalletCopyWithImpl(this._self, this._then);

  final Masterwallet _self;
  final $Res Function(Masterwallet) _then;

/// Create a copy of Masterwallet
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? walletType = freezed,Object? remark = freezed,Object? status = freezed,Object? inFundProcess = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,walletType: freezed == walletType ? _self.walletType : walletType // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,inFundProcess: freezed == inFundProcess ? _self.inFundProcess : inFundProcess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [Masterwallet].
extension MasterwalletPatterns on Masterwallet {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Masterwallet value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Masterwallet() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Masterwallet value)  $default,){
final _that = this;
switch (_that) {
case _Masterwallet():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Masterwallet value)?  $default,){
final _that = this;
switch (_that) {
case _Masterwallet() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'walletType')  String? walletType, @JsonKey(name: 'remark')  String? remark, @JsonKey(name: 'status')  bool? status, @JsonKey(name: 'inFundProcess')  bool? inFundProcess)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Masterwallet() when $default != null:
return $default(_that.id,_that.walletType,_that.remark,_that.status,_that.inFundProcess);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'walletType')  String? walletType, @JsonKey(name: 'remark')  String? remark, @JsonKey(name: 'status')  bool? status, @JsonKey(name: 'inFundProcess')  bool? inFundProcess)  $default,) {final _that = this;
switch (_that) {
case _Masterwallet():
return $default(_that.id,_that.walletType,_that.remark,_that.status,_that.inFundProcess);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'walletType')  String? walletType, @JsonKey(name: 'remark')  String? remark, @JsonKey(name: 'status')  bool? status, @JsonKey(name: 'inFundProcess')  bool? inFundProcess)?  $default,) {final _that = this;
switch (_that) {
case _Masterwallet() when $default != null:
return $default(_that.id,_that.walletType,_that.remark,_that.status,_that.inFundProcess);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Masterwallet implements Masterwallet {
  const _Masterwallet({@JsonKey(name: 'id') this.id, @JsonKey(name: 'walletType') this.walletType, @JsonKey(name: 'remark') this.remark, @JsonKey(name: 'status') this.status, @JsonKey(name: 'inFundProcess') this.inFundProcess});
  factory _Masterwallet.fromJson(Map<String, dynamic> json) => _$MasterwalletFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'walletType') final  String? walletType;
@override@JsonKey(name: 'remark') final  String? remark;
@override@JsonKey(name: 'status') final  bool? status;
@override@JsonKey(name: 'inFundProcess') final  bool? inFundProcess;

/// Create a copy of Masterwallet
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MasterwalletCopyWith<_Masterwallet> get copyWith => __$MasterwalletCopyWithImpl<_Masterwallet>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MasterwalletToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Masterwallet&&(identical(other.id, id) || other.id == id)&&(identical(other.walletType, walletType) || other.walletType == walletType)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.status, status) || other.status == status)&&(identical(other.inFundProcess, inFundProcess) || other.inFundProcess == inFundProcess));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,walletType,remark,status,inFundProcess);

@override
String toString() {
  return 'Masterwallet(id: $id, walletType: $walletType, remark: $remark, status: $status, inFundProcess: $inFundProcess)';
}


}

/// @nodoc
abstract mixin class _$MasterwalletCopyWith<$Res> implements $MasterwalletCopyWith<$Res> {
  factory _$MasterwalletCopyWith(_Masterwallet value, $Res Function(_Masterwallet) _then) = __$MasterwalletCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'walletType') String? walletType,@JsonKey(name: 'remark') String? remark,@JsonKey(name: 'status') bool? status,@JsonKey(name: 'inFundProcess') bool? inFundProcess
});




}
/// @nodoc
class __$MasterwalletCopyWithImpl<$Res>
    implements _$MasterwalletCopyWith<$Res> {
  __$MasterwalletCopyWithImpl(this._self, this._then);

  final _Masterwallet _self;
  final $Res Function(_Masterwallet) _then;

/// Create a copy of Masterwallet
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? walletType = freezed,Object? remark = freezed,Object? status = freezed,Object? inFundProcess = freezed,}) {
  return _then(_Masterwallet(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,walletType: freezed == walletType ? _self.walletType : walletType // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as bool?,inFundProcess: freezed == inFundProcess ? _self.inFundProcess : inFundProcess // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
