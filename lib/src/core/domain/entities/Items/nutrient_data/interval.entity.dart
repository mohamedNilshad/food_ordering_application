import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'interval.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Interval extends Equatable {
  final int? lower;
  final int? upper;

  const Interval({
    required this.lower,
    required this.upper,
  });

  factory Interval.fromJson(Map<String, dynamic> json) => _$IntervalFromJson(json);

  Map<String, dynamic> toJson() => _$IntervalToJson(this);

  @override
  List<Object?> get props =>[
    lower,
    upper,
  ];
}