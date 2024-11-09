// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Menu _$MenuFromJson(Map<String, dynamic> json) => Menu(
      id: json['ID'] as String?,
      menuID: json['MenuID'] as String?,
      verticalID: json['VerticalID'] as String?,
      storeID: json['StoreID'] as String?,
      title: json['Title'] == null
          ? null
          : Title.fromJson(json['Title'] as Map<String, dynamic>),
      subTitle: json['SubTitle'] as String?,
      description: json['Description'] as String?,
      menuAvailability: json['MenuAvailability'] == null
          ? null
          : MenuAvailability.fromJson(
              json['MenuAvailability'] as Map<String, dynamic>),
      menuCategoryIDs: (json['MenuCategoryIDs'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdDate: json['CreatedDate'] == null
          ? null
          : DateTime.parse(json['CreatedDate'] as String),
      modifiedDate: json['ModifiedDate'] == null
          ? null
          : DateTime.parse(json['ModifiedDate'] as String),
      createdBy: json['CreatedBy'] as String?,
      modifiedBy: json['ModifiedBy'] as String?,
    );

Map<String, dynamic> _$MenuToJson(Menu instance) => <String, dynamic>{
      'ID': instance.id,
      'MenuID': instance.menuID,
      'VerticalID': instance.verticalID,
      'StoreID': instance.storeID,
      'Title': instance.title,
      'SubTitle': instance.subTitle,
      'Description': instance.description,
      'MenuAvailability': instance.menuAvailability,
      'MenuCategoryIDs': instance.menuCategoryIDs,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'ModifiedDate': instance.modifiedDate?.toIso8601String(),
      'CreatedBy': instance.createdBy,
      'ModifiedBy': instance.modifiedBy,
    };
