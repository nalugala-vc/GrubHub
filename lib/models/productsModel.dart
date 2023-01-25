class Product {
  int? _totalSize;
  int? _typeId;
  int? _offset;

  late List<ProductModel> _products;
  List<ProductModel> get products => _products;

  Product(
      {required offset,
      required totalSize,
      required typeId,
      required products}) {
    this._offset = offset;
    this._products = products;
    this._totalSize = totalSize;
    this._typeId = typeId;
  }

  Product.fromJson(Map<String, dynamic> json) {
    _offset = json['offset'];
    _totalSize = json['total_size'];
    _typeId = json['type_id'];

    if (json['products'] != null) {
      _products = <ProductModel>[];
      json['products'].forEach((v) {
        _products.add(ProductModel.fromJson(v));
      });
    }
  }
}

class ProductModel {
  int? id;
  String? name;
  String? description;
  int? price;
  int? stars;
  String? img;
  String? location;
  String? createdAt;
  String? updatedAt;
  int? typeId;

  ProductModel(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stars,
      this.img,
      this.location,
      this.createdAt,
      this.updatedAt,
      this.typeId});

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    stars = json['stars'];
    img = json['img'];
    location = json['location'];
    createdAt = json['created_At'];
    typeId = json['type_id'];
  }
}
