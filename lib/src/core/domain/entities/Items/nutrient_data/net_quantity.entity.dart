import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/count_interval.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/volumen_interval.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/weighted_interval.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'net_quantity.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class NetQuantity extends Equatable {
  final String? measurementType;
  final WeightedInterval? weightedInterval;
  final VolumenInterval? volumenInterval;
  final CountInterval? countInterval;

  const NetQuantity({
    required this.measurementType,
    required this.weightedInterval,
    required this.volumenInterval,
    required this.countInterval,
  });

  factory NetQuantity.fromJson(Map<String, dynamic> json) => _$NetQuantityFromJson(json);

  Map<String, dynamic> toJson() => _$NetQuantityToJson(this);

  @override
  List<Object?> get props =>[
    measurementType,
    weightedInterval,
    volumenInterval,
    countInterval,
  ];
}