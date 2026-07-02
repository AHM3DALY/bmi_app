import 'package:bmi_app/models/bmi_input_model.dart';
import 'package:bmi_app/widgets/calculate_button.dart';
import 'package:bmi_app/widgets/custom_app_bar.dart';
import 'package:bmi_app/widgets/gender_selection_section.dart';
import 'package:bmi_app/widgets/height_selection_section.dart';
import 'package:bmi_app/widgets/weight_age_section.dart';

import 'package:flutter/material.dart';

class HomeScreen
    extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() =>
      _HomeScreenState();
}

class _HomeScreenState
    extends State<HomeScreen> {
  BmiInputModel bmiInputModel =
      BmiInputModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        0xff03051A,
      ),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 2),
            Expanded(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),

                child: Column(
                  spacing: 16,
                  children: [
                    Expanded(
                      child: GenderSelectionSection(
                        bmiInputModel:
                            bmiInputModel,
                      ),
                    ),

                    Expanded(
                      child: HeightSelectionSection(
                        bmiInputModel:
                            bmiInputModel,
                      ),
                    ),

                    Expanded(
                      child: WeightAgeSection(
                        bmiInputModel:
                            bmiInputModel,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            CalculateButton(
              bmiInputModel:
                  bmiInputModel,
            ),
          ],
        ),
      ),
    );
  }
}
