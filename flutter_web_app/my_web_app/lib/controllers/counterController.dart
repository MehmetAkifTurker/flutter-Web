import 'package:get/get.dart';

class Countercontroller extends GetxController {
  var counter = 0.obs;

  void increment() {
    counter++;
  }
}
