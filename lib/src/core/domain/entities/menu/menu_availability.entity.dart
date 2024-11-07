import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/menu/day_availability.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_availability.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class MenuAvailability extends Equatable {
  final DayAvailability? sunday;
  final DayAvailability? monday;
  final DayAvailability? tuesday;
  final DayAvailability? wednesday;
  final DayAvailability? thursday;
  final DayAvailability? friday;
  final DayAvailability? saturday;

  const MenuAvailability({
    required this.sunday,
    required this.monday,
    required this.tuesday,
    required this.wednesday,
    required this.thursday,
    required this.friday,
    required this.saturday,
  });

  @override
  List<Object?> get props =>
      [sunday, monday, tuesday, wednesday, thursday, friday, saturday];

  factory MenuAvailability.fromJson(Map<String, dynamic> json) =>
      _$MenuAvailabilityFromJson(json);
  Map<String, dynamic> toJson() => _$MenuAvailabilityToJson(this);
}
