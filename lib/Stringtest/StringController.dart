// file: controllers/string_controller.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StringController extends GetxController {
  TextEditingController nameController = TextEditingController();

  var greeting = "".obs;
  var error = "".obs;

  void handleGreeting() {
    String input = nameController.text.trim();

    if (input.isEmpty) {
      error.value = "Name can't be empty.";
      greeting.value = "";
    } else if (input.length < 3) {
      error.value = "Name is too short.";
      greeting.value = "";
    } else {
      error.value = "";
      greeting.value = "Hello, $input! Welcome to our app.";
    }
  }

  @override
  void onClose() {
    nameController.dispose();
    super.onClose();
  }
}
