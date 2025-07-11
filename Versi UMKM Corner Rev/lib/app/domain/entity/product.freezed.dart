// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Product _$ProductFromJson(Map<String, dynamic> json) {
  return ProductEntity.fromJson(json);
}

/// @nodoc
mixin _$Product {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  @StringToIntConverter()
  int get categoryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @StringToIntConverter()
  int get stock => throw _privateConstructorUsedError;
  @StringToIntConverter()
  int get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_active')
  @BoolFromIntConverter()
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_url')
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'category_id')
            @StringToIntConverter()
            int categoryId,
            String name,
            @StringToIntConverter() int stock,
            @StringToIntConverter() int price,
            @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl,
            String? barcode)
        entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'category_id')
            @StringToIntConverter()
            int categoryId,
            String name,
            @StringToIntConverter() int stock,
            @StringToIntConverter() int price,
            @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl,
            String? barcode)?
        entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'category_id')
            @StringToIntConverter()
            int categoryId,
            String name,
            @StringToIntConverter() int stock,
            @StringToIntConverter() int price,
            @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl,
            String? barcode)?
        entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductEntity value) entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductEntity value)? entity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductEntity value)? entity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductCopyWith<Product> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCopyWith<$Res> {
  factory $ProductCopyWith(Product value, $Res Function(Product) then) =
      _$ProductCopyWithImpl<$Res, Product>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'category_id') @StringToIntConverter() int categoryId,
      String name,
      @StringToIntConverter() int stock,
      @StringToIntConverter() int price,
      @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
      @JsonKey(name: 'image_url') String? imageUrl,
      String? barcode});
}

/// @nodoc
class _$ProductCopyWithImpl<$Res, $Val extends Product>
    implements $ProductCopyWith<$Res> {
  _$ProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? stock = null,
    Object? price = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductEntityImplCopyWith<$Res>
    implements $ProductCopyWith<$Res> {
  factory _$$ProductEntityImplCopyWith(
          _$ProductEntityImpl value, $Res Function(_$ProductEntityImpl) then) =
      __$$ProductEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'category_id') @StringToIntConverter() int categoryId,
      String name,
      @StringToIntConverter() int stock,
      @StringToIntConverter() int price,
      @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
      @JsonKey(name: 'image_url') String? imageUrl,
      String? barcode});
}

