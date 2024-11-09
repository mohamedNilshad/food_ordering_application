import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/amount.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'carbohydrates.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Carbohydrates extends Equatable {
  final Amount? amount;

  const Carbohydrates({
    required this.amount,
  });

  factory Carbohydrates.fromJson(Map<String, dynamic> json) => _$CarbohydratesFromJson(json);

  Map<String, dynamic> toJson() => _$CarbohydratesToJson(this);

  @override
  List<Object?> get props =>[
    amount,
  ];
}