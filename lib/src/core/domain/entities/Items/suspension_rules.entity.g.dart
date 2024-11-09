// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suspension_rules.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuspensionRules _$SuspensionRulesFromJson(Map<String, dynamic> json) =>
    SuspensionRules(
      suspension: json['Suspension'] == null
          ? null
          : Suspension.fromJson(json['Suspension'] as Map<String, dynamic>),
      suspensionOverride: (json['SuspensionOverride'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$SuspensionRulesToJson(SuspensionRules instance) =>
    <String, dynamic>{
      'Suspension': instance.suspension,
      'SuspensionOverride': instance.suspensionOverride,
    };
