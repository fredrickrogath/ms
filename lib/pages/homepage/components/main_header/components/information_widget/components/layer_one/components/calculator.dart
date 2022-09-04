import 'package:flutter/material.dart';
import 'package:flutter_simple_calculator/flutter_simple_calculator.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  CalculatorState createState() => CalculatorState();
}

class CalculatorState extends State<Calculator> {
  double _currentValue = 0;
  @override
  Widget build(BuildContext context) {
    var calc = SimpleCalculator(
      value: _currentValue,
      hideExpression: false,
      hideSurroundingBorder: true,
      onChanged: (key, value, expression) {
        setState(() {
          _currentValue = value ?? 0;
        });
        // print("$key\t$value\t$expression");
      },
      onTappedDisplay: (value, details) {
        // print("$value\t${details.globalPosition}");
      },
      theme: const CalculatorThemeData(
        // borderColor: Color(0xFF337A6F),
        borderWidth: 2,
        // displayColor: Color(0xFF337A6F),
        displayStyle: TextStyle(fontSize: 50, color: Colors.grey),
        // expressionColor: Color(0xFF337A6F),
        expressionStyle: TextStyle(fontSize: 20, color: Colors.grey),
        operatorColor: Colors.transparent,
        operatorStyle: TextStyle(fontSize: 30, color: Colors.grey),
        commandColor: Colors.transparent,
        commandStyle: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey
            ),
        // numColor: Color(0xFF337A6F),
        numStyle: TextStyle(fontSize: 40, color: Colors.grey),
      ),
    );
    return Scaffold(
        appBar: AppBar(
          leading: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.transparent,
              elevation: 0.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_drop_down_outlined,
              color: Colors.grey,
              size: 50,
            ),
          ),
          elevation: 0.0,
        ),
        body: calc);
  }
}
