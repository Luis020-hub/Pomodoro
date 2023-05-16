import 'package:flutter/material.dart';

class CounterButton extends StatelessWidget {
  const CounterButton({
    required this.text,
    required this.icon,
    this.click,
    super.key,
  });

  final String text;
  final IconData icon;
  final void Function()? click;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
          vertical: 20,
        ),
        textStyle: const TextStyle(
          fontSize: 20,
        ),
      ),
      onPressed: click,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              size: 30,
            ),
          ),
          Text(text),
        ],
      ),
    );
  }
}
