import 'package:flutter/material.dart';

class Removingduplicates extends StatefulWidget {
  @override
  _RemovingduplicatesState createState() => _RemovingduplicatesState();
}

class _RemovingduplicatesState extends State<Removingduplicates> {
  List<String> cart = ["Apple", "Banana", "Apple", "Mango", "Banana", "Grapes"];

  @override
  Widget build(BuildContext context) {
    // Convert list to set to remove duplicates and then back to list
    List<String> uniqueCart = cart.toSet().toList();

    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: ListView.builder(
        itemCount: uniqueCart.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(uniqueCart[index]),
          );
        },
      ),
    );
  }
}
