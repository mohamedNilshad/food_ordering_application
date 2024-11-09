import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/count.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/interval.entity.dart';

part 'count_interval.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class CountInterval extends Equatable {
  final Interval? interval;
  final Count? count;

  const CountInterval({
    required this.interval,
    required this.count,
  });

  factory CountInterval.fromJson(Map<String, dynamic> json) => _$CountIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$CountIntervalToJson(this);

  @override
  List<Object?> get props =>[
    interval,
    count,
  ];
}