import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/energy_interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kilojulesper_serving.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class KilojulesperServing extends Equatable {
  final EnergyInterval? energyInterval;
  final int? displayType;

  const KilojulesperServing({
    required this.energyInterval,
    required this.displayType,
  });

  factory KilojulesperServing.fromJson(Map<String, dynamic> json) => _$KilojulesperServingFromJson(json);

  Map<String, dynamic> toJson() => _$KilojulesperServingToJson(this);

  @override
  List<Object?> get props =>[
    energyInterval,
    displayType,
  ];
}