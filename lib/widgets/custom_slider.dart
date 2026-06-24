import 'package:flutter/material.dart';

class CustomSlider
    extends StatelessWidget {
  const CustomSlider({
    super.key,
    required this.value,
    required this.onChanged,
  });
  final double value;
  final Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        thumbShape:
            RoundSliderThumbShape(
              enabledThumbRadius: 15,
            ),
        trackHeight: 1,
      ),
      child: Slider(
        value: value,
        onChanged: onChanged,

        min: 50,
        max: 250,
        activeColor: Colors.white,
        inactiveColor: Colors.grey,
        thumbColor: Colors.red,
      ),
    );
  }
}
