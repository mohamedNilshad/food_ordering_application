// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salt.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Salt _$SaltFromJson(Map<String, dynamic> json) => Salt(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaltToJson(Salt instance) => <String, dynamic>{
      'Amount': instance.amount,
    };
