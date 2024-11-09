// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Result _$ResultFromJson(Map<String, dynamic> json) => Result(
      menu: (json['Menu'] as List<dynamic>?)
          ?.map((e) => Menu.fromJson(e as Map<String, dynamic>))
          .toList(),
      categories: (json['Categories'] as List<dynamic>?)
          ?.map((e) => Category.fromJson(e as Map<String, dynamic>))
          .toList(),
      items: (json['Items'] as List<dynamic>?)
          ?.map((e) => MenuItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      modifierGroups: (json['ModifierGroups'] as List<dynamic>?)
          ?.map((e) => ModifierGroups.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ResultToJson(Result instance) => <String, dynamic>{
      'Menu': instance.menu,
      'Categories': instance.categories,
      'Items': instance.items,
      'ModifierGroups': instance.modifierGroups,
    };
