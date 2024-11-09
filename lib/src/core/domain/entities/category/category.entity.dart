import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/category/menu_entities.entity.dart';
import 'package:foa/src/core/domain/entities/menu/subtitle.entity.dart';
import 'package:foa/src/core/domain/entities/menu/title.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Category extends Equatable {
  @JsonKey(name: 'ID')
  final String? id;
  final String? menuCategoryID;
  final String? menuID;
  final String? storeID;
  final Title? title;
  final SubTitle? subTitle;
  final List<MenuEntities>? menuEntities;
  final DateTime? createdDate;
  final DateTime? modifiedDate;
  final String? createdBy;
  final String? modifiedBy;

  const Category({
    required this.id,
    required this.menuCategoryID,
    required this.menuID,
    required this.storeID,
    required this.title,
    required this.subTitle,
    required this.menuEntities,
    required this.createdDate,
    required this.modifiedDate,
    required this.createdBy,
    required this.modifiedBy,
  });

  factory Category.fromJson(Map<String, dynamic> json) => _$CategoryFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryToJson(this);

  @override
  List<Object?> get props =>[
    id,
    menuID,
    menuCategoryID,
    storeID,
    title,
    subTitle,
    menuEntities,
    createdDate,
    modifiedDate,
    createdBy,
    modifiedBy,
  ];
}
