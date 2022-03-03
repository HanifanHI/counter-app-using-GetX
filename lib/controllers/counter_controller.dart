import 'package:get/get.dart';

class CounterController extends GetxController {
  RxInt counter = 0.obs;
  RxBool isDark = false.obs;

  void increment() => counter + 1;
  void decrement() => counter - 1;

  void changeTheme() => isDark.value = !isDark.value;
}
