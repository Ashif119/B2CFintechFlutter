import 'package:freezed_annotation/freezed_annotation.dart';

part 'base_res.freezed.dart';
part 'base_res.g.dart';

@Freezed(genericArgumentFactories: true)
abstract class BaseDataRes<T> with _$BaseDataRes<T> {
  const factory BaseDataRes({
    @JsonKey(name: 'statusCode') int? statusCode,
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'responseText') String? message,
    @JsonKey(name: 'result') T? data,
  }) = _BaseDataRes<T>;

  factory BaseDataRes.fromJson(
      Map<String, dynamic> json,
      T Function(Object? json) fromJsonT,
      ) =>
      _$BaseDataResFromJson(json, fromJsonT);
}
@freezed
abstract class BaseRes with _$BaseRes {
  const factory BaseRes({
    @JsonKey(name: 'statusCode') int? statusCode,
    @JsonKey(name: 'success') bool? success,
    @JsonKey(name: 'responseText') String? message,

  }) = _BaseRes;

  factory BaseRes.fromJson(Map<String, Object?> json) => _$BaseResFromJson(json);
}
