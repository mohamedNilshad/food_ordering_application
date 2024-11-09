// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'energy_interval.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnergyInterval _$EnergyIntervalFromJson(Map<String, dynamic> json) =>
    EnergyInterval(
      lower: (json['Lower'] as num?)?.toInt(),
      upper: (json['Upper'] as num?)?.toInt(),
    );

Map<String, dynamic> _$EnergyIntervalToJson(EnergyInterval instance) =>
    <String, dynamic>{
      'Lower': instance.lower,
      'Upper': instance.upper,
    };
