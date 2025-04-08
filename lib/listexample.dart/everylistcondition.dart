import 'package:flutter/material.dart';

class everyTaskScreen extends StatefulWidget {
  @override
  _everyTaskScreenState createState() => _everyTaskScreenState();
}

class _everyTaskScreenState extends State<everyTaskScreen> {
  List<Map<String, dynamic>> tasks = [
    {"task": "Buy groceries", "completed": true},
    {"task": "Exercise", "completed": false},
    {"task": "Study Flutter", "completed": true},
    {"task": "Read a book", "completed": true},
  ];

  bool allTasksCompleted() {
    return tasks.every((task) => task["completed"] == true);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task List")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              setState(() {
                tasks[1]["completed"] = true; // Marking "Exercise" as completed
              });
            },
            child: Text("Complete Exercise Task"),
          ),
          Text(
            allTasksCompleted()
                ? "🎉 All tasks are completed!"
                : "❗ Some tasks are pending",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]["task"]),
                  trailing: Icon(
                    tasks[index]["completed"]
                        ? Icons.check_circle
                        : Icons.cancel,
                    color:
                        tasks[index]["completed"] ? Colors.green : Colors.red,
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
