import 'package:e_commerce/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/my_helper_functions.dart';

class MyCircularIconBtn extends StatelessWidget {
  const MyCircularIconBtn({
    super.key,
    required this.icon,
    this.width,
    this.height,
    this.size = MySizes.lg,
    this.color,
    this.backgroundColor,
    this.onPressed,
    this.elevation = 7,
  });

  final double? width, height, size, elevation;
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Material(
      borderRadius: BorderRadius.circular(50),
      elevation: elevation!,
      color: backgroundColor != null
          ? backgroundColor!
          : dark
              ? MyColors.black.withOpacity(0.9)
              : Colors.white.withOpacity(0.9),
      child: InkWell(
        borderRadius: BorderRadius.circular(50),
        onTap: onPressed,
        child: SizedBox(
          width: width,
          height: height,
          child: Icon(icon, size: size, color: color),
        ),
      ),
    );
  }
}
