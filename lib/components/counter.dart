import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pomodoro/components/counter_button.dart';
import 'package:provider/provider.dart';
import '../store/pomodoro.store.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<PomodoroStore>(context);

    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Time to Work',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            '${store.minutes.toString().padLeft(2, '0')}:${store.seconds.toString().padLeft(2, '0')}',
            style: const TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),
          Observer(
            builder: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (store.started == false)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CounterButton(
                      text: 'Start',
                      icon: Icons.play_arrow,
                      click: store.start,
                    ),
                  ),
                if (store.started == true)
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: CounterButton(
                      text: 'Stop',
                      icon: Icons.stop,
                      click: store.stop,
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: CounterButton(
                    text: 'Restart',
                    icon: Icons.refresh,
                    click: store.restart,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
