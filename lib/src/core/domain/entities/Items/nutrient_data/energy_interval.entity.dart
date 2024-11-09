import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'energy_interval.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class EnergyInterval extends Equatable {
  final int? lower;
  final int? upper;

  const EnergyInterval({
    required this.lower,
    required this.upper,
  });

  factory EnergyInterval.fromJson(Map<String, dynamic> json) => _$EnergyIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$EnergyIntervalToJson(this);

  @override
  List<Object?> get props =>[
    lower,
    upper,
  ];
}