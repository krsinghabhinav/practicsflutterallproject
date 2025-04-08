import 'package:flutter/material.dart';

class ActiveUsersScreen extends StatelessWidget {
  final List<String> usernames = ["Alice", "Bob", "Charlie", "David", "Emma"];
  final List<bool> activeStatus = [true, false, true, true, false];

  List<String> getActiveUsers() {
    List<String> activeUsers = [];
    for (int i = 0; i < usernames.length; i++) {
      if (activeStatus[i]) {
        activeUsers.add(usernames[i]);
      }
    }
    return activeUsers;
  }

  @override
  Widget build(BuildContext context) {
    List<String> activeUsers = getActiveUsers();

    return Scaffold(
      appBar: AppBar(title: Text("Active Users")),
      body: ListView.builder(
        itemCount: activeUsers.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.circle, color: Colors.green), // Active indicator
            title: Text(activeUsers[index], style: TextStyle(fontSize: 18)),
          );
        },
      ),
    );
  }
}

