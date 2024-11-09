// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kilojulesper_serving.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KilojulesperServing _$KilojulesperServingFromJson(Map<String, dynamic> json) =>
    KilojulesperServing(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$KilojulesperServingToJson(
        KilojulesperServing instance) =>
    <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };
