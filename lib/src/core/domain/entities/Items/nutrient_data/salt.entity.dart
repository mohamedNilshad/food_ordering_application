import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/amount.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'salt.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Salt extends Equatable {
  final Amount? amount;

  const Salt({required this.amount});

  factory Salt.fromJson(Map<String, dynamic> json) => _$SaltFromJson(json);

  Map<String, dynamic> toJson() => _$SaltToJson(this);

  @override
  List<Object?> get props =>[
    amount,
  ];
}
