
import 'package:flutter/material.dart';

import './calculator_example_embedded.dart';
import './calculator_example_dialog.dart';

class CalculatorExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Theme.of(context).primaryColor,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: 'Embedded',
            ),
            Tab(
              text: 'Dialog',
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CalculatorExampleEmbeddedPage(),
            CalculatorExampleDialogPage(),
          ],
        ),
      ),
    );
  }
}
