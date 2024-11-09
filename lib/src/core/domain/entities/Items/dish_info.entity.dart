import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/classifications.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dish_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class DishInfo extends Equatable {
  final Classifications? classifications;

  const DishInfo({
    required this.classifications,
  });

  factory DishInfo.fromJson(Map<String, dynamic> json) => _$DishInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DishInfoToJson(this);

  @override
  List<Object?> get props =>[classifications];
}
