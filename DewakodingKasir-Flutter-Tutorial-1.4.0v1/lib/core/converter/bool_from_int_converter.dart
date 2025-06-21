import 'package:json_annotation/json_annotation.dart';

class BoolFromIntConverter implements JsonConverter<bool, dynamic> {
  const BoolFromIntConverter();

  @override
  bool fromJson(dynamic json) {
    return json == 1 || json == true;
  }

  @override
  dynamic toJson(bool object) => object ? 1 : 0;
}
