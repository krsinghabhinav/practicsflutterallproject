import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:practicsflutterallproject/getxpractic/controller/test1.dart';

class Test1 extends StatefulWidget {
  const Test1({super.key});

  @override
  State<Test1> createState() => _Test1State();
}

class _Test1State extends State<Test1> {
  Test1Controller test1controller = Get.put(Test1Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("increment value"),
      ),
      body: Column(
        children: [
          Obx(() => Text(test1controller.changeIndex.value.toString())),
          ElevatedButton(
              onPressed: () {
                test1controller.changeIndex.value++;
              },
              child: Text("Change the value"))
        ],
      ),
    );
  }
}
