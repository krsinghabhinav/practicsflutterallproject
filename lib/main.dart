import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:practicsflutterallproject/ecoomerapp/model/productmodel.dart';
import 'package:practicsflutterallproject/firebase_options.dart';

import 'ecoomerapp/controller/cartProvider.dart';
import 'ecoomerapp/screen/productscreen.dart';
import 'intenetconnection/internetcheckingcontrller.dart';
import 'listexample.dart/Ascending.dart';
import 'listexample.dart/Fixed-Length.dart';
import 'listexample.dart/PlaceholderListScreen.dart';
import 'listexample.dart/Searching.dart';
import 'listexample.dart/everylistcondition.dart';
import 'package:flutter/material.dart';
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
      child: MaterialApp(
        title: 'E-commerce App',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          useMaterial3: true,
        ),
        home: ProductListScreen(),
      ),
    );
  }
}
