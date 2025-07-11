import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dewakoding_kasir/core/converter/string_to_int_converter.dart';

part 'product_item_order_entity.freezed.dart';
part 'product_item_order_entity.g.dart';

@freezed
class ProductItemOrderEntity with _$ProductItemOrderEntity {
  const factory ProductItemOrderEntity({
    @JsonKey(name: 'product_id') @StringToIntConverter() int? id,
    @JsonKey(name: 'product_name') required String name,
    @StringToIntConverter() int? quantity,
    @JsonKey(name: 'unit_price') @StringToIntConverter() int? price,
  }) = _ProductItemOrderEntity;

  factory ProductItemOrderEntity.fromJson(Map<String, dynamic> json) =>
      _$ProductItemOrderEntityFromJson(json);
}