// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    product: json['product'] as String,
    object: (json['object'] as List)
        ?.map((e) => e == null
            ? null
            : ProductObject.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'product': instance.product,
      'object': instance.object,
    };

ProductObject _$ProductObjectFromJson(Map<String, dynamic> json) {
  return ProductObject(
    id: json['id'] as String,
    name: json['name'] as String,
    price: json['price'] as int,
  );
}

Map<String, dynamic> _$ProductObjectToJson(ProductObject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
    };
