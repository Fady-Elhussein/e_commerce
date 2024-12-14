import 'package:dio/dio.dart';
import 'package:e_commerce/model/poroduct_model.dart';

class ProductServices {
  static Dio dio = Dio();

  static Future<ProductModel> getAllProducts() async {
    try {
      Response response =
          await dio.get("https://student.valuxapps.com/api/home");

      if (response.statusCode == 200) {
        return ProductModel.fromJson(response.data);
      } else {
        throw Exception("There is an Error");
      }
    } catch (e) {
      throw Exception("There is an Error : $e");
    }
  }
}
