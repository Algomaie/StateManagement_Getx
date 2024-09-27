import 'package:flutter/material.dart';
import 'counter1.dart';
import 'counter2.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: SizedBox(
        width: 400,
        height: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Dashboar", style: TextStyle(fontSize: 60)),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Counter1(),
                const SizedBox(width: 20),
                Counter2(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
