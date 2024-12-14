class ProductModel {
  List<dynamic> products;

  ProductModel({
    required this.products,
  });
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(products: json["data"]["products"]);
  }
}
