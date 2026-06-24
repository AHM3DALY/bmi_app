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
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Result = $bmiResult',
        ),
      ),
    );
  }
}
