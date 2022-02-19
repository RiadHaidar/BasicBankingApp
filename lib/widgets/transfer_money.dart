import 'package:bankingapp/widgets/view_customers.dart';
import 'package:flutter/material.dart';
import 'text_widget.dart';

class TransferMoney extends StatefulWidget {
  @override
  State<TransferMoney> createState() => _TransferMoneyState();
}

class _TransferMoneyState extends State<TransferMoney> {
  TextEditingController amountController = TextEditingController();

  late double amount;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: 40.0,
                  child: TextFormField(
                    controller: amountController,
                    textAlign: TextAlign.center,
                    //     initialValue: '0',
                    decoration: InputDecoration(
                      labelStyle: TextStyle(),
                      labelText: 'Amount',
                      //     hintText: 'Enter Amount',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      amount = double.parse(amountController.text);
                    });
                  },
                  child: Text('Set Amount'),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                customers[index].balance =
                                    customers[index].balance + amount;
                              });
                            },
                            child: Column(
                              children: <Widget>[
                                Card(
                                  // margin: EdgeInsets.all(5.0),
                                  elevation: 4.0,
                                  child: ListTile(
                                    contentPadding: EdgeInsets.all(5.0),
                                    title: textData(index),
                                    subtitle: Text(
                                      '${customers[index].balance}',
                                      style: TextStyle(
                                          fontFamily: 'QuickSand',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: customers.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
