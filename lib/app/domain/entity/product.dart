import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dewakoding_kasir/core/converter/bool_from_int_converter.dart';

part 'product.g.dart';
part 'product.freezed.dart';

@freezed
sealed class Product with _$Product {
   @JsonSerializable()
  const factory Product.entity({
    required int id,
    @JsonKey(name: 'category_id') required int categoryId,
    required String name,
    required int stock,
    required int price,
    @JsonKey(name: 'is_active') @BoolFromIntConverter() required bool isActive,
    @JsonKey(name: 'image_url') String? imageUrl,
    String? barcode,
  }) = ProductEntity;

  const factory Product.itemOrderEntity(
      {@JsonKey(name: 'product_id') required int id,
      @JsonKey(name: 'product_name') required String name,
      required int quantity,
      @JsonKey(name: 'unit_price') required int price,
      String? barcode,
      int? stock}) = ProductItemOrderEntity;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  // ✅ Tambahkan ini (di luar const factory, setelah semua definisi):
static List<ProductItemOrderEntity> listFromJson(List<dynamic> json) =>
    json.map((e) => ProductItemOrderEntity.fromJson(e as Map<String, dynamic>)).toList();

}

