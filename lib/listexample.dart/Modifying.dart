import 'package:flutter/material.dart';

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class ProductListScreen extends StatelessWidget {
  final List<Product> products = [
    Product("Laptop", 1000),
    Product("Phone", 500),
    Product("Tablet", 300),
  ];

  void applyDiscount() {
    for (int i = 0; i < products.length; i++) {
      products[i].price *= 0.9; // Apply a 10% discount
    }
  }

  @override
  Widget build(BuildContext context) {
    applyDiscount(); // Modify product prices before displaying

    return Scaffold(
      appBar: AppBar(title: Text("Discounted Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text("\$${products[index].price.toStringAsFixed(2)}"),
          );
        },
      ),
    );
  }
}
