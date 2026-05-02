// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'website_app.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WebsiteApp {

@JsonKey(name: 'id') int? get id;@JsonKey(name: 'wid') int? get wid;@JsonKey(name: 'appId') int? get appId;@JsonKey(name: 'appName') String? get appName;@JsonKey(name: 'isActive') bool? get isActive;
/// Create a copy of WebsiteApp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WebsiteAppCopyWith<WebsiteApp> get copyWith => _$WebsiteAppCopyWithImpl<WebsiteApp>(this as WebsiteApp, _$identity);

  /// Serializes this WebsiteApp to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WebsiteApp&&(identical(other.id, id) || other.id == id)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,wid,appId,appName,isActive);

@override
String toString() {
  return 'WebsiteApp(id: $id, wid: $wid, appId: $appId, appName: $appName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class $WebsiteAppCopyWith<$Res>  {
  factory $WebsiteAppCopyWith(WebsiteApp value, $Res Function(WebsiteApp) _then) = _$WebsiteAppCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'appId') int? appId,@JsonKey(name: 'appName') String? appName,@JsonKey(name: 'isActive') bool? isActive
});




}
/// @nodoc
class _$WebsiteAppCopyWithImpl<$Res>
    implements $WebsiteAppCopyWith<$Res> {
  _$WebsiteAppCopyWithImpl(this._self, this._then);

  final WebsiteApp _self;
  final $Res Function(WebsiteApp) _then;

/// Create a copy of WebsiteApp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? wid = freezed,Object? appId = freezed,Object? appName = freezed,Object? isActive = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [WebsiteApp].
extension WebsiteAppPatterns on WebsiteApp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WebsiteApp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WebsiteApp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WebsiteApp value)  $default,){
final _that = this;
switch (_that) {
case _WebsiteApp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WebsiteApp value)?  $default,){
final _that = this;
switch (_that) {
case _WebsiteApp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'appId')  int? appId, @JsonKey(name: 'appName')  String? appName, @JsonKey(name: 'isActive')  bool? isActive)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WebsiteApp() when $default != null:
return $default(_that.id,_that.wid,_that.appId,_that.appName,_that.isActive);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'appId')  int? appId, @JsonKey(name: 'appName')  String? appName, @JsonKey(name: 'isActive')  bool? isActive)  $default,) {final _that = this;
switch (_that) {
case _WebsiteApp():
return $default(_that.id,_that.wid,_that.appId,_that.appName,_that.isActive);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'id')  int? id, @JsonKey(name: 'wid')  int? wid, @JsonKey(name: 'appId')  int? appId, @JsonKey(name: 'appName')  String? appName, @JsonKey(name: 'isActive')  bool? isActive)?  $default,) {final _that = this;
switch (_that) {
case _WebsiteApp() when $default != null:
return $default(_that.id,_that.wid,_that.appId,_that.appName,_that.isActive);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WebsiteApp implements WebsiteApp {
  const _WebsiteApp({@JsonKey(name: 'id') this.id, @JsonKey(name: 'wid') this.wid, @JsonKey(name: 'appId') this.appId, @JsonKey(name: 'appName') this.appName, @JsonKey(name: 'isActive') this.isActive});
  factory _WebsiteApp.fromJson(Map<String, dynamic> json) => _$WebsiteAppFromJson(json);

@override@JsonKey(name: 'id') final  int? id;
@override@JsonKey(name: 'wid') final  int? wid;
@override@JsonKey(name: 'appId') final  int? appId;
@override@JsonKey(name: 'appName') final  String? appName;
@override@JsonKey(name: 'isActive') final  bool? isActive;

/// Create a copy of WebsiteApp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WebsiteAppCopyWith<_WebsiteApp> get copyWith => __$WebsiteAppCopyWithImpl<_WebsiteApp>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WebsiteAppToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WebsiteApp&&(identical(other.id, id) || other.id == id)&&(identical(other.wid, wid) || other.wid == wid)&&(identical(other.appId, appId) || other.appId == appId)&&(identical(other.appName, appName) || other.appName == appName)&&(identical(other.isActive, isActive) || other.isActive == isActive));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,wid,appId,appName,isActive);

@override
String toString() {
  return 'WebsiteApp(id: $id, wid: $wid, appId: $appId, appName: $appName, isActive: $isActive)';
}


}

/// @nodoc
abstract mixin class _$WebsiteAppCopyWith<$Res> implements $WebsiteAppCopyWith<$Res> {
  factory _$WebsiteAppCopyWith(_WebsiteApp value, $Res Function(_WebsiteApp) _then) = __$WebsiteAppCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'id') int? id,@JsonKey(name: 'wid') int? wid,@JsonKey(name: 'appId') int? appId,@JsonKey(name: 'appName') String? appName,@JsonKey(name: 'isActive') bool? isActive
});




}
/// @nodoc
class __$WebsiteAppCopyWithImpl<$Res>
    implements _$WebsiteAppCopyWith<$Res> {
  __$WebsiteAppCopyWithImpl(this._self, this._then);

  final _WebsiteApp _self;
  final $Res Function(_WebsiteApp) _then;

/// Create a copy of WebsiteApp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? wid = freezed,Object? appId = freezed,Object? appName = freezed,Object? isActive = freezed,}) {
  return _then(_WebsiteApp(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,wid: freezed == wid ? _self.wid : wid // ignore: cast_nullable_to_non_nullable
as int?,appId: freezed == appId ? _self.appId : appId // ignore: cast_nullable_to_non_nullable
as int?,appName: freezed == appName ? _self.appName : appName // ignore: cast_nullable_to_non_nullable
as String?,isActive: freezed == isActive ? _self.isActive : isActive // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on
