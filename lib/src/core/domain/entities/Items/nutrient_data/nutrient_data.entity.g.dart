// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'nutrient_data.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NutrientData _$NutrientDataFromJson(Map<String, dynamic> json) => NutrientData(
      calories: json['Calories'] == null
          ? null
          : Calories.fromJson(json['Calories'] as Map<String, dynamic>),
      kiloJules: json['Kilojules'] == null
          ? null
          : Kilojules.fromJson(json['Kilojules'] as Map<String, dynamic>),
      servingSize: json['ServingSize'] == null
          ? null
          : ServingSize.fromJson(json['ServingSize'] as Map<String, dynamic>),
      numberOfServings: (json['NumberofServings'] as num?)?.toInt(),
      numberOfServingIntervals: json['NumberofServingIntervals'] == null
          ? null
          : NumberofServingIntervals.fromJson(
              json['NumberofServingIntervals'] as Map<String, dynamic>),
      netQuantity: json['NetQuantity'] == null
          ? null
          : NetQuantity.fromJson(json['NetQuantity'] as Map<String, dynamic>),
      caloriesPerServing: json['CaloriesperServing'] == null
          ? null
          : CaloriesperServing.fromJson(
              json['CaloriesperServing'] as Map<String, dynamic>),
      kiloJulesPerServing: json['KilojulesperServing'] == null
          ? null
          : KilojulesperServing.fromJson(
              json['KilojulesperServing'] as Map<String, dynamic>),
      fat: json['Fat'] == null
          ? null
          : Fat.fromJson(json['Fat'] as Map<String, dynamic>),
      saturatedFattyAcids: json['SaturatedFattyAcids'] == null
          ? null
          : SaturatedFattyAcids.fromJson(
              json['SaturatedFattyAcids'] as Map<String, dynamic>),
      carbohydrates: json['Carbohydrates'] == null
          ? null
          : Carbohydrates.fromJson(
              json['Carbohydrates'] as Map<String, dynamic>),
      sugar: json['Sugar'] == null
          ? null
          : Sugar.fromJson(json['Sugar'] as Map<String, dynamic>),
      protein: json['Protein'] == null
          ? null
          : Protein.fromJson(json['Protein'] as Map<String, dynamic>),
      salt: json['Salt'] == null
          ? null
          : Salt.fromJson(json['Salt'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NutrientDataToJson(NutrientData instance) =>
    <String, dynamic>{
      'Calories': instance.calories,
      'Kilojules': instance.kiloJules,
      'ServingSize': instance.servingSize,
      'NumberofServings': instance.numberOfServings,
      'NumberofServingIntervals': instance.numberOfServingIntervals,
      'NetQuantity': instance.netQuantity,
      'CaloriesperServing': instance.caloriesPerServing,
      'KilojulesperServing': instance.kiloJulesPerServing,
      'Fat': instance.fat,
      'SaturatedFattyAcids': instance.saturatedFattyAcids,
      'Carbohydrates': instance.carbohydrates,
      'Sugar': instance.sugar,
      'Protein': instance.protein,
      'Salt': instance.salt,
    };
