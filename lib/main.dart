import 'package:flutter/material.dart';

import 'home_page.dart';

void main() {
  runApp(MyApp());
}





class MyApp extends StatelessWidget {
  num minDays = 3;
  num maxDays = 4.0;
  var day = "tuesday";
  String today = "monday";
  static const pi = 3.14;
  int eggs = 3;
  double revenue = 4.00;
  final value = 4;


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
