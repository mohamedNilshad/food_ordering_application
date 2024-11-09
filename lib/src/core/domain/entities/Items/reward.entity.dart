import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reward.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Reward extends Equatable {
  final String? type;
  final int? defaultValue;
  final int? multiplierValue;
  final int? customValue;
  final bool? isMutiplierRequired;

  const Reward({
    required this.type,
    required this.defaultValue,
    required this.multiplierValue,
    required this.customValue,
    required this.isMutiplierRequired,
  });

  factory Reward.fromJson(Map<String, dynamic> json) => _$RewardFromJson(json);

  Map<String, dynamic> toJson() => _$RewardToJson(this);

  @override
  List<Object?> get props =>[
    type,
    defaultValue,
    multiplierValue,
    customValue,
    isMutiplierRequired,];
}
