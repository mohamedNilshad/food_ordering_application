import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/energy_interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'caloriesper_serving.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CaloriesperServing extends Equatable {
  final EnergyInterval? energyInterval;
  final int? displayType;

  const CaloriesperServing({
    required this.energyInterval,
    required this.displayType,
  });

  factory CaloriesperServing.fromJson(Map<String, dynamic> json) => _$CaloriesperServingFromJson(json);

  Map<String, dynamic> toJson() => _$CaloriesperServingToJson(this);

  @override
  List<Object?> get props =>[
    energyInterval,
    displayType,
  ];
}