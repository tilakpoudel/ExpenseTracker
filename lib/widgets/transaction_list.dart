import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List <Transaction> transactions;

  TransactionList(this.transactions);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: transactions.map((tx) {
        return Card(
          child: Row(
            children: <Widget>[
              Icon(
                Icons.monetization_on,
                size: 35.0,
              ),
              Container(
                padding: EdgeInsets.all(2.0),
                margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Colors.blue, Colors.purple],
                    )),
                child: Text(
                  '${tx.amount}',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '${tx.title}',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          shadows: [Shadow(color: Colors.red)]),
                    ),
                    Text(
                      DateFormat.yMMMd().format(tx.date),
                      style: TextStyle(
                          color: Colors.blueGrey,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      }).toList(),
    );
  }
}