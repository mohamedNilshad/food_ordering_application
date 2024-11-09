import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subtitle.entity.g.dart';

@JsonSerializable(fieldRename: FieldRename.none)
class SubTitle extends Equatable {
  final String? en;

  const SubTitle({required this.en});

  @override
  List<Object?> get props => [en];

  factory SubTitle.fromJson(Map<String, dynamic> json) => _$SubTitleFromJson(json);
  Map<String, dynamic> toJson() => _$SubTitleToJson(this);

}
