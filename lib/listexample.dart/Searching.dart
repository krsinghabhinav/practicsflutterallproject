import 'package:flutter/material.dart';

class UserSearchScreen extends StatefulWidget {
  @override
  _UserSearchScreenState createState() => _UserSearchScreenState();
}

class _UserSearchScreenState extends State<UserSearchScreen> {
  List<String> users = ["Abhinav", "Rohan", "Sita", "Kiran"];
  TextEditingController searchController = TextEditingController();
  String resultMessage = "";

  void searchUser() {
    String query = searchController.text.trim();
    int index =
        users.indexWhere((user) => user.toLowerCase() == query.toLowerCase());

    setState(() {
      resultMessage =
          index == -1 ? "User not found" : "User found at index: $index";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Search User")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextField(
              controller: searchController,
              decoration: InputDecoration(
                labelText: "Enter user name",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: searchUser,
              child: Text("Search"),
            ),
            SizedBox(height: 10),
            Text(
              resultMessage,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
