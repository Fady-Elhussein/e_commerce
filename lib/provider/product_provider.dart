import 'package:e_commerce/model/poroduct_model.dart';
import 'package:e_commerce/services/product_services.dart';
import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  ProductModel? productModel;
 Future<void> getAllProducts() async {
    productModel = await ProductServices.getAllProducts();
    notifyListeners();
  }
}
