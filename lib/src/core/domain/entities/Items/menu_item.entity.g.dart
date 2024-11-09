// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_item.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuItem _$MenuItemFromJson(Map<String, dynamic> json) => MenuItem(
      id: json['ID'] as String?,
      menuItemID: json['MenuItemID'] as String?,
      storeID: json['StoreID'] as String?,
      title: json['Title'] == null
          ? null
          : Title.fromJson(json['Title'] as Map<String, dynamic>),
      description: json['Description'] == null
          ? null
          : Description.fromJson(json['Description'] as Map<String, dynamic>),
      imageURL: json['ImageURL'] as String?,
      priceInfo: json['PriceInfo'] == null
          ? null
          : PriceInfo.fromJson(json['PriceInfo'] as Map<String, dynamic>),
      externalData: json['ExternalData'] as String?,
      quantityInfo: json['QuantityInfo'] == null
          ? null
          : QuantityInfo.fromJson(json['QuantityInfo'] as Map<String, dynamic>),
      suspensionRules: json['SuspensionRules'] == null
          ? null
          : SuspensionRules.fromJson(
              json['SuspensionRules'] as Map<String, dynamic>),
      modifierGroupRules: json['ModifierGroupRules'] == null
          ? null
          : ModifierGroupRules.fromJson(
              json['ModifierGroupRules'] as Map<String, dynamic>),
      rewardGroupRules: json['RewardGroupRules'] == null
          ? null
          : RewardGroupRules.fromJson(
              json['RewardGroupRules'] as Map<String, dynamic>),
      taxInfo: json['TaxInfo'] == null
          ? null
          : TaxInfo.fromJson(json['TaxInfo'] as Map<String, dynamic>),
      aggregatedProductRating:
          (json['AggregatedProductRating'] as num?)?.toInt(),
      totalReviews: (json['TotalReviews'] as num?)?.toInt(),
      createdDate: json['CreatedDate'] == null
          ? null
          : DateTime.parse(json['CreatedDate'] as String),
      modifiedDate: json['ModifiedDate'] == null
          ? null
          : DateTime.parse(json['ModifiedDate'] as String),
      nutrientData: json['NutrientData'] == null
          ? null
          : NutrientData.fromJson(json['NutrientData'] as Map<String, dynamic>),
      dishInfo: json['DishInfo'] == null
          ? null
          : DishInfo.fromJson(json['DishInfo'] as Map<String, dynamic>),
      visibilityInfo: json['VisibilityInfo'] == null
          ? null
          : VisibilityInfo.fromJson(
              json['VisibilityInfo'] as Map<String, dynamic>),
      productInfo: json['ProductInfo'] == null
          ? null
          : ProductInfo.fromJson(json['ProductInfo'] as Map<String, dynamic>),
      bundleItems: json['BundleItems'] as String?,
      beverageInfo: json['BeverageInfo'] == null
          ? null
          : BeverageInfo.fromJson(json['BeverageInfo'] as Map<String, dynamic>),
      categoryIDs: (json['CategoryIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      allergens: (json['Allergens'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      metaData: json['MetaData'] == null
          ? null
          : MetaData.fromJson(json['MetaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MenuItemToJson(MenuItem instance) => <String, dynamic>{
      'ID': instance.id,
      'MenuItemID': instance.menuItemID,
      'StoreID': instance.storeID,
      'Title': instance.title,
      'Description': instance.description,
      'ImageURL': instance.imageURL,
      'PriceInfo': instance.priceInfo,
      'ExternalData': instance.externalData,
      'QuantityInfo': instance.quantityInfo,
      'SuspensionRules': instance.suspensionRules,
      'ModifierGroupRules': instance.modifierGroupRules,
      'RewardGroupRules': instance.rewardGroupRules,
      'TaxInfo': instance.taxInfo,
      'AggregatedProductRating': instance.aggregatedProductRating,
      'TotalReviews': instance.totalReviews,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'ModifiedDate': instance.modifiedDate?.toIso8601String(),
      'NutrientData': instance.nutrientData,
      'DishInfo': instance.dishInfo,
      'VisibilityInfo': instance.visibilityInfo,
      'ProductInfo': instance.productInfo,
      'BundleItems': instance.bundleItems,
      'BeverageInfo': instance.beverageInfo,
      'CategoryIDs': instance.categoryIDs,
      'Allergens': instance.allergens,
      'MetaData': instance.metaData,
    };
