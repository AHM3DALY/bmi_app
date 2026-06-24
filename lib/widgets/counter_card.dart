import 'package:bmi_app/widgets/custom_container.dart';
import 'package:bmi_app/widgets/custom_icon_button.dart';
import 'package:bmi_app/widgets/title_text.dart';
import 'package:bmi_app/widgets/value_text.dart';
import 'package:flutter/material.dart';

class CounterCard
    extends StatefulWidget {
  const CounterCard({
    super.key,
    required this.text,
    required this.defaultText,
    required this.onChanged,
  });
  final String text;
  final int defaultText;
  final Function(int) onChanged;

  @override
  State<CounterCard> createState() =>
      _CounterCardState();
}

class _CounterCardState
    extends State<CounterCard> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      value = widget.defaultText;
    }
    return CustomContainer(
      child: Column(
        mainAxisAlignment:
            MainAxisAlignment.center,
        children: [
          TitleText(text: widget.text),
          ValueText(
            text: value.toString(),
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment
                    .center,
            children: [
              CustomIconButton(
                icon: Icons.remove,
                onTap: () {
                  value--;
                  widget.onChanged(
                    value,
                  );
                  setState(() {});
                },
              ),

              SizedBox(width: 8),
              CustomIconButton(
                icon: Icons.add,
                onTap: () {
                  value++;
                  widget.onChanged(
                    value,
                  );
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
