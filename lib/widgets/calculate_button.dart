import 'package:bmi_app/models/bmi_input_model.dart';
import 'package:bmi_app/widgets/result_screen.dart';
import 'package:flutter/material.dart';

class CalculateButton
    extends StatelessWidget {
  const CalculateButton({
    super.key,
    required this.bmiInputModel,
  });

  final BmiInputModel bmiInputModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.pink,
        ),

        onPressed: () {
          double bmiResult =
              bmiInputModel
                  .calculateBmi();
          print(
            bmiResult.toStringAsFixed(
              1,
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ResultScreen(
                  bmiResult: bmiResult,
                );
              },
            ),
          );
        },
        child: const Text(
          'CALCULATE',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
