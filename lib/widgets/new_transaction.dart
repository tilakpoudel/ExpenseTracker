import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// import '../widgets/user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx);

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
              // onChanged: (val) {
              //   titleInput = val;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount', hintText: '\$ '),
              controller: amountController,
              // inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
              keyboardType: TextInputType.number,
              // onChanged: (val){
              //   amountInput = val;
              // },
            ),
            FlatButton(
              onPressed: () {
                addTx(
                  titleController.text,
                  double.parse(amountController.text),
                );
              },
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
