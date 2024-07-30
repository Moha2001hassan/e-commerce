import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class MyFloatingActionButtonTheme {
  MyFloatingActionButtonTheme._();

  // light theme
  static final lightFloatingActionButtonTheme = FloatingActionButtonThemeData(
    backgroundColor: MyColors.primary,
    foregroundColor: Colors.white,
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  // dark theme
  static final darkFloatingActionButtonTheme = FloatingActionButtonThemeData(
    backgroundColor: MyColors.primary,
    foregroundColor: Colors.white,
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
