import 'package:flutter/material.dart';
import 'view_customers.dart';

class textData extends StatelessWidget {
  int index;
//TextStyle textStyle;
  textData(this.index);
  @override
  Widget build(BuildContext context) {
    return Text(
      '${customers[index].firstName} ${customers[index].lastName}',
      style: TextStyle(
        fontFamily: 'QuickSand',
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
      textAlign: TextAlign.start,
    );
  }
}

/* 
1_ make multiple textData Widgets according to what you're gonna use
2_ adjust Theme matrtials all over the app to reduce repeating and to make it more clean
*/

