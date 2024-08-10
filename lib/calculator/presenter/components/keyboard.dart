import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/store/calculator_store.dart';

class Keyboard extends StatelessWidget {
  const Keyboard({super.key});

  @override
  Widget build(BuildContext context) {
    final store = CalculatorStore();

    return ElevatedButton(onPressed: store.increment, child: Text('increment'));
  }
}