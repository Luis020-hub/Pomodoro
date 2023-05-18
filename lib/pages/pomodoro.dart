import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/Counter.dart';
import 'package:pomodoro/components/InputTime.dart';
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
                    inc: store.started && store.working()
                        ? null
                        : store.incWorkTime,
                    dec: store.started && store.working()
                        ? null
                        : store.decWorkTime,
                  ),
                  InputTime(
                    title: 'Rest',
                    valor: store.restTime,
                    inc: store.started && store.resting()
                        ? null
                        : store.incRestTime,
                    dec: store.started && store.resting()
                        ? null
                        : store.decRestTime,
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
