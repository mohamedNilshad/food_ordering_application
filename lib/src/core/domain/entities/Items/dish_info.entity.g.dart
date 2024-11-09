// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dish_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DishInfo _$DishInfoFromJson(Map<String, dynamic> json) => DishInfo(
      classifications: json['Classifications'] == null
          ? null
          : Classifications.fromJson(
              json['Classifications'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$DishInfoToJson(DishInfo instance) => <String, dynamic>{
      'Classifications': instance.classifications,
    };
