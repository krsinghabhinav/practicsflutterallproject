import 'package:flutter/material.dart';



class InsterItemPositionTaskScreen extends StatefulWidget {
  @override
  _InsterItemPositionTaskScreenState createState() => _InsterItemPositionTaskScreenState();
}

class _InsterItemPositionTaskScreenState extends State<InsterItemPositionTaskScreen> {
  List<String> tasks = ['Task 1', 'Task 2', 'Task 3'];
  TextEditingController taskController = TextEditingController();
  TextEditingController positionController = TextEditingController();

  void insertTask() {
    if (taskController.text.isNotEmpty && positionController.text.isNotEmpty) {
      int index = int.tryParse(positionController.text) ?? tasks.length;
      if (index >= 0 && index <= tasks.length) {
        setState(() {
          tasks.insert(index, taskController.text); // Inserting task at index
        });
        taskController.clear();
        positionController.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Invalid position! Enter between 0 and ${tasks.length}")),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task Manager")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextField(
                  controller: taskController,
                  decoration: InputDecoration(hintText: "Enter a task"),
                ),
                TextField(
                  controller: positionController,
                  decoration: InputDecoration(hintText: "Enter position (0-${tasks.length})"),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: insertTask,
                  child: Text("Insert Task"),
                ),
              ],
            ),
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
