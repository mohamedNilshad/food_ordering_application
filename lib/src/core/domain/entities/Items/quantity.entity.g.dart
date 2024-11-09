// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quantity.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Quantity _$QuantityFromJson(Map<String, dynamic> json) => Quantity(
      maxPermitted: (json['MaxPermitted'] as num?)?.toInt(),
      minPermitted: (json['MinPermitted'] as num?)?.toInt(),
      isMinPermittedOptional: json['IsMinPermittedOptional'] as bool?,
      chargeAbove: (json['ChargeAbove'] as num?)?.toInt(),
      refundUnder: (json['RefundUnder'] as num?)?.toInt(),
      minPermittedUnique: (json['MinPermittedUnique'] as num?)?.toInt(),
      maxPermittedUnique: (json['MaxPermittedUnique'] as num?)?.toInt(),
    );

Map<String, dynamic> _$QuantityToJson(Quantity instance) => <String, dynamic>{
      'MinPermitted': instance.minPermitted,
      'MaxPermitted': instance.maxPermitted,
      'IsMinPermittedOptional': instance.isMinPermittedOptional,
      'ChargeAbove': instance.chargeAbove,
      'RefundUnder': instance.refundUnder,
      'MinPermittedUnique': instance.minPermittedUnique,
      'MaxPermittedUnique': instance.maxPermittedUnique,
    };
