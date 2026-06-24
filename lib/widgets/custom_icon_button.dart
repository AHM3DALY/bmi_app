import 'package:flutter/material.dart';

class CustomIconButton
    extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Color(
          0xff4B4E5F,
        ),

        child: Icon(
          icon,
          color: Colors.white,
        ),
      ),
    );
  }
}
