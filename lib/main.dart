import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'Controller.dart';
import 'dashboard.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: CounterPro(),
    );
  }
}

class CounterPro extends StatelessWidget {
  CounterController controller = Get.put(CounterController());

  int n = 0;
  @override
  Widget build(BuildContext context) {
    print("n=${n++}");
    return Scaffold(
      appBar: AppBar(
        title: const Text('State management Getx'),
      ),
      body: Center(
        child: Dashboard(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
