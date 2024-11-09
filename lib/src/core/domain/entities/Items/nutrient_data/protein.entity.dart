import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/amount.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'protein.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Protein extends Equatable {
  final Amount? amount;

  const Protein({
    required this.amount,
  });

  factory Protein.fromJson(Map<String, dynamic> json) => _$ProteinFromJson(json);

  Map<String, dynamic> toJson() => _$ProteinToJson(this);

  @override
  List<Object?> get props =>[
    amount,
  ];
}