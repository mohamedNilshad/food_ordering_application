// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'suspension.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Suspension _$SuspensionFromJson(Map<String, dynamic> json) => Suspension(
      suspendedUntil: (json['SuspendedUntil'] as num?)?.toInt(),
      isSuspended: json['IsSuspended'] as bool?,
      reason: json['Reason'] as String?,
    );

Map<String, dynamic> _$SuspensionToJson(Suspension instance) =>
    <String, dynamic>{
      'SuspendedUntil': instance.suspendedUntil,
      'IsSuspended': instance.isSuspended,
      'Reason': instance.reason,
    };
