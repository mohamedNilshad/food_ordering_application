// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interval _$IntervalFromJson(Map<String, dynamic> json) => Interval(
      lower: (json['Lower'] as num?)?.toInt(),
      upper: (json['Upper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'Lower': instance.lower,
      'Upper': instance.upper,
    };
