import 'package:flutter/material.dart';
import 'package:flutter_catalog/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/home_page.dart';

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
      // home: HomePage(),

      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwatch: Colors.green,
          primaryTextTheme: GoogleFonts.latoTextTheme(),
        fontFamily: GoogleFonts.lato().fontFamily
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/",
      routes: {
        "/": (context) => LoginPage(),
        "/home" : (context) => HomePage(),
        "/login" : (context) => LoginPage(),

      },

    );
  }
}
