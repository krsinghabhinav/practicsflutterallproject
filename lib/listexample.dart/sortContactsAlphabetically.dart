import 'package:flutter/material.dart';

class AlphabeticallyContactScreen extends StatefulWidget {
  @override
  _AlphabeticallyContactScreenState createState() =>
      _AlphabeticallyContactScreenState();
}

class _AlphabeticallyContactScreenState
    extends State<AlphabeticallyContactScreen> {
  List<String> contacts = ["Zara", "Mohan", "Amit", "Sita", "Rahul"];

  void sortContactsAlphabetically() {
    setState(() {
      contacts.sort(); // Sorting in alphabetical order (A-Z)
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Contact List")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: sortContactsAlphabetically,
            child: Text("Sort Alphabetically (A-Z)"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(contacts[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
