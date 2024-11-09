// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tax_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TaxInfo _$TaxInfoFromJson(Map<String, dynamic> json) => TaxInfo(
      taxRate: (json['Taxrate'] as num?)?.toInt(),
      vatRateInPercentage: (json['VATRateInPercentage'] as num?)?.toInt(),
    );

Map<String, dynamic> _$TaxInfoToJson(TaxInfo instance) => <String, dynamic>{
      'Taxrate': instance.taxRate,
      'VATRateInPercentage': instance.vatRateInPercentage,
    };
