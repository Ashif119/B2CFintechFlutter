// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_balance.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GetBalance _$GetBalanceFromJson(Map<String, dynamic> json) => _GetBalance(
  masterwallet: (json['masterwallet'] as List<dynamic>?)
      ?.map((e) => Masterwallet.fromJson(e as Map<String, dynamic>))
      .toList(),
  userbalance: json['userbalance'] == null
      ? null
      : Userbalance.fromJson(json['userbalance'] as Map<String, dynamic>),
);

Map<String, dynamic> _$GetBalanceToJson(_GetBalance instance) =>
    <String, dynamic>{
      'masterwallet': instance.masterwallet,
      'userbalance': instance.userbalance,
    };

_Userbalance _$UserbalanceFromJson(Map<String, dynamic> json) => _Userbalance(
  id: (json['id'] as num?)?.toInt(),
  userId: (json['userId'] as num?)?.toInt(),
  amount: (json['amount'] as num?)?.toDouble(),
  lien: (json['lien'] as num?)?.toDouble(),
  modifyAt: json['modifyAt'] as String?,
);

Map<String, dynamic> _$UserbalanceToJson(_Userbalance instance) =>
    <String, dynamic>{
      'id': instance.id,
      'userId': instance.userId,
      'amount': instance.amount,
      'lien': instance.lien,
      'modifyAt': instance.modifyAt,
    };

_Masterwallet _$MasterwalletFromJson(Map<String, dynamic> json) =>
    _Masterwallet(
      id: (json['id'] as num?)?.toInt(),
      walletType: json['walletType'] as String?,
      remark: json['remark'] as String?,
      status: json['status'] as bool?,
      inFundProcess: json['inFundProcess'] as bool?,
    );

Map<String, dynamic> _$MasterwalletToJson(_Masterwallet instance) =>
    <String, dynamic>{
      'id': instance.id,
      'walletType': instance.walletType,
      'remark': instance.remark,
      'status': instance.status,
      'inFundProcess': instance.inFundProcess,
    };
