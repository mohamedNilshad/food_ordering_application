import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/weight.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/interval.entity.dart';

part 'amount.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Amount extends Equatable {
  final Interval? interval;
  final Weight? weight;

  const Amount({
    required this.interval,
    required this.weight,
  });

  factory Amount.fromJson(Map<String, dynamic> json) => _$AmountFromJson(json);

  Map<String, dynamic> toJson() => _$AmountToJson(this);

  @override
  List<Object?> get props =>[
    interval,
    weight,
  ];
}