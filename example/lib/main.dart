

import 'package:flutter/material.dart';

import './page/calculator_example.dart';

void main() => runApp(FlutterCalculatorExample());

class FlutterCalculatorExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calculator'),
        ),
        body: CalculatorExamplePage(),
      ),
    );
  }
}
