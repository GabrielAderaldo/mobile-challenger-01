import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/presenter/pages/calculator_page.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SafeArea(child: Scaffold(
        body: CalculatorPage(),
      )),
    );
  }
}