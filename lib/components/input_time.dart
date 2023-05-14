import 'package:flutter/material.dart';

class InputTime extends StatelessWidget {
  final String title;
  final int valor;

  const InputTime({
    required this.title,
    required this.valor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(this.title),
        Text('${this.valor}'),
      ],
    );
  }
}
