// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'numberof_serving_intervals.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NumberofServingIntervals _$NumberofServingIntervalsFromJson(
        Map<String, dynamic> json) =>
    NumberofServingIntervals(
      lower: (json['Lower'] as num?)?.toInt(),
      upper: (json['Upper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$NumberofServingIntervalsToJson(
        NumberofServingIntervals instance) =>
    <String, dynamic>{
      'Lower': instance.lower,
      'Upper': instance.upper,
    };
