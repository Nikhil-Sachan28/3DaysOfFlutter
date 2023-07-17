import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  int minDays = 3;
  final maxDays = 4.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catelog app"),

      ),
      body: Center(
        child: Text("welcome to flutter $minDays to $maxDays days tutorial"),
      ),
      drawer: const Drawer(),
    );
  }
}
