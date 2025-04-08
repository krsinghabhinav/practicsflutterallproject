import 'package:flutter/material.dart';

class ProductSearchScreen extends StatefulWidget {
  @override
  _ProductSearchScreenState createState() => _ProductSearchScreenState();
}

class _ProductSearchScreenState extends State<ProductSearchScreen> {
  List<Map<String, dynamic>> products = [
    {"name": "Laptop", "price": 800},
    {"name": "Phone", "price": 500},
    {"name": "Tablet", "price": 300},
    {"name": "Smartwatch", "price": 200},
    {"name": "Headphones", "price": 150},
  ];

  List<Map<String, dynamic>> filteredProducts = [];

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredProducts = products; // Show all products initially
  }

  void filterProducts(String query) {
    setState(() {
      filteredProducts = products.where((product) {
        return product["name"].toLowerCase().contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search Products")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              onChanged: filterProducts,
              decoration: InputDecoration(
                labelText: "Search for a product...",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.search),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredProducts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(filteredProducts[index]["name"]),
                  subtitle: Text("\$${filteredProducts[index]["price"]}"),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
