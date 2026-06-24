import 'package:flutter/material.dart';

class CustomContainer
    extends StatelessWidget {
  const CustomContainer({
    super.key,
    this.color,
    required this.child,
  });
  final Color? color;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 8,
      ),
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.circular(8),
        color:
            color ?? Color(0xff090B24),
      ),
      child: child,
    );
  }
}
