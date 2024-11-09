import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'quantity.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Quantity extends Equatable {
  final int? minPermitted;
  final int? maxPermitted;
  final bool? isMinPermittedOptional;
  final int? chargeAbove;
  final int? refundUnder;
  final int? minPermittedUnique;
  final int? maxPermittedUnique;

  const Quantity({
    required this.maxPermitted,
    required this.minPermitted,
    required this.isMinPermittedOptional,
    required this.chargeAbove,
    required this.refundUnder,
    required this.minPermittedUnique,
    required this.maxPermittedUnique,
  });

  factory Quantity.fromJson(Map<String, dynamic> json) => _$QuantityFromJson(json);

  Map<String, dynamic> toJson() => _$QuantityToJson(this);

  @override
  List<Object?> get props =>[
    maxPermitted,
    minPermitted,
    isMinPermittedOptional,
    chargeAbove,
    refundUnder,
    minPermittedUnique,
    maxPermittedUnique,
  ];
}
