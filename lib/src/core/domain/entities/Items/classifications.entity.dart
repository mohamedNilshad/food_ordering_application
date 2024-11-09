import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/fool_business_operator.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'classifications.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Classifications extends Equatable {
  final bool? canServeAlone;
  final bool? isVegetarian;
  final int? alcoholicItem;
  final List<dynamic>? dietaryLabelInfo;
  final String? instructionsForUse;
  final List<dynamic>? ingredients;
  final List<dynamic>? additives;
  final String? preparationType;
  final FoolBusinessOperator? foolBusinessOperator;
  final bool? isHighFatSaltSugar;
  final bool? isHalal;
  final int? spiceLevel;


  const Classifications({
    required this.canServeAlone,
    required this.isVegetarian,
    required this.alcoholicItem,
    required this.dietaryLabelInfo,
    required this.instructionsForUse,
    required this.ingredients,
    required this.additives,
    required this.preparationType,
    required this.foolBusinessOperator,
    required this.isHighFatSaltSugar,
    required this.isHalal,
    required this.spiceLevel,
  });

  factory Classifications.fromJson(Map<String, dynamic> json) => _$ClassificationsFromJson(json);

  Map<String, dynamic> toJson() => _$ClassificationsToJson(this);

  @override
  List<Object?> get props =>[
    canServeAlone,
    isVegetarian,
    alcoholicItem,
    dietaryLabelInfo,
    instructionsForUse,
    ingredients,
    additives,
    preparationType,
    foolBusinessOperator,
    isHighFatSaltSugar,
    isHalal,
    spiceLevel,
  ];
}
