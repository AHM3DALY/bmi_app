import 'package:bmi_app/widgets/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BmiCalculatorApp());
}

class BmiCalculatorApp
    extends StatelessWidget {
  const BmiCalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
