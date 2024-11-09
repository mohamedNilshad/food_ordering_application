import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fool_business_operator.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class FoolBusinessOperator extends Equatable {
  final String? name;
  final String? address;


  const FoolBusinessOperator({
    required this.name,
    required this.address,
  });

  factory FoolBusinessOperator.fromJson(Map<String, dynamic> json) => _$FoolBusinessOperatorFromJson(json);

  Map<String, dynamic> toJson() => _$FoolBusinessOperatorToJson(this);

  @override
  List<Object?> get props =>[name, address];
}
