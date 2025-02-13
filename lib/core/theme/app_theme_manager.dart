import 'package:evently/core/theme/colors_palette.dart';
import 'package:flutter/material.dart';

import 'color_palette.dart';

abstract class AppThemeManager{
  static ThemeData LightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      centerTitle: true,
    ),
  );
}