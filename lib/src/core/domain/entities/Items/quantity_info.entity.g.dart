// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuantityInfo _$QuantityInfoFromJson(Map<String, dynamic> json) => QuantityInfo(
      quantity: json['Quantity'] == null
          ? null
          : Quantity.fromJson(json['Quantity'] as Map<String, dynamic>),
      overrides: (json['Overrides'] as List<dynamic>?)
          ?.map((e) => Overrides.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$QuantityInfoToJson(QuantityInfo instance) =>
    <String, dynamic>{
      'Quantity': instance.quantity,
      'Overrides': instance.overrides,
    };
