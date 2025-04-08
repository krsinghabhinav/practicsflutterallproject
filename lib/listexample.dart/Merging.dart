import 'package:flutter/material.dart';

class ProductScreen extends StatefulWidget {
  @override
  _ProductScreenState createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  List<String> newArrivals = ['Shoes', 'Watch', 'Bag'];
  List<String> bestSellers = ['Laptop', 'Headphones', 'Phone'];

  List<String> mergedProducts = []; // Merged list

  void mergeLists() {
    setState(() {
      mergedProducts = [
        ...newArrivals,
        ...bestSellers
      ]; // Merge using spread operator
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: mergeLists,
            child: Text("Merge Product Lists"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: mergedProducts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(mergedProducts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
