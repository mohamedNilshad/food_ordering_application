import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_entities.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class MenuEntities extends Equatable {
  @JsonKey(name: 'ID')
  final String? id;
  final String? type;

  const MenuEntities({
    required this.id,
    required this.type,
  });

  factory MenuEntities.fromJson(Map<String, dynamic> json) => _$MenuEntitiesFromJson(json);

  Map<String, dynamic> toJson() => _$MenuEntitiesToJson(this);

  @override
  List<Object?> get props =>[
    id,
    type,
  ];
}
