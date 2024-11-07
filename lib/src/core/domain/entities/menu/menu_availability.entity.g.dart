// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_availability.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MenuAvailability _$MenuAvailabilityFromJson(Map<String, dynamic> json) =>
    MenuAvailability(
      sunday: json['Sunday'] == null
          ? null
          : DayAvailability.fromJson(json['Sunday'] as Map<String, dynamic>),
      monday: json['Monday'] == null
          ? null
          : DayAvailability.fromJson(json['Monday'] as Map<String, dynamic>),
      tuesday: json['Tuesday'] == null
          ? null
          : DayAvailability.fromJson(json['Tuesday'] as Map<String, dynamic>),
      wednesday: json['Wednesday'] == null
          ? null
          : DayAvailability.fromJson(json['Wednesday'] as Map<String, dynamic>),
      thursday: json['Thursday'] == null
          ? null
          : DayAvailability.fromJson(json['Thursday'] as Map<String, dynamic>),
      friday: json['Friday'] == null
          ? null
          : DayAvailability.fromJson(json['Friday'] as Map<String, dynamic>),
      saturday: json['Saturday'] == null
          ? null
          : DayAvailability.fromJson(json['Saturday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MenuAvailabilityToJson(MenuAvailability instance) =>
    <String, dynamic>{
      'Sunday': instance.sunday,
      'Monday': instance.monday,
      'Tuesday': instance.tuesday,
      'Wednesday': instance.wednesday,
      'Thursday': instance.thursday,
      'Friday': instance.friday,
      'Saturday': instance.saturday,
    };
