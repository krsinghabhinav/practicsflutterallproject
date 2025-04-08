import 'package:flutter/material.dart';


class Atleastoneelementsatisfies extends StatefulWidget {
  @override
  _AtleastoneelementsatisfiesState createState() => _AtleastoneelementsatisfiesState();
}

class _AtleastoneelementsatisfiesState extends State<Atleastoneelementsatisfies> {
  List<Map<String, dynamic>> products = [
    {"name": "Apple", "stock": 10},
    {"name": "Banana", "stock": 0},
    {"name": "Mango", "stock": 5},
    {"name": "Grapes", "stock": 8},
  ];

  bool isAnyOutOfStock() {
    return products.any((product) => product["stock"] == 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: Column(
        children: [
          Text(
            isAnyOutOfStock() ? "⚠️ Some products are out of stock!" : "✅ All products are available",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(products[index]["name"]),
                  trailing: Text(
                    products[index]["stock"] > 0 ? "In Stock" : "Out of Stock",
                    style: TextStyle(
                      color: products[index]["stock"] > 0 ? Colors.green : Colors.red,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
