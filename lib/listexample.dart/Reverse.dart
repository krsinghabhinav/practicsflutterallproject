import 'package:flutter/material.dart';

class ReverseTask extends StatefulWidget {
  @override
  _ReverseTaskState createState() => _ReverseTaskState();
}

class _ReverseTaskState extends State<ReverseTask> {
  List<String> tasks = [
    'Wake up',
    'Go to gym',
    'Study Flutter',
    'Work on project'
  ];

  void reverseTasks() {
    setState(() {
      tasks = tasks.reversed.toList(); // Reverse the task list
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager")),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: reverseTasks,
            child: Text("Reverse Tasks"),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(tasks[index]),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
