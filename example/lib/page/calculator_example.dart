
import 'package:flutter/material.dart';

import './calculator_example_embedded.dart';
import './calculator_example_dialog.dart';

class CalculatorExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
        appBar: TabBar(
          labelColor: Theme.of(context).primaryColorDark,
          unselectedLabelColor: Colors.blueGrey,
          tabs: [
            Tab(
              text: 'Created By Shekhar',
            ),
            /*Tab(
              text: 'Dialog',
            ),*/
          ],
        ),
        body: TabBarView(
          children: [
            CalculatorExampleEmbeddedPage(),
            //CalculatorExampleDialogPage(),
          ],
        ),
      ),
    );
  }
}
