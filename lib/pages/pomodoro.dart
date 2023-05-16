import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/counter.dart';
import 'package:pomodoro/components/input_time.dart';
import 'package:provider/provider.dart';
import '../store/pomodoro.store.dart';

class Pomodoro extends StatelessWidget {
  const Pomodoro({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Counter(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 40),
            child: Observer(
              builder: (_) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InputTime(
                      title: 'Work',
                      valor: store.workTime,
                      inc: store.incTimeWork,
                      dec: store.decTimeWork),
                  InputTime(
                    title: 'Rest',
                    valor: store.restTime,
                    inc: store.incTimeRest,
                    dec: store.decTimeRest,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
