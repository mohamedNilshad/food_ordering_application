import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'day_availability.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class DayAvailability extends Equatable {
  final String? startTime;
  final String? endTime;

  const DayAvailability({required this.startTime, required this.endTime});

  @override
  List<Object?> get props => [startTime, endTime];

  factory DayAvailability.fromJson(Map<String, dynamic> json) =>
      _$DayAvailabilityFromJson(json);
  Map<String, dynamic> toJson() => _$DayAvailabilityToJson(this);
}
