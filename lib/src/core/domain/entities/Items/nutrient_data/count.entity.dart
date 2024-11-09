import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'count.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Count extends Equatable {
  final String? unitType;

  const Count({
    required this.unitType,
  });

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  Map<String, dynamic> toJson() => _$CountToJson(this);

  @override
  List<Object?> get props =>[
    unitType,
  ];
}