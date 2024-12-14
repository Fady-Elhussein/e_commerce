import 'package:e_commerce/provider/product_provider.dart';
import 'package:e_commerce/screens/products_details_screen.dart';
import 'package:e_commerce/widgets/products_iteam.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products",
          style: TextStyle(color: Colors.orangeAccent),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<ProductProvider>(
          builder: (context, productsProviderObject, child) {
            var productModelObject = productsProviderObject.productModel;
            if (productModelObject == null) {
              productsProviderObject.getAllProducts();
              return const Center(child: CircularProgressIndicator());
            } else {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisSpacing: 2, crossAxisSpacing: 4),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductsDetailsScreen(
                            productImage: productModelObject.products[index]
                                ["image"],
                            productName: productModelObject.products[index]
                                ["name"],
                            productDescription: productModelObject
                                .products[index]["description"],
                            productPrice: productModelObject.products[index]
                                ["price"],
                          ),
                        ));
                  },
                  child: ProductsIteam(
                      productImage: productModelObject.products[index]["image"],
                      productName: productModelObject.products[index]["name"],
                      productPrice: productModelObject.products[index]
                          ["price"]),
                ),
                itemCount: productModelObject.products.length,
              );
            }
          },
        ),
      ),
    );
  }
}
