import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_apps/controllers/counter_controller.dart';
import './pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // * AKSES GETX CONTROLLER
    final controller = Get.put(CounterController());

    return Obx(
      () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        theme: controller.isDark.value ? ThemeData.dark() : ThemeData.light(),
      ),
    );
  }
}
