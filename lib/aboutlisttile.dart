import 'package:flutter/material.dart';

class Aboutlisttile extends StatelessWidget {
  const Aboutlisttile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: AboutListTile(
        icon: const Icon(Icons.info),
        applicationIcon: FlutterLogo(),
        applicationName: "Flutter info",
        applicationVersion: "1.0.2",
        applicationLegalese: "This is some legal notice ",
        aboutBoxChildren: [
          const Text('this is a text create by flutter mapp '),
        ],
        child: Text(
            "Yeh ek spacing maintain karne ke liye diya gaya hai IconButton aur next widget ke beech me 5 \n pixels ka gap dene ke liye."),
      ),
    );
  }
}
