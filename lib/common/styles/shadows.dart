import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';

class ShadowStyle{

  static final verticalProductShadow = BoxShadow(
    color: MyColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );

  static final horizontalProductShadow = BoxShadow(
    color: MyColors.darkGrey.withOpacity(0.1),
    spreadRadius: 7,
    blurRadius: 50,
    offset: const Offset(0, 2),
  );
}