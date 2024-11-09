// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'protein.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Protein _$ProteinFromJson(Map<String, dynamic> json) => Protein(
      amount: json['Amount'] == null
          ? null
          : Amount.fromJson(json['Amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ProteinToJson(Protein instance) => <String, dynamic>{
      'Amount': instance.amount,
    };
