import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ProductInfo extends Equatable {
  final int? targetMarket;
  final String? gtin;
  final String? plu;
  final String? merchantID;
  final String? productType;
  final dynamic productTraits;
  @JsonKey(name: 'countriesofOrigin')
  final dynamic countriesOfOrigin;

  const ProductInfo({
    required this.targetMarket,
    required this.gtin,
    required this.plu,
    required this.merchantID,
    required this.productType,
    required this.productTraits,
    required this.countriesOfOrigin,
  });

  factory ProductInfo.fromJson(Map<String, dynamic> json) => _$ProductInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ProductInfoToJson(this);

  @override
  List<Object?> get props =>[
    targetMarket,
    gtin,
    plu,
    merchantID,
    productType,
    productTraits,
    countriesOfOrigin,
  ];
}
