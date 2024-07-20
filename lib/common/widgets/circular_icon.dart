import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/constants/colors.dart';
import '../../utils/helpers/my_helper_functions.dart';

class CircularIcon extends StatelessWidget {
  const CircularIcon({
    super.key,
    this.width,
    this.height,
    this.size = MySizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: backgroundColor != null
            ? backgroundColor!
            : dark
                ? MyColors.black.withOpacity(0.9)
                : Colors.white.withOpacity(0.9),
      ),
      child: IconButton(
          onPressed: onPressed, icon: Icon(icon, size: size, color: color)),
    );
  }
}
