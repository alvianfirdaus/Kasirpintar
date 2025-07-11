// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_item_order_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductItemOrderEntityImpl _$$ProductItemOrderEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductItemOrderEntityImpl(
      id: const StringToIntConverter().fromJson(json['product_id']),
      name: json['product_name'] as String,
      quantity: const StringToIntConverter().fromJson(json['quantity']),
      price: const StringToIntConverter().fromJson(json['unit_price']),
    );

Map<String, dynamic> _$$ProductItemOrderEntityImplToJson(
        _$ProductItemOrderEntityImpl instance) =>
    <String, dynamic>{
      'product_id': _$JsonConverterToJson<dynamic, int>(
          instance.id, const StringToIntConverter().toJson),
      'product_name': instance.name,
      'quantity': _$JsonConverterToJson<dynamic, int>(
          instance.quantity, const StringToIntConverter().toJson),
      'unit_price': _$JsonConverterToJson<dynamic, int>(
          instance.price, const StringToIntConverter().toJson),
    };

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
