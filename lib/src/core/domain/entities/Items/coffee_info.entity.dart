import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'coffee_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CoffeeInfo extends Equatable {
  final dynamic coffeeBeanOrigin;

  const CoffeeInfo({this.coffeeBeanOrigin});

  factory CoffeeInfo.fromJson(Map<String, dynamic> json) => _$CoffeeInfoFromJson(json);

  Map<String, dynamic> toJson() => _$CoffeeInfoToJson(this);

  @override
  List<Object?> get props =>[coffeeBeanOrigin];
}
