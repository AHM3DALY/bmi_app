import 'package:bmi_app/widgets/custom_container.dart';
import 'package:bmi_app/widgets/title_text.dart';
import 'package:flutter/material.dart';

class GenderItem
    extends StatelessWidget {
  const GenderItem({
    super.key,
    required this.icon,
    required this.data,
    required this.color,
  });
  final IconData icon;
  final String data;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: color,
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 80,
          ),
          TitleText(text: data),
        ],
      ),
    );
  }
}
