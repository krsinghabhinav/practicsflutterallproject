import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:practicsflutterallproject/firebsePhoneAuthOTP/PhoneNumberScreen.dart';

class HomeScreen extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void signOut(BuildContext context) async {
    await _auth.signOut();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PhoneNumberScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("You are logged in!"),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => signOut(context),
              child: const Text("Logout"),
            ),
          ],
        ),
      ),
    );
  }
}
