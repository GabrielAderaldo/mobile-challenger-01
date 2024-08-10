import 'package:flutter/material.dart';

class CalculatorStore extends ChangeNotifier{
  int _display = 0;
  int get display => _display;

  void increment(){
    _display += 1;
    notifyListeners();
  }

}