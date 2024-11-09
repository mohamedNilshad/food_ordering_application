// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weighted_interval.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeightedInterval _$WeightedIntervalFromJson(Map<String, dynamic> json) =>
    WeightedInterval(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      weight: json['Weight'] == null
          ? null
          : Weight.fromJson(json['Weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeightedIntervalToJson(WeightedInterval instance) =>
    <String, dynamic>{
      'Interval': instance.interval,
      'Weight': instance.weight,
    };
