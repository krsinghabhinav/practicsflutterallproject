import 'package:flutter/material.dart';

class AscendingProductScreen extends StatefulWidget {
  @override
  _AscendingProductScreenState createState() => _AscendingProductScreenState();
}

class _AscendingProductScreenState extends State<AscendingProductScreen> {
  List<Map<String, dynamic>> products = [
    {"name": "Shoes", "price": 1200},
    {"name": "Watch", "price": 1800},
    {"name": "Bag", "price": 800},
    {"name": "Laptop", "price": 45000},
    {"name": "Phone", "price": 25000},
  ];

  void sortProductsByPrice() {
    setState(() {
      products
          .sort((a, b) => a["price"].compareTo(b["price"])); // Sorting by price
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Price List")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: sortProductsByPrice,
            child: Text("Sort by Price (Ascending)"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(products[index]["name"]),
                  subtitle: Text("₹${products[index]["price"]}"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
