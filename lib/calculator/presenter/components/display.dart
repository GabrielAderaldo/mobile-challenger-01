import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/store/calculator_store.dart';

class Display extends StatefulWidget {
  const Display({super.key});

  @override
  State<Display> createState() => _DisplayState();
}

class _DisplayState extends State<Display> {

  final CalculatorStore store = CalculatorStore();

  @override
  void initState() {
    store.addListener((){
      setState(() {
        print('object');
      });
    });
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: const BoxDecoration(
        color: Colors.black,
      ),
      alignment: Alignment.centerRight,
      padding: const EdgeInsets.all(20),
      child: Text(
        store.display.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontSize: 60,
        ),
      )
    );
  }
}