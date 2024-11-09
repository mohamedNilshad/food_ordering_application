// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductInfo _$ProductInfoFromJson(Map<String, dynamic> json) => ProductInfo(
      targetMarket: (json['TargetMarket'] as num?)?.toInt(),
      gtin: json['Gtin'] as String?,
      plu: json['Plu'] as String?,
      merchantID: json['MerchantID'] as String?,
      productType: json['ProductType'] as String?,
      productTraits: json['ProductTraits'],
      countriesOfOrigin: json['countriesofOrigin'],
    );

Map<String, dynamic> _$ProductInfoToJson(ProductInfo instance) =>
    <String, dynamic>{
      'TargetMarket': instance.targetMarket,
      'Gtin': instance.gtin,
      'Plu': instance.plu,
      'MerchantID': instance.merchantID,
      'ProductType': instance.productType,
      'ProductTraits': instance.productTraits,
      'countriesofOrigin': instance.countriesOfOrigin,
    };
