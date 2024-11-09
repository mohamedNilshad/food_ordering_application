import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/weight.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weighted_interval.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class WeightedInterval extends Equatable {
  final Interval? interval;
  final Weight? weight;

  const WeightedInterval({
    required this.interval,
    required this.weight,
  });

  factory WeightedInterval.fromJson(Map<String, dynamic> json) => _$WeightedIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$WeightedIntervalToJson(this);

  @override
  List<Object?> get props =>[
    interval,
    weight,
  ];
}