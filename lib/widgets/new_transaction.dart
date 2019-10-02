import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import '../widgets/user_transaction.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;
  NewTransaction(this.addTx);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    print(enteredAmount);

    if (enteredTitle.isEmpty || enteredAmount.isNegative) {
      print('error');
       Scaffold.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.redAccent,
          content: Text('Field is required'),
          ),
      );
    }
    widget.addTx(
      enteredTitle,
      enteredAmount,
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter expense Title !',
                hintText: 'Eg. Shopping, Movies...'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              controller: amountController,
              // inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              decoration: InputDecoration(
                labelText: 'Amount',
                hintText: '\$ ',
              ),
            ),
            FlatButton(
              onPressed: submitData,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Icon(
                    Icons.add,
                    color: Colors.purple,
                    size: 20.0,
                  ),
                  Text(
                    'Add Expenses !',
                    style: TextStyle(
                        color: Colors.purple,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
