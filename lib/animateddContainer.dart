import 'package:flutter/material.dart';

class Animateddcontainer extends StatefulWidget {
  const Animateddcontainer({super.key});

  @override
  State<Animateddcontainer> createState() => _AnimateddcontainerState();
}

class _AnimateddcontainerState extends State<Animateddcontainer>
    with TickerProviderStateMixin {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            width: selected ? 100 : 300,
            height: selected ? 200 : 500,
            duration: Duration(seconds: 5),
            color: selected ? Colors.red : Colors.blue,
            alignment: selected ? Alignment.center : Alignment.topRight,
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(),
          ),
        ),
      ),
    );
  }
}
