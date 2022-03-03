import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_counter_apps/controllers/counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<CounterController>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App Using GetX'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            () => Text('Number ${controller.counter}'),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              OutlinedButton(
                onPressed: () => controller.decrement(),
                child: const Icon(
                  Icons.remove,
                ),
              ),
              OutlinedButton(
                onPressed: () => controller.increment(),
                child: const Icon(
                  Icons.add,
                ),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() => controller.changeTheme()),
        child: const Icon(
          Icons.colorize,
        ),
      ),
    );
  }
}
