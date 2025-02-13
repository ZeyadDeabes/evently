import 'package:evently/core/extensions/extensions.dart';
import 'package:flutter/material.dart';
import '../theme/color_palette.dart';

class CustomTabBarItem extends StatelessWidget {
  final String text;
  final bool isSelected;
  final IconData icon;

  const CustomTabBarItem({
    super.key,
    required this.text,
    required this.icon,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? ColorPalette.white : Colors.transparent,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: ColorPalette.white,
        ),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: isSelected ? ColorPalette.primaryColor : ColorPalette.white,
          ),
          8.spaceHorizontal,
          Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color:
                  isSelected ? ColorPalette.primaryColor : ColorPalette.white,
            ),
          ),
        ],
      ),
    );
  }
}
