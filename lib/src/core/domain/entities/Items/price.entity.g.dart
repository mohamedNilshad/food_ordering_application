// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
      deliveryPrice: (json['DeliveryPrice'] as num?)?.toInt(),
      pickupPrice: (json['PickupPrice'] as num?)?.toInt(),
      tablePrice: (json['TablePrice'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'DeliveryPrice': instance.deliveryPrice,
      'PickupPrice': instance.pickupPrice,
      'TablePrice': instance.tablePrice,
    };