/// @nodoc
class __$$ProductEntityImplCopyWithImpl<$Res>
    extends _$ProductCopyWithImpl<$Res, _$ProductEntityImpl>
    implements _$$ProductEntityImplCopyWith<$Res> {
  __$$ProductEntityImplCopyWithImpl(
      _$ProductEntityImpl _value, $Res Function(_$ProductEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? categoryId = null,
    Object? name = null,
    Object? stock = null,
    Object? price = null,
    Object? isActive = null,
    Object? imageUrl = freezed,
    Object? barcode = freezed,
  }) {
    return _then(_$ProductEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      stock: null == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable()
class _$ProductEntityImpl implements ProductEntity {
  const _$ProductEntityImpl(
      {required this.id,
      @JsonKey(name: 'category_id')
      @StringToIntConverter()
      required this.categoryId,
      required this.name,
      @StringToIntConverter() required this.stock,
      @StringToIntConverter() required this.price,
      @JsonKey(name: 'is_active')
      @BoolFromIntConverter()
      required this.isActive,
      @JsonKey(name: 'image_url') this.imageUrl,
      this.barcode});

  factory _$ProductEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductEntityImplFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'category_id')
  @StringToIntConverter()
  final int categoryId;
  @override
  final String name;
  @override
  @StringToIntConverter()
  final int stock;
  @override
  @StringToIntConverter()
  final int price;
  @override
  @JsonKey(name: 'is_active')
  @BoolFromIntConverter()
  final bool isActive;
  @override
  @JsonKey(name: 'image_url')
  final String? imageUrl;
  @override
  final String? barcode;

  @override
  String toString() {
    return 'Product.entity(id: $id, categoryId: $categoryId, name: $name, stock: $stock, price: $price, isActive: $isActive, imageUrl: $imageUrl, barcode: $barcode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.barcode, barcode) || other.barcode == barcode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, categoryId, name, stock,
      price, isActive, imageUrl, barcode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      __$$ProductEntityImplCopyWithImpl<_$ProductEntityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            @JsonKey(name: 'category_id')
            @StringToIntConverter()
            int categoryId,
            String name,
            @StringToIntConverter() int stock,
            @StringToIntConverter() int price,
            @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl,
            String? barcode)
        entity,
  }) {
    return entity(
        id, categoryId, name, stock, price, isActive, imageUrl, barcode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int id,
            @JsonKey(name: 'category_id')
            @StringToIntConverter()
            int categoryId,
            String name,
            @StringToIntConverter() int stock,
            @StringToIntConverter() int price,
            @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl,
            String? barcode)?
        entity,
  }) {
    return entity?.call(
        id, categoryId, name, stock, price, isActive, imageUrl, barcode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            @JsonKey(name: 'category_id')
            @StringToIntConverter()
            int categoryId,
            String name,
            @StringToIntConverter() int stock,
            @StringToIntConverter() int price,
            @JsonKey(name: 'is_active') @BoolFromIntConverter() bool isActive,
            @JsonKey(name: 'image_url') String? imageUrl,
            String? barcode)?
        entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(
          id, categoryId, name, stock, price, isActive, imageUrl, barcode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ProductEntity value) entity,
  }) {
    return entity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ProductEntity value)? entity,
  }) {
    return entity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ProductEntity value)? entity,
    required TResult orElse(),
  }) {
    if (entity != null) {
      return entity(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductEntityImplToJson(
      this,
    );
  }
}

abstract class ProductEntity implements Product {
  const factory ProductEntity(
      {required final int id,
      @JsonKey(name: 'category_id')
      @StringToIntConverter()
      required final int categoryId,
      required final String name,
      @StringToIntConverter() required final int stock,
      @StringToIntConverter() required final int price,
      @JsonKey(name: 'is_active')
      @BoolFromIntConverter()
      required final bool isActive,
      @JsonKey(name: 'image_url') final String? imageUrl,
      final String? barcode}) = _$ProductEntityImpl;

  factory ProductEntity.fromJson(Map<String, dynamic> json) =
      _$ProductEntityImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'category_id')
  @StringToIntConverter()
  int get categoryId;
  @override
  String get name;
  @override
  @StringToIntConverter()
  int get stock;
  @override
  @StringToIntConverter()
  int get price;
  @override
  @JsonKey(name: 'is_active')
  @BoolFromIntConverter()
  bool get isActive;
  @override
  @JsonKey(name: 'image_url')
  String? get imageUrl;
  @override
  String? get barcode;
  @override
  @JsonKey(ignore: true)
  _$$ProductEntityImplCopyWith<_$ProductEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductItemOrderEntity _$ProductItemOrderEntityFromJson(
    Map<String, dynamic> json) {
  return _ProductItemOrderEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductItemOrderEntity {
  @JsonKey(name: 'product_id', fromJson: _safeParseInt)
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity', fromJson: _safeParseInt)
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price', fromJson: _safeParseInt)
  int get price => throw _privateConstructorUsedError;
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _safeParseNullableInt)
  int? get stock => throw _privateConstructorUsedError;

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
      {@JsonKey(name: 'product_id', fromJson: _safeParseInt) int id,
      @JsonKey(name: 'product_name') String name,
      @JsonKey(name: 'quantity', fromJson: _safeParseInt) int quantity,
      @JsonKey(name: 'unit_price', fromJson: _safeParseInt) int price,
      String? barcode,
      @JsonKey(fromJson: _safeParseNullableInt) int? stock});
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
    Object? id = null,
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? barcode = freezed,
    Object? stock = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: 'product_id', fromJson: _safeParseInt) int id,
      @JsonKey(name: 'product_name') String name,
      @JsonKey(name: 'quantity', fromJson: _safeParseInt) int quantity,
      @JsonKey(name: 'unit_price', fromJson: _safeParseInt) int price,
      String? barcode,
      @JsonKey(fromJson: _safeParseNullableInt) int? stock});
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
    Object? id = null,
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? barcode = freezed,
    Object? stock = freezed,
  }) {
    return _then(_$ProductItemOrderEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductItemOrderEntityImpl implements _ProductItemOrderEntity {
  const _$ProductItemOrderEntityImpl(
      {@JsonKey(name: 'product_id', fromJson: _safeParseInt) required this.id,
      @JsonKey(name: 'product_name') required this.name,
      @JsonKey(name: 'quantity', fromJson: _safeParseInt)
      required this.quantity,
      @JsonKey(name: 'unit_price', fromJson: _safeParseInt) required this.price,
      this.barcode,
      @JsonKey(fromJson: _safeParseNullableInt) this.stock});

  factory _$ProductItemOrderEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductItemOrderEntityImplFromJson(json);

  @override
  @JsonKey(name: 'product_id', fromJson: _safeParseInt)
  final int id;
  @override
  @JsonKey(name: 'product_name')
  final String name;
  @override
  @JsonKey(name: 'quantity', fromJson: _safeParseInt)
  final int quantity;
  @override
  @JsonKey(name: 'unit_price', fromJson: _safeParseInt)
  final int price;
  @override
  final String? barcode;
  @override
  @JsonKey(fromJson: _safeParseNullableInt)
  final int? stock;

  @override
  String toString() {
    return 'ProductItemOrderEntity(id: $id, name: $name, quantity: $quantity, price: $price, barcode: $barcode, stock: $stock)';
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
            (identical(other.price, price) || other.price == price) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.stock, stock) || other.stock == stock));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, quantity, price, barcode, stock);

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
          {@JsonKey(name: 'product_id', fromJson: _safeParseInt)
          required final int id,
          @JsonKey(name: 'product_name') required final String name,
          @JsonKey(name: 'quantity', fromJson: _safeParseInt)
          required final int quantity,
          @JsonKey(name: 'unit_price', fromJson: _safeParseInt)
          required final int price,
          final String? barcode,
          @JsonKey(fromJson: _safeParseNullableInt) final int? stock}) =
      _$ProductItemOrderEntityImpl;

  factory _ProductItemOrderEntity.fromJson(Map<String, dynamic> json) =
      _$ProductItemOrderEntityImpl.fromJson;

  @override
  @JsonKey(name: 'product_id', fromJson: _safeParseInt)
  int get id;
  @override
  @JsonKey(name: 'product_name')
  String get name;
  @override
  @JsonKey(name: 'quantity', fromJson: _safeParseInt)
  int get quantity;
  @override
  @JsonKey(name: 'unit_price', fromJson: _safeParseInt)
  int get price;
  @override
  String? get barcode;
  @override
  @JsonKey(fromJson: _safeParseNullableInt)
  int? get stock;
  @override
  @JsonKey(ignore: true)
  _$$ProductItemOrderEntityImplCopyWith<_$ProductItemOrderEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
