// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_availability.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayAvailability _$DayAvailabilityFromJson(Map<String, dynamic> json) =>
    DayAvailability(
      startTime: json['StartTime'] as String?,
      endTime: json['EndTime'] as String?,
    );

Map<String, dynamic> _$DayAvailabilityToJson(DayAvailability instance) =>
    <String, dynamic>{
      'StartTime': instance.startTime,
      'EndTime': instance.endTime,
    };
