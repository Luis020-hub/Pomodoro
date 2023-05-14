import 'package:flutter/material.dart';
import 'package:pomodoro/components/input_time.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Pomorodo'),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              InputTime(title: 'Work', valor: 25),
              InputTime(title: 'Rest', valor: 5),
            ],
          )
        ],
      ),
    );
  }
}
