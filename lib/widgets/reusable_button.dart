import 'package:flutter/material.dart';
import 'package:tiket_wisata/constants/colors.dart';

class ReusableButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color;

  const ReusableButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color = AppColors.secondaryColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(backgroundColor: color),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
