import 'package:flutter/material.dart';
import 'package:pomodoro/components/counter_button.dart';

class Counter extends StatelessWidget {
  const Counter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Time to Work',
            style: TextStyle(
              fontSize: 40,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            '25:00',
            style: TextStyle(
              fontSize: 120,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: CounterButton(
                  text: 'Start',
                  icon: Icons.play_arrow,
                ),
              ),
              // Padding(
              //   padding: EdgeInsets.only(right: 10),
              //   child: CounterButton(
              //     text: 'Stop',
              //     icon: Icons.stop,
              //   ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CounterButton(
                  text: 'Restart',
                  icon: Icons.refresh,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
