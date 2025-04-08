import 'package:flutter/material.dart';

class ScrollFabExample extends StatefulWidget {
  @override
  _ScrollFabExampleState createState() => _ScrollFabExampleState();
}

class _ScrollFabExampleState extends State<ScrollFabExample> {
  final ScrollController _scrollController = ScrollController();
  bool _isAtTop = true; // ✅ FAB position track karne ke liye

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.offset > 200 && _isAtTop) {
      // ✅ Agar scroll 200 pixels se zyada ho toh FAB niche shift ho
      setState(() {
        _isAtTop = false;
      });
    } else if (_scrollController.offset <= 200 && !_isAtTop) {
      // ✅ Agar scroll wapas top pe aaye toh FAB upar chala jaye
      setState(() {
        _isAtTop = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FAB Position Change")),
      body: ListView.builder(
        controller: _scrollController, // ✅ ScrollController use kiya
        itemCount: 30,
        itemBuilder: (context, index) => ListTile(
          title: Text("Item $index"),
        ),
      ),
      floatingActionButton: AnimatedPositioned(
        duration: Duration(milliseconds: 300), // ✅ Smooth animation ke liye
        bottom: _isAtTop ? 80 : 20, // ✅ Scroll ke basis pe FAB move karega
        right: 20,
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.arrow_upward),
        ),
      ),
    );
  }
}
