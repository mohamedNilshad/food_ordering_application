// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetaData _$MetaDataFromJson(Map<String, dynamic> json) => MetaData(
      productID: json['ProductID'] as String?,
      productName: json['ProductName'] as String?,
      unitChartID: json['UnitChartID'] as String?,
      unitChartName: json['UnitChartName'] as String?,
    );

Map<String, dynamic> _$MetaDataToJson(MetaData instance) => <String, dynamic>{
      'ProductID': instance.productID,
      'ProductName': instance.productName,
      'UnitChartID': instance.unitChartID,
      'UnitChartName': instance.unitChartName,
    };
