// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PriceInfo _$PriceInfoFromJson(Map<String, dynamic> json) => PriceInfo(
      price: json['Price'] == null
          ? null
          : Price.fromJson(json['Price'] as Map<String, dynamic>),
      corePrice: (json['CorePrice'] as num?)?.toInt(),
      containerDeposit: (json['ContainerDeposit'] as num?)?.toInt(),
      overrides: (json['Overrides'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      priceByUnit: json['PricebyUnit'] as String?,
    );

Map<String, dynamic> _$PriceInfoToJson(PriceInfo instance) => <String, dynamic>{
      'Price': instance.price,
      'CorePrice': instance.corePrice,
      'ContainerDeposit': instance.containerDeposit,
      'Overrides': instance.overrides,
      'PricebyUnit': instance.priceByUnit,
    };
