// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Reward _$RewardFromJson(Map<String, dynamic> json) => Reward(
      type: json['Type'] as String?,
      defaultValue: (json['DefaultValue'] as num?)?.toInt(),
      multiplierValue: (json['MultiplierValue'] as num?)?.toInt(),
      customValue: (json['CustomValue'] as num?)?.toInt(),
      isMutiplierRequired: json['IsMutiplierRequired'] as bool?,
    );

Map<String, dynamic> _$RewardToJson(Reward instance) => <String, dynamic>{
      'Type': instance.type,
      'DefaultValue': instance.defaultValue,
      'MultiplierValue': instance.multiplierValue,
      'CustomValue': instance.customValue,
      'IsMutiplierRequired': instance.isMutiplierRequired,
    };
