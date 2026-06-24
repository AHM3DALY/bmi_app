import 'package:flutter/material.dart';

class CustomAppBar
    extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 8,
        left: 16,
        bottom: 8,
      ),
      width: double.infinity,
      child: Text(
        'BMi Calculator',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
