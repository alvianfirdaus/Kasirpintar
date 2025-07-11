// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OrderEntityImpl _$$OrderEntityImplFromJson(Map<String, dynamic> json) =>
    _$OrderEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String,
      email: json['email'] as String?,
      gender: json['gender'] as String?,
      phone: json['phone'] as String?,
      birthday: json['birthday'] as String?,
      totalPrice: json['total_price'] == null
          ? 0
          : parseIntNonNull(json['total_price']),
      notes: json['note'] as String?,
      paymentMethodId: parseIntNonNull(json['payment_method_id']),
      paidAmount: json['paid_amount'] == null
          ? 0
          : parseIntNonNull(json['paid_amount']),
      changeAmount: json['change_amount'] == null
          ? 0
          : parseIntNonNull(json['change_amount']),
      paymentMethod: json['payment_method'] == null
          ? null
          : PaymentMethodEntity.fromJson(
              json['payment_method'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] as String?,
      items: json['items'] == null
          ? const <ProductItemOrderEntity>[]
          : productItemOrderEntityListFromJson(json['items']),
    );

Map<String, dynamic> _$$OrderEntityImplToJson(_$OrderEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'gender': instance.gender,
      'phone': instance.phone,
      'birthday': instance.birthday,
      'total_price': instance.totalPrice,
      'note': instance.notes,
      'payment_method_id': instance.paymentMethodId,
      'paid_amount': instance.paidAmount,
      'change_amount': instance.changeAmount,
      'payment_method': instance.paymentMethod,
      'updated_at': instance.updatedAt,
      'items': instance.items,
    };
