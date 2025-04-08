import 'package:flutter/material.dart';

class Renderwidgetpage extends StatefulWidget {
  @override
  _RenderwidgetpageState createState() => _RenderwidgetpageState();
}

class _RenderwidgetpageState extends State<Renderwidgetpage> {
  @override
  void initState() {
    super.initState();

    // Ensure widget has finished rendering before running this
    WidgetsBinding.instance.addPostFrameCallback((_) {
      showSnackBarMessage();
    });
  }

  // Function to show Snackbar after rendering
  void showSnackBarMessage() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("🎉 Widget Render Ho Chuka Hai!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Render Check Example")),
      body: Center(child: Text("👋 Hello, Flutter!")),
    );
  }
}
