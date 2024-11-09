import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/count_interval.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/volumen_interval.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/weighted_interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'serving_size.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ServingSize extends Equatable {
  final String? measurementType;
  final WeightedInterval? weightedInterval;
  final VolumenInterval? volumenInterval;
  final CountInterval? countInterval;

  const ServingSize({
    required this.measurementType,
    required this.weightedInterval,
    required this.volumenInterval,
    required this.countInterval,
  });

  factory ServingSize.fromJson(Map<String, dynamic> json) => _$ServingSizeFromJson(json);

  Map<String, dynamic> toJson() => _$ServingSizeToJson(this);

  @override
  List<Object?> get props =>[
    measurementType,
    weightedInterval,
    volumenInterval,
    countInterval,
  ];
}