import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';
import 'package:mobile_challenger_001/calculator/usecase/calculator_repository.dart';

class CalculatorStore  extends ChangeNotifier implements CalculatorRepository{

  int value = 0;
  get getValue => value;

  String expressions = '';
  get getExpressions => expressions;

  String result = '';
  get getResult => result;



  @override
  void increment(int newValue) {
    value = newValue;
    notifyListeners();
  }
  
  @override
  void handleOperations(String operation) {
    expressions = expressions + operation;
    notifyListeners();
  }
  
  @override
  void acOperations() {
    expressions = '';
    notifyListeners();
  }
  
  @override
  void substractOneOfExpression() {
    if(expressions.isNotEmpty){
      expressions = expressions.substring(0, expressions.length - 1);
    }
    notifyListeners();
  }
  
  @override
  void calculateResult() {
    try {
      result = expressions.trim().replaceAll('x', '*');
      final parser = Expression.parse(result);
      const evaluator = ExpressionEvaluator();
      final r = evaluator.eval(parser,{});
      expressions = r.toString();
      notifyListeners();
    } catch (e) {
      result = 'Error';
      notifyListeners();
    }
  }
}