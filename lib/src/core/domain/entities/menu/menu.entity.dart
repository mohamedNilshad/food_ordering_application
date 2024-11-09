import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/menu/menu_availability.entity.dart';
import 'package:foa/src/core/domain/entities/menu/title.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Menu extends Equatable {
  @JsonKey(name: 'ID')
  final String? id;
  final String? menuID;
  final String? verticalID;
  final String? storeID;
  final Title? title;
  final String? subTitle;
  final String? description;
  final MenuAvailability? menuAvailability;
  final List<String>? menuCategoryIDs;
  final DateTime? createdDate;
  final DateTime? modifiedDate;
  final String? createdBy;
  final String? modifiedBy;

  const Menu({
    required this.id,
    required this.menuID,
    required this.verticalID,
    required this.storeID,
    required this.title,
    required this.subTitle,
    required this.description,
    required this.menuAvailability,
    required this.menuCategoryIDs,
    required this.createdDate,
    required this.modifiedDate,
    required this.createdBy,
    required this.modifiedBy,
  });

  factory Menu.fromJson(Map<String, dynamic> json) => _$MenuFromJson(json);

  Map<String, dynamic> toJson() => _$MenuToJson(this);

  @override
  List<Object?> get props =>[
    id,
    menuID,
    verticalID,
    storeID,
    title,
    subTitle,
    description,
    menuAvailability,
    menuCategoryIDs,
    createdDate,
    modifiedDate,
    createdBy,
    modifiedBy,
  ];
}
