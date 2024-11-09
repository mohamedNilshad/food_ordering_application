import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/calories.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/caloriesper_serving.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/carbohydrates.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/fat.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/kilojules.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/kilojulesper_serving.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/net_quantity.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/numberof_serving_intervals.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/protein.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/salt.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/saturated_fatty_acids.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/serving_size.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/sugar.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'nutrient_data.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class NutrientData extends Equatable {
  final Calories? calories;
  @JsonKey(name: 'Kilojules')
  final Kilojules? kiloJules;
  final ServingSize? servingSize;
  @JsonKey(name: 'NumberofServings')
  final int? numberOfServings;
  @JsonKey(name: 'NumberofServingIntervals')
  final NumberofServingIntervals? numberOfServingIntervals;
  final NetQuantity? netQuantity;
  @JsonKey(name: 'CaloriesperServing')
  final CaloriesperServing? caloriesPerServing;
  @JsonKey(name: 'KilojulesperServing')
  final KilojulesperServing? kiloJulesPerServing;
  final Fat? fat;
  final SaturatedFattyAcids? saturatedFattyAcids;
  final Carbohydrates? carbohydrates;
  final Sugar? sugar;
  final Protein? protein;
  final Salt? salt;


  const NutrientData({
    required this.calories,
    required this.kiloJules,
    required this.servingSize,
    required this.numberOfServings,
    required this.numberOfServingIntervals,
    required this.netQuantity,
    required this.caloriesPerServing,
    required this.kiloJulesPerServing,
    required this.fat,
    required this.saturatedFattyAcids,
    required this.carbohydrates,
    required this.sugar,
    required this.protein,
    required this.salt,
  });

  factory NutrientData.fromJson(Map<String, dynamic> json) => _$NutrientDataFromJson(json);

  Map<String, dynamic> toJson() => _$NutrientDataToJson(this);

  @override
  List<Object?> get props =>[
    calories,
    kiloJules,
    servingSize,
    numberOfServings,
    numberOfServingIntervals,
    netQuantity,
    caloriesPerServing,
    kiloJulesPerServing,
    fat,
    saturatedFattyAcids,
    carbohydrates,
    sugar,
    protein,
    salt,
  ];
}
