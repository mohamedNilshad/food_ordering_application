// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reward_group_rules.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RewardGroupRules _$RewardGroupRulesFromJson(Map<String, dynamic> json) =>
    RewardGroupRules(
      reward: json['Reward'] == null
          ? null
          : Reward.fromJson(json['Reward'] as Map<String, dynamic>),
      overrides: (json['Overrides'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$RewardGroupRulesToJson(RewardGroupRules instance) =>
    <String, dynamic>{
      'Reward': instance.reward,
      'Overrides': instance.overrides,
    };
