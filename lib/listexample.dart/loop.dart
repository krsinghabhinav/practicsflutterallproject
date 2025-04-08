import 'package:flutter/material.dart';


class ProductListScreen extends StatelessWidget {
  final List<String> products = ["Laptop", "Phone", "Tablet", "Headphones"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text(products[index]),
          );
        },
      ),
    );
  }
}
