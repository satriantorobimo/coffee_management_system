import 'package:json_annotation/json_annotation.dart';
part 'product.g.dart';

@JsonSerializable()
class ProductModel {
  ProductModel({this.product, this.object});
  String product;
  List<ProductObject> object;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

@JsonSerializable()
class ProductObject {
  ProductObject({this.id, this.name, this.price});

  String id;
  String name;
  int price;

  factory ProductObject.fromJson(Map<String, dynamic> json) =>
      _$ProductObjectFromJson(json);
  Map<String, dynamic> toJson() => _$ProductObjectToJson(this);
}
