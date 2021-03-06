// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0B21),
        ),
        primaryColor: Color(0xFF0A0B21),
        scaffoldBackgroundColor: Color(0xFF0A0B21),
      ),
      home: InputPage(),
    );
  }
}
