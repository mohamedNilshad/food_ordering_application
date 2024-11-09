import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'suspension.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Suspension extends Equatable {
  final int? suspendedUntil;
  final bool? isSuspended;
  final String? reason;

  const Suspension({
    required this.suspendedUntil,
    required this.isSuspended,
    required this.reason,
  });

  factory Suspension.fromJson(Map<String, dynamic> json) => _$SuspensionFromJson(json);

  Map<String, dynamic> toJson() => _$SuspensionToJson(this);

  @override
  List<Object?> get props =>[
    suspendedUntil,
    isSuspended,
    reason,
    reason,
  ];
}
