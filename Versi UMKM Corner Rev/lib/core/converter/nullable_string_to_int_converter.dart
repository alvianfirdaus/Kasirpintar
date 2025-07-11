import 'package:json_annotation/json_annotation.dart';

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
