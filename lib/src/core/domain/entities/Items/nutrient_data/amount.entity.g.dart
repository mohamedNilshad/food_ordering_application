// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Amount _$AmountFromJson(Map<String, dynamic> json) => Amount(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      weight: json['Weight'] == null
          ? null
          : Weight.fromJson(json['Weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AmountToJson(Amount instance) => <String, dynamic>{
      'Interval': instance.interval,
      'Weight': instance.weight,
    };
