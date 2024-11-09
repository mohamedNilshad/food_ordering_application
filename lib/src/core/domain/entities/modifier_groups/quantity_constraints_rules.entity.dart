import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/quantity.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity_constraints_rules.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class QuantityConstraintsRules extends Equatable {
  final Quantity? quantity;
  final List<String>? overrides;

  const QuantityConstraintsRules({
    required this.quantity,
    required this.overrides,
  });

  factory QuantityConstraintsRules.fromJson(Map<String, dynamic> json) => _$QuantityConstraintsRulesFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityConstraintsRulesToJson(this);

  @override
  List<Object?> get props =>[
    quantity,
    overrides,
  ];
}