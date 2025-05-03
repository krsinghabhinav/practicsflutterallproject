// file: screens/string_getx_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'StringController.dart';

class StringGetxScreen extends StatelessWidget {
  final StringController controller = Get.put(StringController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("GetX String Example")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: controller.nameController,
              decoration: InputDecoration(labelText: "Enter your name"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: controller.handleGreeting,
              child: Text("Greet"),
            ),
            SizedBox(height: 20),
            
            // Error message
            Obx(() => Text(
              controller.error.value,
              style: TextStyle(color: Colors.red),
            )),

            // Greeting message
            Obx(() => Text(
              controller.greeting.value,
              style: TextStyle(fontSize: 18),
            )),
          ],
        ),
      ),
    );
  }
}
  