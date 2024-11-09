import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/amount.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sugar.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Sugar extends Equatable {
  final Amount? amount;

  const Sugar({
    required this.amount,
  });

  factory Sugar.fromJson(Map<String, dynamic> json) => _$SugarFromJson(json);

  Map<String, dynamic> toJson() => _$SugarToJson(this);

  @override
  List<Object?> get props =>[
    amount,
  ];
}