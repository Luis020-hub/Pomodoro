import 'package:flutter/material.dart';
import 'package:pomodoro/components/counter.dart';
import 'package:pomodoro/components/input_time.dart';
import 'package:pomodoro/store/pomodoro.store.dart';
import 'package:provider/provider.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Counter(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 40,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputTime(title: 'Work', valor: store.workTime),
                InputTime(title: 'Rest', valor: store.restTime),
              ],
            ),
          )
        ],
      ),
    );
  }
}
