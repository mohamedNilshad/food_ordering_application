import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'volume.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Volume extends Equatable {
  final String? unitType;

  const Volume({
    required this.unitType,
  });

  factory Volume.fromJson(Map<String, dynamic> json) => _$VolumeFromJson(json);

  Map<String, dynamic> toJson() => _$VolumeToJson(this);

  @override
  List<Object?> get props =>[
    unitType,
  ];
}