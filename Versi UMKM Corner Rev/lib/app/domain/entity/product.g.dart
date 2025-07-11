// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductEntityImpl _$$ProductEntityImplFromJson(Map<String, dynamic> json) =>
    _$ProductEntityImpl(
      id: (json['id'] as num).toInt(),
      categoryId: const StringToIntConverter().fromJson(json['category_id']),
      name: json['name'] as String,
      stock: const StringToIntConverter().fromJson(json['stock']),
      price: const StringToIntConverter().fromJson(json['price']),
      isActive: const BoolFromIntConverter().fromJson(json['is_active']),
      imageUrl: json['image_url'] as String?,
      barcode: json['barcode'] as String?,
    );

Map<String, dynamic> _$$ProductEntityImplToJson(_$ProductEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': const StringToIntConverter().toJson(instance.categoryId),
      'name': instance.name,
      'stock': const StringToIntConverter().toJson(instance.stock),
      'price': const StringToIntConverter().toJson(instance.price),
      'is_active': const BoolFromIntConverter().toJson(instance.isActive),
      'image_url': instance.imageUrl,
      'barcode': instance.barcode,
    };

_$ProductItemOrderEntityImpl _$$ProductItemOrderEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductItemOrderEntityImpl(
      id: _safeParseInt(json['product_id']),
      name: json['product_name'] as String,
      quantity: _safeParseInt(json['quantity']),
      price: _safeParseInt(json['unit_price']),
      barcode: json['barcode'] as String?,
      stock: _safeParseNullableInt(json['stock']),
    );

Map<String, dynamic> _$$ProductItemOrderEntityImplToJson(
        _$ProductItemOrderEntityImpl instance) =>
    <String, dynamic>{
      'product_id': instance.id,
      'product_name': instance.name,
      'quantity': instance.quantity,
      'unit_price': instance.price,
      'barcode': instance.barcode,
      'stock': instance.stock,
    };
