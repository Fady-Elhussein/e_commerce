import 'package:flutter/material.dart';

class ProductsDetailsScreen extends StatelessWidget {
  String productImage;
  String productName;
  String productDescription;
  dynamic productPrice;
  ProductsDetailsScreen({
    super.key,
    required this.productImage,
    required this.productName,
    required this.productDescription,
    required this.productPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          productName,
          style: const TextStyle(color: Colors.orange),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.network(productImage),
            Text(
              "$productPrice .LE",
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(
              productName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),
            Text(productDescription),
          ],
        ),
      ),
    );
  }
}
