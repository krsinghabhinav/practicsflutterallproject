import 'package:flutter/material.dart';



class PlaceholderListScreen extends StatefulWidget {
  @override
  _PlaceholderListScreenState createState() => _PlaceholderListScreenState();
}

class _PlaceholderListScreenState extends State<PlaceholderListScreen> {
  List<String> items = List.filled(5, "Loading..."); // Default values
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 3)); // Simulate API delay

    setState(() {
      items = ["Apple", "Banana", "Mango", "Grapes", "Pineapple"];
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product List")),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.fastfood),
            title: Text(items[index]),
            subtitle: Text(isLoading ? "Fetching data..." : "Available"),
          );
        },
      ),
    );
  }
}
