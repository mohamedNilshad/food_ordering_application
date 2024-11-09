// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifier_groups.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModifierGroups _$ModifierGroupsFromJson(Map<String, dynamic> json) =>
    ModifierGroups(
      id: json['ID'] as String?,
      modifierGroupID: json['ModifierGroupID'] as String?,
      title: json['Title'] == null
          ? null
          : Title.fromJson(json['Title'] as Map<String, dynamic>),
      description: json['Description'] == null
          ? null
          : Description.fromJson(json['Description'] as Map<String, dynamic>),
      storeID: json['StoreID'] as String?,
      displayType: json['DisplayType'] as String?,
      modifierOptions: (json['ModifierOptions'] as List<dynamic>?)
          ?.map((e) => ModifierOptions.fromJson(e as Map<String, dynamic>))
          .toList(),
      quantityConstraintsRules: json['QuantityConstraintsRules'] == null
          ? null
          : QuantityConstraintsRules.fromJson(
              json['QuantityConstraintsRules'] as Map<String, dynamic>),
      createdDate: json['CreatedDate'] == null
          ? null
          : DateTime.parse(json['CreatedDate'] as String),
      modifiedDate: json['ModifiedDate'] == null
          ? null
          : DateTime.parse(json['ModifiedDate'] as String),
      metaData: json['MetaData'] == null
          ? null
          : MetaData.fromJson(json['MetaData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ModifierGroupsToJson(ModifierGroups instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'ModifierGroupID': instance.modifierGroupID,
      'Title': instance.title,
      'Description': instance.description,
      'StoreID': instance.storeID,
      'DisplayType': instance.displayType,
      'ModifierOptions': instance.modifierOptions,
      'QuantityConstraintsRules': instance.quantityConstraintsRules,
      'CreatedDate': instance.createdDate?.toIso8601String(),
      'ModifiedDate': instance.modifiedDate?.toIso8601String(),
      'MetaData': instance.metaData,
    };
