import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller.dart';

class Counter2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<CounterController>(
      builder: (controller) => Card(
        elevation: 6,
        child: SizedBox(
          width: 150,
          height: 150,
          child: Center(
              child: Text(
            "${controller.counter}",
            style: const TextStyle(fontSize: 40),
          )),
        ),
      ),
    );
  }
}
