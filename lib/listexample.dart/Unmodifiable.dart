import 'package:flutter/material.dart';

class UnmodifiableProduct extends StatelessWidget {
  // Unmodifiable product list (e.g., fetched from API)
  final List<Map<String, dynamic>> products = List.unmodifiable([
    {"name": "Laptop", "price": 800},
    {"name": "Phone", "price": 500},
    {"name": "Tablet", "price": 300},
  ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]["name"]),
            subtitle: Text("\$${products[index]["price"]}"),
          );
        },
      ),
    );
  }
}
