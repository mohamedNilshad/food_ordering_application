import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/suspension.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suspension_rules.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class SuspensionRules extends Equatable {
  final Suspension? suspension;
  final List<String>? suspensionOverride;

  const SuspensionRules({
    required this.suspension,
    required this.suspensionOverride,
  });

  factory SuspensionRules.fromJson(Map<String, dynamic> json) => _$SuspensionRulesFromJson(json);

  Map<String, dynamic> toJson() => _$SuspensionRulesToJson(this);

  @override
  List<Object?> get props =>[
    suspension,
    suspensionOverride,
  ];
}
