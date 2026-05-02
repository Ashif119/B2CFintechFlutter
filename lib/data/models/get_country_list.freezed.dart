// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_country_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetCountryList {

@JsonKey(name: 'countryCode') dynamic get countryCode;@JsonKey(name: 'country') String? get country;@JsonKey(name: 'phonePrefix') String? get phonePrefix;@JsonKey(name: 'flag') String? get flag;@JsonKey(name: 'regex') String? get regex;@JsonKey(name: 'isOcode2') String? get isOcode2;@JsonKey(name: 'capital') String? get capital;@JsonKey(name: 'id') int? get id;@JsonKey(name: 'status') dynamic get status;@JsonKey(name: 'isOcode3') String? get isOcode3;@JsonKey(name: 'timeZoneId') dynamic get timeZoneId;@JsonKey(name: 'phoneNumberMaxLength') int? get phoneNumberMaxLength;
/// Create a copy of GetCountryList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetCountryListCopyWith<GetCountryList> get copyWith => _$GetCountryListCopyWithImpl<GetCountryList>(this as GetCountryList, _$identity);

  /// Serializes this GetCountryList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetCountryList&&const DeepCollectionEquality().equals(other.countryCode, countryCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.phonePrefix, phonePrefix) || other.phonePrefix == phonePrefix)&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.isOcode2, isOcode2) || other.isOcode2 == isOcode2)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.isOcode3, isOcode3) || other.isOcode3 == isOcode3)&&const DeepCollectionEquality().equals(other.timeZoneId, timeZoneId)&&(identical(other.phoneNumberMaxLength, phoneNumberMaxLength) || other.phoneNumberMaxLength == phoneNumberMaxLength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(countryCode),country,phonePrefix,flag,regex,isOcode2,capital,id,const DeepCollectionEquality().hash(status),isOcode3,const DeepCollectionEquality().hash(timeZoneId),phoneNumberMaxLength);

@override
String toString() {
  return 'GetCountryList(countryCode: $countryCode, country: $country, phonePrefix: $phonePrefix, flag: $flag, regex: $regex, isOcode2: $isOcode2, capital: $capital, id: $id, status: $status, isOcode3: $isOcode3, timeZoneId: $timeZoneId, phoneNumberMaxLength: $phoneNumberMaxLength)';
}


}

