import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:practicsflutterallproject/getxpractic/controller/productControlelr.dart';

class Productscreen extends StatefulWidget {
  const Productscreen({super.key});

  @override
  State<Productscreen> createState() => _ProductscreenState();
}

class _ProductscreenState extends State<Productscreen> {
  Productcontrolelr productcontrolelr = Get.put(Productcontrolelr());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("product data"),
      ),
      body: Column(
        children: [ListView.builder(itemBuilder: (context, index) {})],
      ),
    );
  }
}
