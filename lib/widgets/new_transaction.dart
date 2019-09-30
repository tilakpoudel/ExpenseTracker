import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import '../widgets/user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;
  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);
    print(enteredAmount);
    if( enteredTitle.isEmpty || enteredAmount.isNegative){
      return;
    }
    addTx(
      enteredTitle,
      enteredAmount,
    );
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
