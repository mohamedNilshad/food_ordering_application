import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/energy_interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'kilojules.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Kilojules extends Equatable {
  final EnergyInterval? energyInterval;
  final int? displayType;

  const Kilojules({
    required this.energyInterval,
    required this.displayType,
  });

  factory Kilojules.fromJson(Map<String, dynamic> json) => _$KilojulesFromJson(json);

  Map<String, dynamic> toJson() => _$KilojulesToJson(this);

  @override
  List<Object?> get props =>[
    energyInterval,
    displayType,
  ];
}