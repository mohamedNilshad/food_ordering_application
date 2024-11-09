// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beverage_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeverageInfo _$BeverageInfoFromJson(Map<String, dynamic> json) => BeverageInfo(
      caffeineAmount: (json['CaffeineAmount'] as num?)?.toInt(),
      alcoholByVolume: (json['AlcoholbyVolume'] as num?)?.toInt(),
      coffeeInfo: json['CoffeeInfo'] == null
          ? null
          : CoffeeInfo.fromJson(json['CoffeeInfo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$BeverageInfoToJson(BeverageInfo instance) =>
    <String, dynamic>{
      'CaffeineAmount': instance.caffeineAmount,
      'AlcoholbyVolume': instance.alcoholByVolume,
      'CoffeeInfo': instance.coffeeInfo,
    };
