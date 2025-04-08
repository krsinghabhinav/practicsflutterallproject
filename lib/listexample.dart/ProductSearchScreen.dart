import 'package:flutter/material.dart';

class ProductSearchScreen extends StatefulWidget {
  @override
  _ProductSearchScreenState createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  List<Map<String, dynamic>> products = [
    {"id": 1, "name": "Laptop", "price": 800},
    {"id": 2, "name": "Phone", "price": 500},
    {"id": 3, "name": "Tablet", "price": 300},
  ];

  TextEditingController searchController = TextEditingController();
  Map<String, dynamic>? selectedProduct;

  void findProductById(String query) {
    int? id = int.tryParse(query); // Convert input to int
    if (id != null) {
      try {
        setState(() {
          selectedProduct = products.firstWhere(
            (p) => p["id"] == id,
            orElse: () => {"id": 0, "name": "Product Not Found", "price": 0},
          );
        });
      } catch (e) {
        print("Error: $e");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Find Product by ID")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              keyboardType: TextInputType.number,
              onChanged: findProductById,
              decoration: InputDecoration(
                labelText: "Enter Product ID",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          if (selectedProduct != null) ...[
            ListTile(
              title: Text("Name: ${selectedProduct!["name"]}"),
              subtitle: Text("Price: \$${selectedProduct!["price"]}"),
            ),
          ],
        ],
      ),
    );
  }
}
