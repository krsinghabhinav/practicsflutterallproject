import 'package:flutter/material.dart';



class ToDoApp extends StatefulWidget {
  @override
  _ToDoAppState createState() => _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp> {
  List<Map<String, dynamic>> tasks = [
    {"task": "Complete Flutter project", "isCompleted": false},
    {"task": "Buy groceries", "isCompleted": true},
    {"task": "Go for a walk", "isCompleted": false},
  ];

  void toggleTask(int index) {
    setState(() {
      tasks[index]["isCompleted"] = !tasks[index]["isCompleted"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              tasks[index]["task"],
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: tasks[index]["isCompleted"] ? Colors.green : Colors.red, // ✅ Condition applied
                decoration: tasks[index]["isCompleted"]
                    ? TextDecoration.lineThrough
                    : TextDecoration.none, // ✅ Strike-through if completed
              ),
            ),
            trailing: IconButton(
              icon: Icon(
                tasks[index]["isCompleted"] ? Icons.check_circle : Icons.circle_outlined,
                color: tasks[index]["isCompleted"] ? Colors.green : Colors.grey,
              ),
              onPressed: () => toggleTask(index),
            ),
          );
        },
      ),
    );
  }
}
