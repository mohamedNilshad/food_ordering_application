// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visibility_info.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VisibilityInfo _$VisibilityInfoFromJson(Map<String, dynamic> json) =>
    VisibilityInfo(
      visibilityHours: json['VisibilityHours'] == null
          ? null
          : VisibilityHours.fromJson(
              json['VisibilityHours'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VisibilityInfoToJson(VisibilityInfo instance) =>
    <String, dynamic>{
      'VisibilityHours': instance.visibilityHours,
    };
