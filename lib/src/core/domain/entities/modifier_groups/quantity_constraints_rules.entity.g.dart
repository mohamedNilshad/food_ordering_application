// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_constraints_rules.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuantityConstraintsRules _$QuantityConstraintsRulesFromJson(
        Map<String, dynamic> json) =>
    QuantityConstraintsRules(
      quantity: json['Quantity'] == null
          ? null
          : Quantity.fromJson(json['Quantity'] as Map<String, dynamic>),
      overrides: (json['Overrides'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$QuantityConstraintsRulesToJson(
        QuantityConstraintsRules instance) =>
    <String, dynamic>{
      'Quantity': instance.quantity,
      'Overrides': instance.overrides,
    };
