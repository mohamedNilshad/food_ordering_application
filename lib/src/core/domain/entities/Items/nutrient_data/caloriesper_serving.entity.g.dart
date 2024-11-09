// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caloriesper_serving.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CaloriesperServing _$CaloriesperServingFromJson(Map<String, dynamic> json) =>
    CaloriesperServing(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CaloriesperServingToJson(CaloriesperServing instance) =>
    <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };
