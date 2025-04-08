import 'package:flutter/material.dart';

class TextAlignmentScreen extends StatefulWidget {
  @override
  _TextAlignmentScreenState createState() => _TextAlignmentScreenState();
}

class _TextAlignmentScreenState extends State<TextAlignmentScreen> {
  TextAlign _textAlign = TextAlign.left; // ✅ Default alignment (Left)
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dynamic Text Alignment")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter some text...",
              ),
              textAlign: _textAlign, // ✅ Change text alignment dynamically
            ),
            SizedBox(height: 20),

            // Alignment Selection Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textAlign = TextAlign.left;
                    });
                  },
                  child: Text("Left"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textAlign = TextAlign.center;
                    });
                  },
                  child: Text("Center"),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _textAlign = TextAlign.right;
                    });
                  },
                  child: Text("Right"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
