import 'package:flutter/material.dart';

class SingleCustomer extends StatelessWidget {
  String firstName;
  String lastName;
  String Email;
  String Balance;

  SingleCustomer(this.firstName, this.lastName, this.Email, this.Balance);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.yellow[100],
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Column(children:<Widget> [ 
  CircleAvatar(
              backgroundColor: Colors.white,
              radius: 70.0,
              child: Image(
                image: AssetImage('images/customer.png'),
              ),
            ),
             Text(firstName + lastName , 
            style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),),
                  Text(Email,
                    style: TextStyle( 
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,

            ), ),
                  Text(Balance, 
                    style: TextStyle( 
              fontFamily: 'OpenSans',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,

            ), ),
              ],),
            ), 
          
          ],
        ),
      ),
    );
  }
}
