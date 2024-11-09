import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/price.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class PriceInfo extends Equatable {
  final Price? price;
  final int? corePrice;
  final int? containerDeposit;
  final List<String>? overrides;
  @JsonKey(name: 'PricebyUnit')
  final String? priceByUnit;

  const PriceInfo({
    required this.price,
    required this.corePrice,
    required this.containerDeposit,
    required this.overrides,
    required this.priceByUnit,
  });

  factory PriceInfo.fromJson(Map<String, dynamic> json) => _$PriceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$PriceInfoToJson(this);

  @override
  List<Object?> get props =>[
    price,
    corePrice,
    containerDeposit,
    overrides,
    priceByUnit,
  ];
}
