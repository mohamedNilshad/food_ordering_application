// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'kilojules.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Kilojules _$KilojulesFromJson(Map<String, dynamic> json) => Kilojules(
      energyInterval: json['EnergyInterval'] == null
          ? null
          : EnergyInterval.fromJson(
              json['EnergyInterval'] as Map<String, dynamic>),
      displayType: (json['DisplayType'] as num?)?.toInt(),
    );

Map<String, dynamic> _$KilojulesToJson(Kilojules instance) => <String, dynamic>{
      'EnergyInterval': instance.energyInterval,
      'DisplayType': instance.displayType,
    };
