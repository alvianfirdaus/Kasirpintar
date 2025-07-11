// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_item_order_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductItemOrderEntity _$ProductItemOrderEntityFromJson(
    Map<String, dynamic> json) {
  return _ProductItemOrderEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductItemOrderEntity {
  @JsonKey(name: 'product_id')
  @StringToIntConverter()
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get name => throw _privateConstructorUsedError;
  @StringToIntConverter()
  int? get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  @StringToIntConverter()
  int? get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductItemOrderEntityCopyWith<ProductItemOrderEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductItemOrderEntityCopyWith<$Res> {
  factory $ProductItemOrderEntityCopyWith(ProductItemOrderEntity value,
          $Res Function(ProductItemOrderEntity) then) =
      _$ProductItemOrderEntityCopyWithImpl<$Res, ProductItemOrderEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') @StringToIntConverter() int? id,
      @JsonKey(name: 'product_name') String name,
      @StringToIntConverter() int? quantity,
      @JsonKey(name: 'unit_price') @StringToIntConverter() int? price});
}

/// @nodoc
class _$ProductItemOrderEntityCopyWithImpl<$Res,
        $Val extends ProductItemOrderEntity>
    implements $ProductItemOrderEntityCopyWith<$Res> {
  _$ProductItemOrderEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? quantity = freezed,
    Object? price = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductItemOrderEntityImplCopyWith<$Res>
    implements $ProductItemOrderEntityCopyWith<$Res> {
  factory _$$ProductItemOrderEntityImplCopyWith(
          _$ProductItemOrderEntityImpl value,
          $Res Function(_$ProductItemOrderEntityImpl) then) =
      __$$ProductItemOrderEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'product_id') @StringToIntConverter() int? id,
      @JsonKey(name: 'product_name') String name,
      @StringToIntConverter() int? quantity,
      @JsonKey(name: 'unit_price') @StringToIntConverter() int? price});
}

/// @nodoc
class __$$ProductItemOrderEntityImplCopyWithImpl<$Res>
    extends _$ProductItemOrderEntityCopyWithImpl<$Res,
        _$ProductItemOrderEntityImpl>
    implements _$$ProductItemOrderEntityImplCopyWith<$Res> {
  __$$ProductItemOrderEntityImplCopyWithImpl(
      _$ProductItemOrderEntityImpl _value,
      $Res Function(_$ProductItemOrderEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = null,
    Object? quantity = freezed,
    Object? price = freezed,
  }) {
    return _then(_$ProductItemOrderEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: freezed == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductItemOrderEntityImpl implements _ProductItemOrderEntity {
  const _$ProductItemOrderEntityImpl(
      {@JsonKey(name: 'product_id') @StringToIntConverter() this.id,
      @JsonKey(name: 'product_name') required this.name,
      @StringToIntConverter() this.quantity,
      @JsonKey(name: 'unit_price') @StringToIntConverter() this.price});

  factory _$ProductItemOrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemOrderEntityImplFromJson(json);

  @override
  @JsonKey(name: 'product_id')
  @StringToIntConverter()
  final int? id;
  @override
  @JsonKey(name: 'product_name')
  final String name;
  @override
  @StringToIntConverter()
  final int? quantity;
  @override
  @JsonKey(name: 'unit_price')
  @StringToIntConverter()
  final int? price;

  @override
  String toString() {
    return 'ProductItemOrderEntity(id: $id, name: $name, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductItemOrderEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, quantity, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductItemOrderEntityImplCopyWith<_$ProductItemOrderEntityImpl>
      get copyWith => __$$ProductItemOrderEntityImplCopyWithImpl<
          _$ProductItemOrderEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductItemOrderEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductItemOrderEntity implements ProductItemOrderEntity {
  const factory _ProductItemOrderEntity(
      {@JsonKey(name: 'product_id') @StringToIntConverter() final int? id,
      @JsonKey(name: 'product_name') required final String name,
      @StringToIntConverter() final int? quantity,
      @JsonKey(name: 'unit_price')
      @StringToIntConverter()
      final int? price}) = _$ProductItemOrderEntityImpl;

  factory _ProductItemOrderEntity.fromJson(Map<String, dynamic> json) =
      _$ProductItemOrderEntityImpl.fromJson;

  @override
  @JsonKey(name: 'product_id')
  @StringToIntConverter()
  int? get id;
  @override
  @JsonKey(name: 'product_name')
  String get name;
  @override
  @StringToIntConverter()
  int? get quantity;
  @override
  @JsonKey(name: 'unit_price')
  @StringToIntConverter()
  int? get price;
  @override
  @JsonKey(ignore: true)
  _$$ProductItemOrderEntityImplCopyWith<_$ProductItemOrderEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