/// @nodoc
abstract mixin class $GetCountryListCopyWith<$Res>  {
  factory $GetCountryListCopyWith(GetCountryList value, $Res Function(GetCountryList) _then) = _$GetCountryListCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'countryCode') dynamic countryCode,@JsonKey(name: 'country') String? country,@JsonKey(name: 'phonePrefix') String? phonePrefix,@JsonKey(name: 'flag') String? flag,@JsonKey(name: 'regex') String? regex,@JsonKey(name: 'isOcode2') String? isOcode2,@JsonKey(name: 'capital') String? capital,@JsonKey(name: 'id') int? id,@JsonKey(name: 'status') dynamic status,@JsonKey(name: 'isOcode3') String? isOcode3,@JsonKey(name: 'timeZoneId') dynamic timeZoneId,@JsonKey(name: 'phoneNumberMaxLength') int? phoneNumberMaxLength
});




}
/// @nodoc
class _$GetCountryListCopyWithImpl<$Res>
    implements $GetCountryListCopyWith<$Res> {
  _$GetCountryListCopyWithImpl(this._self, this._then);

  final GetCountryList _self;
  final $Res Function(GetCountryList) _then;

/// Create a copy of GetCountryList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? countryCode = freezed,Object? country = freezed,Object? phonePrefix = freezed,Object? flag = freezed,Object? regex = freezed,Object? isOcode2 = freezed,Object? capital = freezed,Object? id = freezed,Object? status = freezed,Object? isOcode3 = freezed,Object? timeZoneId = freezed,Object? phoneNumberMaxLength = freezed,}) {
  return _then(_self.copyWith(
countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as dynamic,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,phonePrefix: freezed == phonePrefix ? _self.phonePrefix : phonePrefix // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,isOcode2: freezed == isOcode2 ? _self.isOcode2 : isOcode2 // ignore: cast_nullable_to_non_nullable
as String?,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as dynamic,isOcode3: freezed == isOcode3 ? _self.isOcode3 : isOcode3 // ignore: cast_nullable_to_non_nullable
as String?,timeZoneId: freezed == timeZoneId ? _self.timeZoneId : timeZoneId // ignore: cast_nullable_to_non_nullable
as dynamic,phoneNumberMaxLength: freezed == phoneNumberMaxLength ? _self.phoneNumberMaxLength : phoneNumberMaxLength // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [GetCountryList].
extension GetCountryListPatterns on GetCountryList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetCountryList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCountryList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetCountryList value)  $default,){
final _that = this;
switch (_that) {
case _GetCountryList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetCountryList value)?  $default,){
final _that = this;
switch (_that) {
case _GetCountryList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'countryCode')  dynamic countryCode, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'phonePrefix')  String? phonePrefix, @JsonKey(name: 'flag')  String? flag, @JsonKey(name: 'regex')  String? regex, @JsonKey(name: 'isOcode2')  String? isOcode2, @JsonKey(name: 'capital')  String? capital, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  dynamic status, @JsonKey(name: 'isOcode3')  String? isOcode3, @JsonKey(name: 'timeZoneId')  dynamic timeZoneId, @JsonKey(name: 'phoneNumberMaxLength')  int? phoneNumberMaxLength)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCountryList() when $default != null:
return $default(_that.countryCode,_that.country,_that.phonePrefix,_that.flag,_that.regex,_that.isOcode2,_that.capital,_that.id,_that.status,_that.isOcode3,_that.timeZoneId,_that.phoneNumberMaxLength);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'countryCode')  dynamic countryCode, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'phonePrefix')  String? phonePrefix, @JsonKey(name: 'flag')  String? flag, @JsonKey(name: 'regex')  String? regex, @JsonKey(name: 'isOcode2')  String? isOcode2, @JsonKey(name: 'capital')  String? capital, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  dynamic status, @JsonKey(name: 'isOcode3')  String? isOcode3, @JsonKey(name: 'timeZoneId')  dynamic timeZoneId, @JsonKey(name: 'phoneNumberMaxLength')  int? phoneNumberMaxLength)  $default,) {final _that = this;
switch (_that) {
case _GetCountryList():
return $default(_that.countryCode,_that.country,_that.phonePrefix,_that.flag,_that.regex,_that.isOcode2,_that.capital,_that.id,_that.status,_that.isOcode3,_that.timeZoneId,_that.phoneNumberMaxLength);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'countryCode')  dynamic countryCode, @JsonKey(name: 'country')  String? country, @JsonKey(name: 'phonePrefix')  String? phonePrefix, @JsonKey(name: 'flag')  String? flag, @JsonKey(name: 'regex')  String? regex, @JsonKey(name: 'isOcode2')  String? isOcode2, @JsonKey(name: 'capital')  String? capital, @JsonKey(name: 'id')  int? id, @JsonKey(name: 'status')  dynamic status, @JsonKey(name: 'isOcode3')  String? isOcode3, @JsonKey(name: 'timeZoneId')  dynamic timeZoneId, @JsonKey(name: 'phoneNumberMaxLength')  int? phoneNumberMaxLength)?  $default,) {final _that = this;
switch (_that) {
case _GetCountryList() when $default != null:
return $default(_that.countryCode,_that.country,_that.phonePrefix,_that.flag,_that.regex,_that.isOcode2,_that.capital,_that.id,_that.status,_that.isOcode3,_that.timeZoneId,_that.phoneNumberMaxLength);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GetCountryList implements GetCountryList {
  const _GetCountryList({@JsonKey(name: 'countryCode') this.countryCode, @JsonKey(name: 'country') this.country, @JsonKey(name: 'phonePrefix') this.phonePrefix, @JsonKey(name: 'flag') this.flag, @JsonKey(name: 'regex') this.regex, @JsonKey(name: 'isOcode2') this.isOcode2, @JsonKey(name: 'capital') this.capital, @JsonKey(name: 'id') this.id, @JsonKey(name: 'status') this.status, @JsonKey(name: 'isOcode3') this.isOcode3, @JsonKey(name: 'timeZoneId') this.timeZoneId, @JsonKey(name: 'phoneNumberMaxLength') this.phoneNumberMaxLength});
  factory _GetCountryList.fromJson(Map<String, dynamic> json) => _$GetCountryListFromJson(json);

@override@JsonKey(name: 'countryCode') final  dynamic countryCode;
@override@JsonKey(name: 'country') final  String? country;
@override@JsonKey(name: 'phonePrefix') final  String? phonePrefix;
@override@JsonKey(name: 'flag') final  String? flag;
@override@JsonKey(name: 'regex') final  String? regex;
@override@JsonKey(name: 'isOcode2') final  String? isOcode2;
@override@JsonKey(name: 'capital') final  String? capital;
@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'status') final  dynamic status;
@override@JsonKey(name: 'isOcode3') final  String? isOcode3;
@override@JsonKey(name: 'timeZoneId') final  dynamic timeZoneId;
@override@JsonKey(name: 'phoneNumberMaxLength') final  int? phoneNumberMaxLength;

/// Create a copy of GetCountryList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetCountryListCopyWith<_GetCountryList> get copyWith => __$GetCountryListCopyWithImpl<_GetCountryList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetCountryListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCountryList&&const DeepCollectionEquality().equals(other.countryCode, countryCode)&&(identical(other.country, country) || other.country == country)&&(identical(other.phonePrefix, phonePrefix) || other.phonePrefix == phonePrefix)&&(identical(other.flag, flag) || other.flag == flag)&&(identical(other.regex, regex) || other.regex == regex)&&(identical(other.isOcode2, isOcode2) || other.isOcode2 == isOcode2)&&(identical(other.capital, capital) || other.capital == capital)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.status, status)&&(identical(other.isOcode3, isOcode3) || other.isOcode3 == isOcode3)&&const DeepCollectionEquality().equals(other.timeZoneId, timeZoneId)&&(identical(other.phoneNumberMaxLength, phoneNumberMaxLength) || other.phoneNumberMaxLength == phoneNumberMaxLength));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(countryCode),country,phonePrefix,flag,regex,isOcode2,capital,id,const DeepCollectionEquality().hash(status),isOcode3,const DeepCollectionEquality().hash(timeZoneId),phoneNumberMaxLength);

@override
String toString() {
  return 'GetCountryList(countryCode: $countryCode, country: $country, phonePrefix: $phonePrefix, flag: $flag, regex: $regex, isOcode2: $isOcode2, capital: $capital, id: $id, status: $status, isOcode3: $isOcode3, timeZoneId: $timeZoneId, phoneNumberMaxLength: $phoneNumberMaxLength)';
}


}

/// @nodoc
abstract mixin class _$GetCountryListCopyWith<$Res> implements $GetCountryListCopyWith<$Res> {
  factory _$GetCountryListCopyWith(_GetCountryList value, $Res Function(_GetCountryList) _then) = __$GetCountryListCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'countryCode') dynamic countryCode,@JsonKey(name: 'country') String? country,@JsonKey(name: 'phonePrefix') String? phonePrefix,@JsonKey(name: 'flag') String? flag,@JsonKey(name: 'regex') String? regex,@JsonKey(name: 'isOcode2') String? isOcode2,@JsonKey(name: 'capital') String? capital,@JsonKey(name: 'id') int? id,@JsonKey(name: 'status') dynamic status,@JsonKey(name: 'isOcode3') String? isOcode3,@JsonKey(name: 'timeZoneId') dynamic timeZoneId,@JsonKey(name: 'phoneNumberMaxLength') int? phoneNumberMaxLength
});




}
/// @nodoc
class __$GetCountryListCopyWithImpl<$Res>
    implements _$GetCountryListCopyWith<$Res> {
  __$GetCountryListCopyWithImpl(this._self, this._then);

  final _GetCountryList _self;
  final $Res Function(_GetCountryList) _then;

/// Create a copy of GetCountryList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? countryCode = freezed,Object? country = freezed,Object? phonePrefix = freezed,Object? flag = freezed,Object? regex = freezed,Object? isOcode2 = freezed,Object? capital = freezed,Object? id = freezed,Object? status = freezed,Object? isOcode3 = freezed,Object? timeZoneId = freezed,Object? phoneNumberMaxLength = freezed,}) {
  return _then(_GetCountryList(
countryCode: freezed == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as dynamic,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,phonePrefix: freezed == phonePrefix ? _self.phonePrefix : phonePrefix // ignore: cast_nullable_to_non_nullable
as String?,flag: freezed == flag ? _self.flag : flag // ignore: cast_nullable_to_non_nullable
as String?,regex: freezed == regex ? _self.regex : regex // ignore: cast_nullable_to_non_nullable
as String?,isOcode2: freezed == isOcode2 ? _self.isOcode2 : isOcode2 // ignore: cast_nullable_to_non_nullable
as String?,capital: freezed == capital ? _self.capital : capital // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as dynamic,isOcode3: freezed == isOcode3 ? _self.isOcode3 : isOcode3 // ignore: cast_nullable_to_non_nullable
as String?,timeZoneId: freezed == timeZoneId ? _self.timeZoneId : timeZoneId // ignore: cast_nullable_to_non_nullable
as dynamic,phoneNumberMaxLength: freezed == phoneNumberMaxLength ? _self.phoneNumberMaxLength : phoneNumberMaxLength // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
