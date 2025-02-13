import 'package:flutter/material.dart';

import '../theme/color_palette.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final double borderRadius;
  final Color bgColor;
  final Color textColor;
  final Function()? onTap;

  const CustomElevatedButton({
    super.key,
    required this.text,
    this.onTap,
    this.borderRadius = 16,
    this.bgColor = ColorPalette.primaryColor,
    this.textColor = ColorPalette.white,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(

      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(8),
        backgroundColor: bgColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        style:  TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
