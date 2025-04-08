import 'package:get/get.dart';

class Pageviewcontroller extends GetxController {
  var isSwipeEnabled = true.obs;

  void toggleswap(bool value) {
    isSwipeEnabled.value = value;
  }
}
