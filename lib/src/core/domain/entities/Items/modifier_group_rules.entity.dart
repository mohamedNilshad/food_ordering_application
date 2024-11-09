import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modifier_group_rules.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ModifierGroupRules extends Equatable {
  @JsonKey(name: 'IDs')
  final List<String>? iDs;
  final List<String>? overrides;

  const ModifierGroupRules({required this.iDs, required this.overrides});

  factory ModifierGroupRules.fromJson(Map<String, dynamic> json) => _$ModifierGroupRulesFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierGroupRulesToJson(this);

  @override
  List<Object?> get props =>[iDs, overrides];
}
