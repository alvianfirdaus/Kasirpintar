import 'package:dewakoding_kasir/app/domain/entity/payment_method.dart';
import 'package:dewakoding_kasir/app/domain/entity/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.g.dart';
part 'order.freezed.dart';

@freezed
sealed class Order with _$Order {
  const factory Order.entity({
    int? id,
    required String name,
    String? email,
    String? gender,
    String? phone,
    String? birthday,

    @JsonKey(name: 'total_price', fromJson: parseIntNonNull)
    @Default(0) int totalPrice,

    @JsonKey(name: 'note') String? notes,

    @JsonKey(name: 'payment_method_id', fromJson: parseIntNonNull)
    int? paymentMethodId,

    @JsonKey(name: 'paid_amount', fromJson: parseIntNonNull)
    @Default(0) int paidAmount,

    @JsonKey(name: 'change_amount', fromJson: parseIntNonNull)
    @Default(0) int changeAmount,

    @JsonKey(name: 'payment_method')
    PaymentMethodEntity? paymentMethod,

    @JsonKey(name: 'updated_at') String? updatedAt,

    @JsonKey(name: 'items', fromJson: productItemOrderEntityListFromJson)
    @Default(<ProductItemOrderEntity>[])
    List<ProductItemOrderEntity> items,
  }) = OrderEntity;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);
}

/// Konverter: selalu mengembalikan int non-null (default 0 kalau null atau parsing gagal)
int parseIntNonNull(dynamic value) {
  if (value == null) return 0;
  if (value is int) return value;
  if (value is String) return int.tryParse(value) ?? 0;
  return 0;
}

/// Konverter List<ProductItemOrderEntity> dari JSON array
List<ProductItemOrderEntity> productItemOrderEntityListFromJson(dynamic json) {
  if (json == null) return [];
  return (json as List)
      .map((e) => ProductItemOrderEntity.fromJson(e as Map<String, dynamic>))
      .toList();
}
