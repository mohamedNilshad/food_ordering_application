import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visibility_hours.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class VisibilityHours extends Equatable {
  final String? startDate;
  final String? endDate;
  @JsonKey(name: 'HoursofWeek')
  final dynamic hoursOfWeek;

  const VisibilityHours({
    required this.startDate,
    required this.endDate,
    required this.hoursOfWeek,
  });

  factory VisibilityHours.fromJson(Map<String, dynamic> json) => _$VisibilityHoursFromJson(json);

  Map<String, dynamic> toJson() => _$VisibilityHoursToJson(this);

  @override
  List<Object?> get props =>[startDate, endDate, hoursOfWeek];
}
