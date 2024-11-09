// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saturated_fatty_acids.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SaturatedFattyAcids _$SaturatedFattyAcidsFromJson(Map<String, dynamic> json) =>
    SaturatedFattyAcids(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SaturatedFattyAcidsToJson(
        SaturatedFattyAcids instance) =>
    <String, dynamic>{
      'Amount': instance.amount,
    };
