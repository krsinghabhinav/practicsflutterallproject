import 'package:flutter/material.dart';

class Dialogwidget extends StatefulWidget {
  const Dialogwidget({super.key});

  @override
  State<Dialogwidget> createState() => _DialogwidgetState();
}

class _DialogwidgetState extends State<Dialogwidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialog'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AboutDialog(
                applicationName: 'Flutter App',
                applicationVersion: '1.0.0',
                applicationIcon: FlutterLogo(),
                children: [Text("this is a text create by flutter mapp")],
              ),
            );
          },
          child: Text("show About Dialog"),
        ),
      ),
    );
  }
}
