// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibility_hours.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisibilityHours _$VisibilityHoursFromJson(Map<String, dynamic> json) =>
    VisibilityHours(
      startDate: json['StartDate'] as String?,
      endDate: json['EndDate'] as String?,
      hoursOfWeek: json['HoursofWeek'],
    );

Map<String, dynamic> _$VisibilityHoursToJson(VisibilityHours instance) =>
    <String, dynamic>{
      'StartDate': instance.startDate,
      'EndDate': instance.endDate,
      'HoursofWeek': instance.hoursOfWeek,
    };
