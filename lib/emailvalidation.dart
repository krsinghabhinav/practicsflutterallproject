import 'package:flutter/material.dart';


class EmailValidationForm extends StatefulWidget {
  @override
  _EmailValidationFormState createState() => _EmailValidationFormState();
}

class _EmailValidationFormState extends State<EmailValidationForm> {
  final TextEditingController _emailController = TextEditingController();
  String? errorMessage;

  bool isValidEmail(String email) {
    return RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
        .hasMatch(email); // ✅ Email format check karega
  }

  void validateInput() {
    setState(() {
      if (_emailController.text.isEmpty) {
        errorMessage = "Email is required!";
      } else if (!isValidEmail(_emailController.text)) {
        errorMessage = "Please enter a valid email!";
      } else {
        errorMessage = null;
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Email is valid ✅")),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Email Validation")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Enter Email",
                errorText: errorMessage, // ✅ Agar error hai toh yaha show hoga
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: validateInput,
              child: Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
