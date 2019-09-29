import 'package:flutter/material.dart';

import './new_transaction.dart';
import './transaction_list.dart';
import '../models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'Sports Shoes',
      amount: 1800,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Shirt',
      amount: 800,
      date: DateTime.now(),
    ),
    
  ];

  void _addNewTransaction(String txTitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
