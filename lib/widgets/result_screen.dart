import 'package:flutter/material.dart';

class ResultScreen
    extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.bmiResult,
  });

  final double bmiResult;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          const Color.fromARGB(
            255,
            244,
            245,
            246,
          ),
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Result = $bmiResult',
        ),
      ),
    );
  }
}
