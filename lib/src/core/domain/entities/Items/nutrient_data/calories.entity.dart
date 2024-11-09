import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/energy_interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'calories.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Calories extends Equatable {
  final EnergyInterval? energyInterval;
  final int? displayType;

  const Calories({
    required this.energyInterval,
    required this.displayType,
  });

  factory Calories.fromJson(Map<String, dynamic> json) => _$CaloriesFromJson(json);

  Map<String, dynamic> toJson() => _$CaloriesToJson(this);

  @override
  List<Object?> get props =>[
    energyInterval,
    displayType,
  ];
}