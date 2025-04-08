import 'package:flutter/material.dart';



class JobApplicationForm extends StatefulWidget {
  @override
  _JobApplicationFormState createState() => _JobApplicationFormState();
}

class _JobApplicationFormState extends State<JobApplicationForm> {
  String? selectedJobRole; // ✅ Null initially
  final _formKey = GlobalKey<FormState>(); // ✅ Form key for validation

  void submitForm() {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Form Submitted Successfully ✅")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Job Application")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Select Your Job Role", style: TextStyle(fontSize: 18)),
              DropdownButtonFormField<String>(
                value: selectedJobRole,
                decoration: InputDecoration(border: OutlineInputBorder()),
                hint: Text("Choose a role"),
                items: ["Developer", "Designer", "Manager", "Tester"]
                    .map((role) => DropdownMenuItem(value: role, child: Text(role)))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedJobRole = value;
                  });
                },
                validator: (value) =>
                    value == null ? "Please select a job role ❌" : null,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: submitForm,
                child: Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
