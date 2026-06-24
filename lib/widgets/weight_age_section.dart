import 'package:bmi_app/models/bmi_input_model.dart';
import 'package:bmi_app/widgets/counter_card.dart';
import 'package:flutter/material.dart';

class WeightAgeSection
    extends StatelessWidget {
  const WeightAgeSection({
    super.key,
    required this.bmiInputModel,
  });
  final BmiInputModel bmiInputModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CounterCard(
            text: 'WEIGHT',
            defaultText: 60,
            onChanged: (value) {
              bmiInputModel.weight =
                  value;
            },
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: CounterCard(
            text: 'AGE',
            defaultText: 29,
            onChanged: (value) {
              bmiInputModel.age = value;
            },
          ),
        ),
      ],
    );
  }
}
