import 'package:flutter/material.dart';



class CartScreenLength extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreenLength> {
  List<String> cartItems = ['Laptop', 'Phone', 'Headphones'];

  void addItem() {
    setState(() {
      cartItems.add('New Item'); // Adding an item
    });
  }

  void removeItem(int index) {
    setState(() {
      cartItems.removeAt(index); // Removing an item
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Cart"),
        actions: [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Items: ${cartItems.length}", // Displaying list length
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(cartItems[index]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => removeItem(index),
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: addItem,
            child: Text("Add Item"),
          ),
        ],
      ),
    );
  }
}
