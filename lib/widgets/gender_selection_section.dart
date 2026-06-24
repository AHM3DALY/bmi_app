import 'package:bmi_app/models/bmi_input_model.dart';
import 'package:bmi_app/widgets/gender_item.dart';
import 'package:flutter/material.dart';

class GenderSelectionSection
    extends StatefulWidget {
  const GenderSelectionSection({
    super.key,
    required this.bmiInputModel,
  });
  final BmiInputModel bmiInputModel;

  @override
  State<GenderSelectionSection>
  createState() =>
      _GenderSelectionSectionState();
}

class _GenderSelectionSectionState
    extends
        State<GenderSelectionSection> {
  bool isMaleSelected = true;
  Color activeColor = Color(0xff17172F);

  Color inactiveColor = Color(
    0xff090B24,
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = true;
              widget
                      .bmiInputModel
                      .gender =
                  'male';
              setState(() {});
            },
            child: GenderItem(
              icon: Icons.male_rounded,
              data: 'MALE',
              color: isMaleSelected
                  ? activeColor
                  : inactiveColor,
            ),
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: GestureDetector(
            onTap: () {
              isMaleSelected = false;
              widget
                      .bmiInputModel
                      .gender =
                  'female';
              setState(() {});
            },
            child: GenderItem(
              icon:
                  Icons.female_rounded,
              data: 'FEMALE',
              color: isMaleSelected
                  ? inactiveColor
                  : activeColor,
            ),
          ),
        ),
      ],
    );
  }
}
