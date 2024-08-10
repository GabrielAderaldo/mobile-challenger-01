import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_challenger_001/calculator/presenter/components/display.dart';
import 'package:mobile_challenger_001/calculator/presenter/components/keyboard.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Display(),
        Keyboard()
      ],
    );
  
  }
}