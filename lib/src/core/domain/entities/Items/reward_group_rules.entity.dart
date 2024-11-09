import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/reward.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward_group_rules.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class RewardGroupRules extends Equatable {
  final Reward? reward;
  final List<String>? overrides;

  const RewardGroupRules({
    required this.reward,
    required this.overrides,
  });

  factory RewardGroupRules.fromJson(Map<String, dynamic> json) => _$RewardGroupRulesFromJson(json);

  Map<String, dynamic> toJson() => _$RewardGroupRulesToJson(this);

  @override
  List<Object?> get props =>[reward, overrides];
}
