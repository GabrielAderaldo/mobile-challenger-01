import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String buttonText;
  const Button({required this.buttonText,super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        color: Colors.grey,
        shape: BoxShape.rectangle,
      ),
      alignment: Alignment.center,
      child: Text(buttonText,
          style: const TextStyle(
              fontSize: 20, color: Colors.amber, fontWeight: FontWeight.bold)),
    );
  }
}
