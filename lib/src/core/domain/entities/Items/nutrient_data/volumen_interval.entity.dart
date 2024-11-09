import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/volume.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:foa/src/core/domain/entities/Items/nutrient_data/interval.entity.dart';

part 'volumen_interval.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class VolumenInterval extends Equatable {
  final Interval? interval;
  final Volume? volume;

  const VolumenInterval({
    required this.interval,
    required this.volume,
  });

  factory VolumenInterval.fromJson(Map<String, dynamic> json) => _$VolumenIntervalFromJson(json);

  Map<String, dynamic> toJson() => _$VolumenIntervalToJson(this);

  @override
  List<Object?> get props =>[
    interval,
    volume,
  ];
}