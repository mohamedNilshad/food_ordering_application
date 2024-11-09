import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/beverage_info.entity.dart';
import 'package:foa/src/core/domain/entities/Items/dish_info.entity.dart';
import 'package:foa/src/core/domain/entities/Items/meta_data.entity.dart';
import 'package:foa/src/core/domain/entities/Items/modifier_group_rules.entity.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/nutrient_data.entity.dart';
import 'package:foa/src/core/domain/entities/Items/price_info.entity.dart';
import 'package:foa/src/core/domain/entities/Items/product_info.entity.dart';
import 'package:foa/src/core/domain/entities/Items/quantity_info.entity.dart';
import 'package:foa/src/core/domain/entities/Items/reward_group_rules.entity.dart';
import 'package:foa/src/core/domain/entities/Items/suspension_rules.entity.dart';
import 'package:foa/src/core/domain/entities/Items/tax_info.entity.dart';
import 'package:foa/src/core/domain/entities/Items/visibility_info.entity.dart';
import 'package:foa/src/core/domain/entities/menu/description.entity.dart';
import 'package:foa/src/core/domain/entities/menu/title.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_item.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class MenuItem extends Equatable {
  @JsonKey(name: 'ID')
  final String? id;
  final String? menuItemID;
  final String? storeID;
  final Title? title;
  final Description? description;
  @JsonKey(name: 'ImageURL')
  final String? imageURL;
  final PriceInfo? priceInfo;
  final String? externalData;
  final QuantityInfo? quantityInfo;
  final SuspensionRules? suspensionRules;
  final ModifierGroupRules? modifierGroupRules;
  final RewardGroupRules? rewardGroupRules;
  final TaxInfo? taxInfo;
  final int? aggregatedProductRating;
  final int? totalReviews;
  final DateTime? createdDate;
  final DateTime? modifiedDate;
  final NutrientData? nutrientData;
  final DishInfo? dishInfo;
  final VisibilityInfo? visibilityInfo;
  final ProductInfo? productInfo;
  final String? bundleItems;
  final BeverageInfo? beverageInfo;
  final List<String>? categoryIDs;
  final List<String>? allergens;
  final MetaData? metaData;


  const MenuItem({
    required this.id,
    required this.menuItemID,
    required this.storeID,
    required this.title,
    required this.description,
    required this.imageURL,
    required this.priceInfo,
    required this.externalData,
    required this.quantityInfo,
    required this.suspensionRules,
    required this.modifierGroupRules,
    required this.rewardGroupRules,
    required this.taxInfo,
    required this.aggregatedProductRating,
    required this.totalReviews,
    required this.createdDate,
    required this.modifiedDate,
    required this.nutrientData,
    required this.dishInfo,
    required this.visibilityInfo,
    required this.productInfo,
    required this.bundleItems,
    required this.beverageInfo,
    required this.categoryIDs,
    required this.allergens,
    required this.metaData,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) => _$MenuItemFromJson(json);

  Map<String, dynamic> toJson() => _$MenuItemToJson(this);

  @override
  List<Object?> get props =>[
    id,
    menuItemID,
    storeID,
    title,
    description,
    imageURL,
    priceInfo,
    externalData,
    quantityInfo,
    suspensionRules,
    modifierGroupRules,
    rewardGroupRules,
    taxInfo,
    aggregatedProductRating,
    totalReviews,
    createdDate,
    modifiedDate,
    nutrientData,
    dishInfo,
    visibilityInfo,
    productInfo,
    bundleItems,
    beverageInfo,
    categoryIDs,
    allergens,
    metaData,
  ];
}
