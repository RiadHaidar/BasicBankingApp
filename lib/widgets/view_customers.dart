import 'package:flutter/material.dart';

import '../models/customers.dart';
import 'single_customer_view.dart';
import './transfer_money.dart';
import 'text_widget.dart';
List<Customers> customers = [
  Customers('Riad', 'Haidar', 'riadhaidar99@gmail.com', 500.0),
  Customers('Ali', 'Asfourah', 'alitoDan99@gmail.com', 500.0),
  Customers('Michael', 'Scott', 'dundiz.mike@gmail.com', 500.0),
  Customers('Jack', 'Milean', 'Jackie.frisky@gmail.com', 500.0),
  Customers('Jim', 'Halpert', 'jimi.hal76@gmail.com', 500.0),
  Customers('Pam', 'Bisliey', 'pami.hal87@gmail.com', 500.0),
  Customers('Dwighte', 'Schrute', 'schrute.farms65@gmail.com', 500.0),
  Customers('Ghadeer', 'Tayshouri', 'rasta.hell98@gmail.com', 500.0),
  Customers('Sparrow', 'Hai', 'haidara.sparrow95@gmail.com', 500.0),
  Customers('Adnan', 'Asaad', 'adnanoov99@gmail.com', 500.0),
];

class ViewCustomers extends StatefulWidget {
  @override
  _ViewCustomersState createState() => _ViewCustomersState();
}

class _ViewCustomersState extends State<ViewCustomers> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Container(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Card(
                    // margin: EdgeInsets.all(5.0),
                    elevation: 4.0,
                    child: ListTile(
                      contentPadding: EdgeInsets.all(5.0),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SingleCustomer(
                              '${customers[index].firstName}',
                              '${customers[index].lastName}',
                              '${customers[index].email}',
                              '${customers[index].balance}',
                            ),
                          ),
                        );
                      },
                      leading: CircleAvatar(
                        radius: 30.0,
                        child: Text(
                          '${customers[index].firstName[0]} ${customers[index].lastName[0]}',
                          style: TextStyle(
                            fontFamily: 'QuickSand',
                            fontWeight: FontWeight.bold,
                            // fontSize: 20.0,
                          ),
                        ),
                      ),
                      title: textData(index),
                  subtitle: Text('${customers[index].email}', 
                   style: TextStyle(
                                          fontFamily: 'QuickSand',
                                          fontWeight: FontWeight.w700,
                                          fontSize: 17),),
                    ),
                  );
                },
                itemCount: customers.length,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: (){ 
                 Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                            TransferMoney(),
                          ),
                        );
            },
            child: Text('Transfer' ,
            style: TextStyle( 
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,

            ), 
            ),),
        ],
      ),
    );
  }
}





