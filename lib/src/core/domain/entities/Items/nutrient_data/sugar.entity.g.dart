// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sugar.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Sugar _$SugarFromJson(Map<String, dynamic> json) => Sugar(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SugarToJson(Sugar instance) => <String, dynamic>{
      'Amount': instance.amount,
    };
