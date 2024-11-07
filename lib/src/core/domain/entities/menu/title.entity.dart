import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'title.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.pascal)
class Title extends Equatable {
  final String? en;

  const Title({required this.en});

  @override
  List<Object?> get props => [en];

  factory Title.fromJson(Map<String, dynamic> json) => _$TitleFromJson(json);
  Map<String, dynamic> toJson() => _$TitleToJson(this);

}
