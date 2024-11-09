import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/quantity.entity.dart';
import 'package:foa/src/core/domain/entities/menu/overrides.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class QuantityInfo extends Equatable {
  final Quantity? quantity;
  final List<Overrides>? overrides;

  const QuantityInfo({
    required this.quantity,
    required this.overrides,
  });

  factory QuantityInfo.fromJson(Map<String, dynamic> json) => _$QuantityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityInfoToJson(this);

  @override
  List<Object?> get props =>[
    quantity,
    overrides,
  ];
}
