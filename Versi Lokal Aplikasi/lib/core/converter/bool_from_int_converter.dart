import 'package:json_annotation/json_annotation.dart';

class BoolFromIntConverter implements JsonConverter<bool, dynamic> {
  const BoolFromIntConverter();

  @override
  bool fromJson(dynamic json) => json == 1;

  @override
  dynamic toJson(bool object) => object ? 1 : 0;
}
