import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/amount.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fat.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Fat extends Equatable {
  final Amount? amount;

  const Fat({
    required this.amount,
  });

  factory Fat.fromJson(Map<String, dynamic> json) => _$FatFromJson(json);

  Map<String, dynamic> toJson() => _$FatToJson(this);

  @override
  List<Object?> get props =>[
    amount,
  ];
}