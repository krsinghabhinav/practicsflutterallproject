import 'package:flutter/material.dart';

class CheckboxValidationScreen extends StatefulWidget {
  @override
  _CheckboxValidationScreenState createState() =>
      _CheckboxValidationScreenState();
}

class _CheckboxValidationScreenState extends State<CheckboxValidationScreen> {
  bool isChecked = false; // ✅ Checkbox ka initial state false

  void validateAndSubmit() {
    if (isChecked) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Form Submitted Successfully ✅")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Checkbox Validation")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CheckboxListTile(
              title: Text("I agree to the Terms & Conditions"),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: isChecked ? validateAndSubmit : null, // ✅ Condition
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
