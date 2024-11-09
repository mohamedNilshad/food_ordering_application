// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'overrides.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Overrides _$OverridesFromJson(Map<String, dynamic> json) => Overrides(
      contextType: json['ContextType'] as String?,
      contextValue: json['ContextValue'] as String?,
      quantity: json['Quantity'] == null
          ? null
          : Quantity.fromJson(json['Quantity'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OverridesToJson(Overrides instance) => <String, dynamic>{
      'ContextType': instance.contextType,
      'ContextValue': instance.contextValue,
      'Quantity': instance.quantity,
    };
