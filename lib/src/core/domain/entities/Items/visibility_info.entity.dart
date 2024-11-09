import 'package:equatable/equatable.dart';
import 'package:foa/src/core/domain/entities/Items/visibility_hours.entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'visibility_info.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class VisibilityInfo extends Equatable {
  final VisibilityHours? visibilityHours;

  const VisibilityInfo({
    required this.visibilityHours,
  });

  factory VisibilityInfo.fromJson(Map<String, dynamic> json) => _$VisibilityInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VisibilityInfoToJson(this);

  @override
  List<Object?> get props =>[visibilityHours];
}
