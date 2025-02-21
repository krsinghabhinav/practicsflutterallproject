import 'package:flutter/material.dart';

class Animationdefaulttextstyle extends StatefulWidget {
  const Animationdefaulttextstyle({super.key});

  @override
  State<Animationdefaulttextstyle> createState() =>
      _AnimationdefaulttextstyleState();
}

class _AnimationdefaulttextstyleState extends State<Animationdefaulttextstyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animation Default Text Style'),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: AnimatedDefaultTextStyle(
              child: Text("hello flutter animation textstyle"),
              style: TextStyle(color: Colors.red),
              duration: Duration(seconds: 2),
            ),
          ),
        ],
      ),
    );
  }
}
