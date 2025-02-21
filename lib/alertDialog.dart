import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Alertdialog extends StatelessWidget {
  const Alertdialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                backgroundColor: const Color.fromARGB(255, 8, 236, 58),
                title: Align(
                  alignment: Alignment.centerLeft, // Align title to the start
                  child: const Text("Flutter Mapp"),
                ),
                icon: const FlutterLogo(),
                content: const Text("This is the Alert Dialog"),
                actions: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: TextButton(
                      onPressed: () {
                        Get.back(); // Close dialog
                      },
                      child: const Text("Close"),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    child: TextButton(
                      onPressed: () {
                        Get.back(); // Close dialog
                      },
                      child: const Text(
                        "Ok",
                        style: TextStyle(
                            color: Colors.white), // White text for visibility
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          child: const Text("Show Alert Dialog"),
        ),
      ),
    );
  }
}
