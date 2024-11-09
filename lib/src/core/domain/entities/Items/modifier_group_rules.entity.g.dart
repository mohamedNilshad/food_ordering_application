// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_group_rules.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierGroupRules _$ModifierGroupRulesFromJson(Map<String, dynamic> json) =>
    ModifierGroupRules(
      iDs: (json['IDs'] as List<dynamic>?)?.map((e) => e as String).toList(),
      overrides: (json['Overrides'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$ModifierGroupRulesToJson(ModifierGroupRules instance) =>
    <String, dynamic>{
      'IDs': instance.iDs,
      'Overrides': instance.overrides,
    };
