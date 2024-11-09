// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calories.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Calories _$CaloriesFromJson(Map<String, dynamic> json) => Calories(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CaloriesToJson(Calories instance) => <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };
