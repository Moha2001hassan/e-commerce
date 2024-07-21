import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/helpers/my_helper_functions.dart';
import '../../../../utils/helpers/screen_util.dart';

class MySearchContainer extends StatelessWidget {
  const MySearchContainer({
    super.key,
    required this.text,
    this.icon = Iconsax.search_normal,
    this.showBorder = true,
    this.showBackground = true,
    this.onTap,
    EdgeInsetsGeometry? margin,
  }) : margin = margin ?? const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace);


  final String text;
  final IconData icon;
  final bool showBorder, showBackground;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: ScreenUtil().screenWidth,
        padding: const EdgeInsets.all(16),
        //margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        margin: margin,
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? MyColors.dark
                  : MyColors.light
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: showBorder ? Border.all(color: MyColors.grey) : null,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: Colors.grey, size: 19),
            const SizedBox(width: 12),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
