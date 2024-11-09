import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'tax_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class TaxInfo extends Equatable {
  @JsonKey(name: 'Taxrate')
  final int? taxRate;
  @JsonKey(name: 'VATRateInPercentage')
  final int? vatRateInPercentage;

  const TaxInfo({required this.taxRate, required this.vatRateInPercentage});

  factory TaxInfo.fromJson(Map<String, dynamic> json) => _$TaxInfoFromJson(json);

  Map<String, dynamic> toJson() => _$TaxInfoToJson(this);

  @override
  List<Object?> get props =>[
    taxRate,
    vatRateInPercentage,
  ];
}
