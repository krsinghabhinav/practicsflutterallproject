import 'package:get/get.dart';

class Test1Controller extends GetxController {
  RxInt changeIndex = 0.obs;

  void changeValue() {
    changeIndex++;
  }
}
