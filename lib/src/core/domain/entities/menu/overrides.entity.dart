import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/quantity.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'overrides.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Overrides extends Equatable {
  final String? contextType;
  final String? contextValue;
  final Quantity? quantity;

  const Overrides({
    required this.contextType,
    required this.contextValue,
    required this.quantity,
  });

  factory Overrides.fromJson(Map<String, dynamic> json) => _$OverridesFromJson(json);

  Map<String, dynamic> toJson() => _$OverridesToJson(this);

  @override
  List<Object?> get props =>[
    contextType,
    contextValue,
    quantity,
  ];
}