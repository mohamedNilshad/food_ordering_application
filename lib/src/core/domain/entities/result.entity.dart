import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/menu_item.entity.dart';
import 'package:foa/src/core/domain/entities/category/category.entity.dart';
import 'package:foa/src/core/domain/entities/menu/menu.entity.dart';
import 'package:foa/src/core/domain/entities/modifier_groups/modifier_groups.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Result extends Equatable {
  final List<Menu>? menu;
  final List<Category>? categories;
  final List<MenuItem>? items;
  final List<ModifierGroups>? modifierGroups;

  const Result({
    required this.menu,
    required this.categories,
    required this.items,
    required this.modifierGroups,
  });

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);

  Map<String, dynamic> toJson() => _$ResultToJson(this);

  @override
  List<Object?> get props =>[
    menu,
    categories,
    items,
    modifierGroups,
  ];
}