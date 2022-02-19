import 'package:flutter/material.dart';

import 'widgets/view_customers.dart';


void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        primarySwatch: Colors.teal,
         
      ),
      home: Scaffold(
        appBar: AppBar(
          //toolbarHeight: 10.0,
          centerTitle: true,
          title: Text('Banking App'),
        ),
        body: ViewCustomers(),
      ),
    );
  }
}
