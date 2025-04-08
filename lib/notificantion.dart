import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  List<String> notifications = [
    'one',
    'two'
  ]; // ✅ Empty list (No notifications)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: Column(
        children: [
          notifications.isEmpty
              ? Center(
                  child: Text(
                    "No new notifications 🎉",
                    style: TextStyle(fontSize: 18, color: Colors.grey),
                  ),
                )
              : Flexible(
                  child: ListView.builder(
                    itemCount: notifications.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(notifications[index]),
                        leading: Icon(Icons.notifications),
                      );
                    },
                  ),
                ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  notifications.add('Notification ${notifications.length + 1}');
                });
              },
              child: Text("click"))
        ],
      ),
    );
  }
}
