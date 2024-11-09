import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'modifier_options.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class ModifierOptions extends Equatable {
  final String? id;
  final String? type;

  const ModifierOptions({
    required this.id,
    required this.type,
  });

  factory ModifierOptions.fromJson(Map<String, dynamic> json) => _$ModifierOptionsFromJson(json);

  Map<String, dynamic> toJson() => _$ModifierOptionsToJson(this);

  @override
  List<Object?> get props =>[
    id,
    type,
  ];
}