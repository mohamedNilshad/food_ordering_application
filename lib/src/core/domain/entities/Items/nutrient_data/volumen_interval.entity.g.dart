// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'volumen_interval.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VolumenInterval _$VolumenIntervalFromJson(Map<String, dynamic> json) =>
    VolumenInterval(
      interval: json['Interval'] == null
          ? null
          : Interval.fromJson(json['Interval'] as Map<String, dynamic>),
      volume: json['Volume'] == null
          ? null
          : Volume.fromJson(json['Volume'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VolumenIntervalToJson(VolumenInterval instance) =>
    <String, dynamic>{
      'Interval': instance.interval,
      'Volume': instance.volume,
    };
