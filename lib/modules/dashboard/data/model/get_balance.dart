import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_balance.freezed.dart';
part 'get_balance.g.dart';

@freezed
abstract class GetBalance with _$GetBalance {
  const factory GetBalance({
    @JsonKey(name: 'masterwallet') List<Masterwallet>? masterwallet,
    @JsonKey(name: 'userbalance') Userbalance? userbalance,
  }) = _GetBalance;

  factory GetBalance.fromJson(Map<String, Object?> json) => _$GetBalanceFromJson(json);
}

@freezed
abstract class Userbalance with _$Userbalance {
  const factory Userbalance({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'userId') int? userId,
    @JsonKey(name: 'amount') double? amount,
    @JsonKey(name: 'lien') double? lien,
    @JsonKey(name: 'modifyAt') String? modifyAt,
  }) = _Userbalance;

  factory Userbalance.fromJson(Map<String, Object?> json) => _$UserbalanceFromJson(json);
}

@freezed
abstract class Masterwallet with _$Masterwallet {
  const factory Masterwallet({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'walletType') String? walletType,
    @JsonKey(name: 'remark') String? remark,
    @JsonKey(name: 'status') bool? status,
    @JsonKey(name: 'inFundProcess') bool? inFundProcess,
  }) = _Masterwallet;

  factory Masterwallet.fromJson(Map<String, Object?> json) => _$MasterwalletFromJson(json);
}

