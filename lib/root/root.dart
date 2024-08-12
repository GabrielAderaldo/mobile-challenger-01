import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/presenter/pages/calculator_page.dart';
import 'package:mobile_challenger_001/calculator/store/calculator_store.dart';
import 'package:provider/provider.dart';

class Root extends StatefulWidget {
  const Root({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(child: Scaffold(
        body: ChangeNotifierProvider(child: const CalculatorPage(),create: (context) => CalculatorStore()),
      )),
    );
  }
}