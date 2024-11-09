import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'price.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Price extends Equatable {
  final int? deliveryPrice;
  final int? pickupPrice;
  final int? tablePrice;

  const Price({
    required this.deliveryPrice,
    required this.pickupPrice,
    required this.tablePrice,
  });

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);

  @override
  List<Object?> get props =>[
    deliveryPrice,
    pickupPrice,
    tablePrice
  ];
}
