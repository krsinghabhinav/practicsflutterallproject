import 'package:flutter/material.dart';

class Absorbpointer extends StatefulWidget {
  const Absorbpointer({super.key});

  @override
  State<Absorbpointer> createState() => _AbsorbpointerState();
}

class _AbsorbpointerState extends State<Absorbpointer> {
  Color buttonColor = Colors.blue; // Default color

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AbsorbPointer Demo'),
      ),
      body: Column(
        children: [
          Center(
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  buttonColor = Colors.red; // Change color on hover
                });
              },
              onExit: (_) {
                setState(() {
                  buttonColor = Colors.blue; // Revert color when mouse leaves
                });
              },
              child: Expanded(
                child: Stack(alignment: Alignment.center, children: [
                  SizedBox(
                    width: 300,
                    height: 90,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor),
                      onPressed: () {},
                      child: const Text("Hover Me"),
                    ),
                  ),
                  MouseRegion(
                    onEnter: (_) {
                      setState(() {
                        buttonColor = const Color.fromARGB(
                            255, 53, 25, 209); // Change color on hover
                      });
                    },
                    onExit: (_) {
                      setState(() {
                        buttonColor = const Color.fromARGB(
                            255, 54, 244, 63); // Change color on hover
                      });
                    },
                    child: SizedBox(
                      width: 80,
                      height: 300,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: buttonColor),
                        onPressed: () {},
                        child: const Text("Hover Me"),
                      ),
                    ),
                  )
                ]),
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                SizedBox(
                  width: 300,
                  height: 90,
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: buttonColor),
                    onPressed: () {},
                    child: const Text("Hover Me"),
                  ),
                ),
                SizedBox(
                  width: 80,
                  height: 300,
                  child: AbsorbPointer(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: buttonColor),
                      onPressed: () {
                        setState(() {
                          buttonColor =
                              Colors.green; // Change color when clicked
                        });
                      },
                      child: null,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
