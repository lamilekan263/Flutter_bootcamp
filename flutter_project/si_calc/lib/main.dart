import 'package:flutter/material.dart';
import 'package:si_calc/mainscreen.dart';


void main() => runApp(MyApp());


class MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Interest Calculator",
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}