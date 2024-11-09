import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'weight.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Weight extends Equatable {
  final String? unitType;

  const Weight({
    required this.unitType,
  });

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);

  Map<String, dynamic> toJson() => _$WeightToJson(this);


  @override
  List<Object?> get props =>[
    unitType,
  ];
}