// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classifications.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Classifications _$ClassificationsFromJson(Map<String, dynamic> json) =>
    Classifications(
      canServeAlone: json['CanServeAlone'] as bool?,
      isVegetarian: json['IsVegetarian'] as bool?,
      alcoholicItem: (json['AlcoholicItem'] as num?)?.toInt(),
      dietaryLabelInfo: json['DietaryLabelInfo'] as List<dynamic>?,
      instructionsForUse: json['InstructionsForUse'] as String?,
      ingredients: json['Ingredients'] as List<dynamic>?,
      additives: json['Additives'] as List<dynamic>?,
      preparationType: json['PreparationType'] as String?,
      foolBusinessOperator: json['FoolBusinessOperator'] == null
          ? null
          : FoolBusinessOperator.fromJson(
              json['FoolBusinessOperator'] as Map<String, dynamic>),
      isHighFatSaltSugar: json['IsHighFatSaltSugar'] as bool?,
      isHalal: json['IsHalal'] as bool?,
      spiceLevel: (json['SpiceLevel'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ClassificationsToJson(Classifications instance) =>
    <String, dynamic>{
      'CanServeAlone': instance.canServeAlone,
      'IsVegetarian': instance.isVegetarian,
      'AlcoholicItem': instance.alcoholicItem,
      'DietaryLabelInfo': instance.dietaryLabelInfo,
      'InstructionsForUse': instance.instructionsForUse,
      'Ingredients': instance.ingredients,
      'Additives': instance.additives,
      'PreparationType': instance.preparationType,
      'FoolBusinessOperator': instance.foolBusinessOperator,
      'IsHighFatSaltSugar': instance.isHighFatSaltSugar,
      'IsHalal': instance.isHalal,
      'SpiceLevel': instance.spiceLevel,
    };
