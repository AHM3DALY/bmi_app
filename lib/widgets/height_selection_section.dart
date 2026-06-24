import 'package:bmi_app/models/bmi_input_model.dart';
import 'package:bmi_app/widgets/custom_container.dart';
import 'package:bmi_app/widgets/custom_slider.dart';
import 'package:bmi_app/widgets/title_text.dart';
import 'package:bmi_app/widgets/value_text.dart';
import 'package:flutter/material.dart';

class HeightSelectionSection
    extends StatefulWidget {
  const HeightSelectionSection({
    super.key,
    required this.bmiInputModel,
  });
  final BmiInputModel bmiInputModel;
  @override
  State<HeightSelectionSection>
  createState() =>
      _HeightSelectionSectionState();
}

class _HeightSelectionSectionState
    extends
        State<HeightSelectionSection> {
  double height = 174;

  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          TitleText(text: 'HEIGHT'),
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            crossAxisAlignment:
                CrossAxisAlignment
                    .baseline,
            textBaseline:
                TextBaseline.alphabetic,
            children: [
              ValueText(
                text: height
                    .round()
                    .toString(),
              ),

              Text(
                'cm',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ],
          ),
          CustomSlider(
            value: height,
            onChanged: (value) {
              height = value;
              widget
                      .bmiInputModel
                      .height =
                  value / 100;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
