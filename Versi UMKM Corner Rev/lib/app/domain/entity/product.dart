import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:dewakoding_kasir/core/converter/bool_from_int_converter.dart';

part 'product.freezed.dart';
part 'product.g.dart';

// ✅ Konverter: String/int/null → int?
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

// ✅ Konverter: String/int/null → int (default: 0)
class StringToIntConverter implements JsonConverter<int, dynamic> {
  const StringToIntConverter();

  @override
  int fromJson(dynamic json) {
    if (json == null) return 0;
    if (json is String) return int.tryParse(json) ?? 0;
    if (json is int) return json;
    return 0;
  }

  @override
  dynamic toJson(int object) => object;
}

// ✅ Konverter langsung function
int _safeParseInt(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}

@freezed
class Product with _$Product {
  @JsonSerializable()
  const factory Product.entity({
    required int id,
    @JsonKey(name: 'category_id') @StringToIntConverter() required int categoryId,
    required String name,
    @StringToIntConverter() required int stock,
    @StringToIntConverter() required int price,
    @JsonKey(name: 'is_active') @BoolFromIntConverter() required bool isActive,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? barcode,
  }) = ProductEntity;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  // ✅ Tambahan opsional: bantu parsing list dari JSON array
  static List<ProductItemOrderEntity> listFromJson(List<dynamic> json) =>
      json.map((e) => ProductItemOrderEntity.fromJson(e as Map<String, dynamic>)).toList();
}

@freezed
class ProductItemOrderEntity with _$ProductItemOrderEntity {
  const factory ProductItemOrderEntity({
    @JsonKey(name: 'product_id', fromJson: _safeParseInt) required int id,
    @JsonKey(name: 'product_name') required String name,
    @JsonKey(name: 'quantity', fromJson: _safeParseInt) required int quantity,
    @JsonKey(name: 'unit_price', fromJson: _safeParseInt) required int price,
    String? barcode,
    @JsonKey(fromJson: _safeParseNullableInt) int? stock,
  }) = _ProductItemOrderEntity;

  factory ProductItemOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductItemOrderEntityFromJson(json);
}


int? _safeParseNullableInt(dynamic value) {
  if (value == null) return null;
  if (value is int) return value;
  if (value is String) return int.tryParse(value);
  return null;
}