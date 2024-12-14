// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProductsIteam extends StatelessWidget {
  String productImage;
  String productName;
  dynamic productPrice;
  ProductsIteam({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 50,
            child: Image.network(productImage),
          ),
          Text(
            "$productPrice .LE",
            style: const TextStyle(
              color: Colors.orange,
            ),
          ),
          Text(productName),
        ],
      ),
    );
  }
}
