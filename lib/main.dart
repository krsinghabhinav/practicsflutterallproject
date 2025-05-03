import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:practicsflutterallproject/blikit/screeeen/blikitscreeen.dart';
import 'package:practicsflutterallproject/firebase_options.dart';

import 'ecoomerappwithsqflite/controller/cartProvider.dart';
import 'ecoomerappwithsqflite/model/productmodel.dart';
import 'getxpractic/screen/HostelFilterScreen.dart';
import 'getxpractic/screen/roomhostelscreen.dart';
import 'getxpractic/screen/test1.dart';
import 'intenetconnection/internetcheckingcontrller.dart';

import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final NetworkController internetCheck = Get.put(NetworkController());
  ProductModel productModel = ProductModel();
  // This widget is the root of your application.
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CartProvider(),
      child: GetMaterialApp(
        title: 'E-commerce App',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: true,
        ),
        home: Roomhostelscreen(),
      ),
    );
  }
}
