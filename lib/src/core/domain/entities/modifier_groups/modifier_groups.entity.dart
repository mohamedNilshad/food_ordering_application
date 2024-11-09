import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/meta_data.entity.dart';
import 'package:foa/src/core/domain/entities/menu/description.entity.dart';
import 'package:foa/src/core/domain/entities/menu/title.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_options.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/quantity_constraints_rules.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modifier_groups.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ModifierGroups extends Equatable {
  @JsonKey(name: 'ID')
  final String? id;
  final String? modifierGroupID;
  final Title? title;
  final Description? description;
  final String? storeID;
  final String? displayType;
  final List<ModifierOptions>? modifierOptions;
  final QuantityConstraintsRules? quantityConstraintsRules;
  final DateTime? createdDate;
  final DateTime? modifiedDate;
  final MetaData? metaData;

  const ModifierGroups({
    required this.id,
    required this.modifierGroupID,
    required this.title,
    required this.description,
    required this.storeID,
    required this.displayType,
    required this.modifierOptions,
    required this.quantityConstraintsRules,
    required this.createdDate,
    required this.modifiedDate,
    required this.metaData,
  });

  factory ModifierGroups.fromJson(Map<String, dynamic> json) => _$ModifierGroupsFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierGroupsToJson(this);

  @override
  List<Object?> get props =>[
    id,
    modifierGroupID,
    title,
    description,
    storeID,
    displayType,
    modifierOptions,
    quantityConstraintsRules,
    createdDate,
    modifiedDate,
    metaData,
  ];
}