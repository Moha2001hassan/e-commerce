import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class MyChipTheme {
  MyChipTheme._();

  // light theme
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: Colors.black),
    selectedColor: MyColors.primary,
    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );

  // dark theme
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: MyColors.darkerGrey,
    labelStyle: TextStyle(color: Colors.white),
    selectedColor: MyColors.primary,
    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
    checkmarkColor: Colors.white,
  );
}
