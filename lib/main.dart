import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import 'aboutdialogwidget.dart';
import 'aboutlisttile.dart';
import 'absorbPointer.dart';
import 'alertDialog.dart';
import 'animatedBuilder.dart';
import 'animateddContainer.dart';
import 'animatedlign.dart';
import 'animationdefaulttextstyle.dart';
import 'autocompletewidget.dart';
import 'intenetconnection/internetconnectionPage.dart';
import 'switchAnimatedCrossfade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Internetconnectionpage(),
    );
  }
}
