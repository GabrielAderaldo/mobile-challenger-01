import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mobile_challenger_001/calculator/presenter/components/display.dart';
import 'package:mobile_challenger_001/calculator/presenter/components/keyboard.dart';
import 'package:mobile_challenger_001/calculator/store/calculator_store.dart';
import 'package:provider/provider.dart';


class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CalculatorStore>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Display(),
        Expanded(child: KeyboardRow(
          bnt1: () => store.acOperations(),
          bnt2: () => store.handleOperations('/'),
          bnt3: () => store.handleOperations('x'),
          bnt4: () => store.substractOneOfExpression(),
          buttons: const ['AC', '÷', 'X', '<-'],
        )),
        Expanded(child: KeyboardRow(
          bnt1: () => store.handleOperations('7'),
          bnt2: () => store.handleOperations('8'),
          bnt3: () => store.handleOperations('9'),
          bnt4: () => store.handleOperations('x'),
          buttons: const ['7', '8', '9', 'x'],
        )),
        Expanded(child: KeyboardRow(
          bnt1: () => store.handleOperations('4'),
          bnt2: () => store.handleOperations('5'),
          bnt3: () => store.handleOperations('6'),
          bnt4: () => store.handleOperations('-'),
          
          buttons: const ['4', '5', '6', '-'],
        )),
        Expanded(child: KeyboardRow(
          bnt1: () => store.handleOperations('1'),
          bnt2: () => store.handleOperations('2'),
          bnt3: () => store.handleOperations('3'),
          bnt4: () => store.handleOperations('+'),
          
          
          buttons: const ['1', '2', '3', '+'],
        )),
        Expanded(child: KeyboardRow(
          bnt1: () => store.handleOperations('.'),
          bnt2: () => store.handleOperations('0'),
          bnt3: () => store.handleOperations('%'),
          bnt4: () => store.calculateResult(),
          buttons: const ['.', '0', '%', '='],
        )),
      ],
    );
  
  }
}