import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/amount.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'saturated_fatty_acids.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class SaturatedFattyAcids extends Equatable {
  final Amount? amount;

  const SaturatedFattyAcids({
    required this.amount,
  });

  factory SaturatedFattyAcids.fromJson(Map<String, dynamic> json) => _$SaturatedFattyAcidsFromJson(json);

  Map<String, dynamic> toJson() => _$SaturatedFattyAcidsToJson(this);

  @override
  List<Object?> get props =>[
    amount,
  ];
}