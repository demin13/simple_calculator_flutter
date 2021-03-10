
import 'package:flutter/material.dart';

import 'package:flutter_calculator/flutter_calculator.dart';

class CalculatorExampleEmbeddedPage extends StatefulWidget {
  @override
  _CalculatorExampleEmbeddedPageState createState() => _CalculatorExampleEmbeddedPageState();
}

class _CalculatorExampleEmbeddedPageState extends State<CalculatorExampleEmbeddedPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1.0, color: theme.primaryColor),
          ),
          margin: const EdgeInsets.all(12.0),
          child: Calculator(),
        ),
      ],
    );
  }
}
