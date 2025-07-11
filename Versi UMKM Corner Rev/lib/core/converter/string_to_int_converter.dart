import 'package:json_annotation/json_annotation.dart';

/// Konverter aman: String atau int → int
class StringToIntConverter implements JsonConverter<int, dynamic> {
  const StringToIntConverter();

  @override
  int fromJson(dynamic json) {
    if (json is String) return int.tryParse(json) ?? 0;
    if (json is int) return json;
    throw FormatException('Cannot convert $json to int');
  }

  @override
  dynamic toJson(int object) => object;
}

/// Konverter aman: String/int/null → int?
class NullableStringToIntConverter implements JsonConverter<int?, dynamic> {
  const NullableStringToIntConverter();

  @override
  int? fromJson(dynamic json) {
    if (json == null) return null;
    if (json is String) return int.tryParse(json);
    if (json is int) return json;
    return null;
  }

  @override
  dynamic toJson(int? object) => object;
}
