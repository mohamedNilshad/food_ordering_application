import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/coffee_info.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'beverage_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class BeverageInfo extends Equatable {
  final int? caffeineAmount;
  @JsonKey(name: 'AlcoholbyVolume')
  final int? alcoholByVolume;
  final CoffeeInfo? coffeeInfo;

  const BeverageInfo({
    required this.caffeineAmount,
    required this.alcoholByVolume,
    required this.coffeeInfo,
  });

  factory BeverageInfo.fromJson(Map<String, dynamic> json) => _$BeverageInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BeverageInfoToJson(this);

  @override
  List<Object?> get props =>[
    caffeineAmount,
    alcoholByVolume,
    coffeeInfo
  ];
}
