import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'numberof_serving_intervals.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class NumberofServingIntervals extends Equatable {
  final int? lower;
  final int? upper;

  const NumberofServingIntervals({
    required this.lower,
    required this.upper,
  });

  factory NumberofServingIntervals.fromJson(Map<String, dynamic> json) => _$NumberofServingIntervalsFromJson(json);

  Map<String, dynamic> toJson() => _$NumberofServingIntervalsToJson(this);

  @override
  List<Object?> get props =>[
    lower,
    upper,
  ];
}