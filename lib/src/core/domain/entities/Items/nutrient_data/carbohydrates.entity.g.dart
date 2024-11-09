// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'carbohydrates.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Carbohydrates _$CarbohydratesFromJson(Map<String, dynamic> json) =>
    Carbohydrates(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CarbohydratesToJson(Carbohydrates instance) =>
    <String, dynamic>{
      'Amount': instance.amount,
    };
