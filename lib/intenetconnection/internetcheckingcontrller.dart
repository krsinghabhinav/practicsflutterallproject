// import 'package:get/get.dart';
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:flutter/material.dart';

// class NetworkController extends GetxController {
//   var isConnected = true.obs; // 🔹 Observable variable

//   @override
//   void onInit() {
//     super.onInit();
//     checkConnection();
//   }

//   // ✅ Function to Check Internet
//   void checkConnection() async {
//     var connectivityResult = await Connectivity().checkConnectivity();
//     _updateConnectionStatus(connectivityResult != ConnectivityResult.none);

//     // 🔹 Listen for Future Changes
//     Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
//       bool newStatus = results.contains(ConnectivityResult.mobile) || results.contains(ConnectivityResult.wifi);
//       _updateConnectionStatus(newStatus);
//     });
//   }

//   // ✅ Function to Update Status & Show Toast
//   void _updateConnectionStatus(bool status) {
//     if (isConnected.value != status) {
//       isConnected.value = status;

//       Fluttertoast.showToast(
//         msg: status ? "✅ Internet Connected!" : "❌ No Internet Connection!",
//         toastLength: Toast.LENGTH_SHORT,
//         gravity: ToastGravity.BOTTOM,
//         backgroundColor: status ? Colors.green : Colors.red,
//         textColor: Colors.white,
//         fontSize: 16.0,
//       );
//     }
//   }
// }

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class NetworkController extends GetxController {
  var isConnected = true.obs;

  @override
  void onInit() {
    monitorInternetConnection();
    super.onInit();
  }

  void monitorInternetConnection() {
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> results) {
      if (results.contains(ConnectivityResult.mobile)) {
        updateConnectionStatus(true, "📶 Mobile Data Connected");
      } else if (results.contains(ConnectivityResult.wifi)) {
        updateConnectionStatus(true, "📡 Wi-Fi Connected");
      } else if (results.contains(ConnectivityResult.bluetooth)) {
        updateConnectionStatus(true, "🔵 Bluetooth Connected");
      } else if (results.contains(ConnectivityResult.ethernet)) {
        updateConnectionStatus(true, "🔌 Ethernet Connected");
      } else {
        updateConnectionStatus(false, "❌ No Internet Connection");
      }
    });
  }

  // ✅ Function to Update Status & Show Toast
  void updateConnectionStatus(bool status, String message) {
    if (isConnected.value != status) {
      isConnected.value = status;
      Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        backgroundColor: status ? Colors.green : Colors.red,
        textColor: Colors.white,
        fontSize: 16.0,
      );
    }
  }
}
