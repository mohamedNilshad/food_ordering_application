import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'meta_data.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class MetaData extends Equatable {
  final String? productID;
  final String? productName;
  final String? unitChartID;
  final String? unitChartName;

  const MetaData({
    required this.productID,
    required this.productName,
    required this.unitChartID,
    required this.unitChartName,
  });

  factory MetaData.fromJson(Map<String, dynamic> json) => _$MetaDataFromJson(json);

  Map<String, dynamic> toJson() => _$MetaDataToJson(this);

  @override
  List<Object?> get props =>[
    productID,
    productName,
    unitChartID,
    unitChartName,
  ];
}
