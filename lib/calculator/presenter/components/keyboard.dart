import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/presenter/components/button.dart';
import 'package:mobile_challenger_001/calculator/store/calculator_store.dart';
import 'package:provider/provider.dart';

class KeyboardRow extends StatelessWidget {
  final List<String> buttons;
  final VoidCallback bnt1;
  final VoidCallback bnt2;
  final VoidCallback bnt3;
  final VoidCallback bnt4;
  
  const KeyboardRow({required this.buttons,required this.bnt1,required this.bnt2,required this.bnt3,required this.bnt4,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
    mainAxisSize: MainAxisSize.max,
    children: [
      InkWell(
        onTap: bnt1,
        child: Button(buttonText: buttons[0]),
      ),
      InkWell(
        onTap: bnt2,
        child: Button(buttonText: buttons[1]),
      ),
      InkWell(
        onTap: bnt3,
        child: Button(buttonText: buttons[2]),
      ),
      InkWell(
        onTap: bnt4,
        child: Button(buttonText: buttons[3]),
      ),
      
    ],);
  }
}