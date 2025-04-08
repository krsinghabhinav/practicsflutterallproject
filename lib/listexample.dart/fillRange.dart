import 'package:flutter/material.dart';



class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  List<String> answers = ["A", "B", "C", "D", "E"];

  void resetAnswers() {
    setState(() {
      answers.fillRange(0, answers.length, "Not Answered"); // Reset all answers
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz App")),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: answers.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Question ${index + 1}"),
                  subtitle: Text("Answer: ${answers[index]}"),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: resetAnswers,
            child: Text("Reset Answers"),
          ),
        ],
      ),
    );
  }
}
