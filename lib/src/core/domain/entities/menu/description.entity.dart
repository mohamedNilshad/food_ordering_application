import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'description.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class Description extends Equatable {
  final String? en;

  const Description({required this.en});

  @override
  List<Object?> get props => [en];

  factory Description.fromJson(Map<String, dynamic> json) => _$DescriptionFromJson(json);
  Map<String, dynamic> toJson() => _$DescriptionToJson(this);

}
