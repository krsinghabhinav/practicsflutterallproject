import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicsflutterallproject/intenetconnection/internetcheckingcontrller.dart';

class Internetconnectionpage extends StatefulWidget {
  const Internetconnectionpage({super.key});

  @override
  State<Internetconnectionpage> createState() => _InternetconnectionpageState();
}

class _InternetconnectionpageState extends State<Internetconnectionpage> {
  final NetworkController internetCheck = Get.put(NetworkController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Internet Connection'),
      ),
      body: Center(
        child: Obx(() => Text(
              internetCheck.isConnected.value
                  ? "✅ Internet is Active!"
                  : "❌ No Internet Connection!",
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }
}
