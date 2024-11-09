// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'net_quantity.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NetQuantity _$NetQuantityFromJson(Map<String, dynamic> json) => NetQuantity(
      measurementType: json['MeasurementType'] as String?,
      weightedInterval: json['WeightedInterval'] == null
          ? null
          : WeightedInterval.fromJson(
              json['WeightedInterval'] as Map<String, dynamic>),
      volumenInterval: json['VolumenInterval'] == null
          ? null
          : VolumenInterval.fromJson(
              json['VolumenInterval'] as Map<String, dynamic>),
      countInterval: json['CountInterval'] == null
          ? null
          : CountInterval.fromJson(
              json['CountInterval'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NetQuantityToJson(NetQuantity instance) =>
    <String, dynamic>{
      'MeasurementType': instance.measurementType,
      'WeightedInterval': instance.weightedInterval,
      'VolumenInterval': instance.volumenInterval,
      'CountInterval': instance.countInterval,
    };
