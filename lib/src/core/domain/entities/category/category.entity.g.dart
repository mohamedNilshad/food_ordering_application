// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Category _$CategoryFromJson(Map<String, dynamic> json) => Category(
      id: json['ID'] as String?,
      menuCategoryID: json['MenuCategoryID'] as String?,
      menuID: json['MenuID'] as String?,
      storeID: json['StoreID'] as String?,
      title: json['Title'] == null
          ? null
          : Title.fromJson(json['Title'] as Map<String, dynamic>),
      subTitle: json['SubTitle'] == null
          ? null
          : SubTitle.fromJson(json['SubTitle'] as Map<String, dynamic>),
      menuEntities: (json['MenuEntities'] as List<dynamic>?)
          ?.map((e) => MenuEntities.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$CategoryToJson(Category instance) => <String, dynamic>{
      'ID': instance.id,
      'MenuCategoryID': instance.menuCategoryID,
      'MenuID': instance.menuID,
      'StoreID': instance.storeID,
      'Title': instance.title,
      'SubTitle': instance.subTitle,
      'MenuEntities': instance.menuEntities,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'ModifiedDate': instance.modifiedDate?.toIso8601String(),
      'CreatedBy': instance.createdBy,
      'ModifiedBy': instance.modifiedBy,
    };
