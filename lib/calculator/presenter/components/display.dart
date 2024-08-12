import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/store/calculator_store.dart';
import 'package:provider/provider.dart';

class Display extends StatelessWidget {
  const Display({super.key});

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<CalculatorStore>(context);
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.3,
          decoration: const BoxDecoration(
            color: Colors.black,
          ),
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.all(20),
          child: Text(
            store.getExpressions,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 60,
            ),
          )
        ),
      ],
    );
  }
}