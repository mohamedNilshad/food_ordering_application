// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fat.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fat _$FatFromJson(Map<String, dynamic> json) => Fat(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FatToJson(Fat instance) => <String, dynamic>{
      'Amount': instance.amount,
    };
