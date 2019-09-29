import 'package:flutter/material.dart';

import './widgets/user_transaction.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Expense Planner1',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //  String titleInput;
  //  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('chart'),
              ),
            ),
            UserTransaction()
          ],
        ),
      ),
    );
  }
}
