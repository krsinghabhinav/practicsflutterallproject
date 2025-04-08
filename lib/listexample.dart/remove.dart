import 'package:flutter/material.dart';

class RemoveTodoScreen extends StatefulWidget {
  @override
  _RemoveTodoScreenState createState() => _RemoveTodoScreenState();
}

class _RemoveTodoScreenState extends State<RemoveTodoScreen> {
  List<String> tasks = ['Buy groceries', 'Walk the dog', 'Read a book'];
  TextEditingController taskController = TextEditingController();

  void addTask() {
    if (taskController.text.isNotEmpty) {
      setState(() {
        tasks.add(taskController.text); // Adding task to the list
      });
      taskController.clear();
    }
  }

  void removeTask(int index) {
    setState(() {
      tasks.removeAt(index); // Removing task at given index
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("To-Do List")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: taskController,
                    decoration: InputDecoration(hintText: "Enter a task"),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: addTask,
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
                  trailing: IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () => removeTask(index), // Remove task at index
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
