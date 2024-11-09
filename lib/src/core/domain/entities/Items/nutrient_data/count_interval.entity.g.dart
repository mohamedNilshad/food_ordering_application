// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_interval.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CountInterval _$CountIntervalFromJson(Map<String, dynamic> json) =>
    CountInterval(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      count: json['Count'] == null
          ? null
          : Count.fromJson(json['Count'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CountIntervalToJson(CountInterval instance) =>
    <String, dynamic>{
      'Interval': instance.interval,
      'Count': instance.count,
    };
