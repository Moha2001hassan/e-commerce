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
  });

  final String text;
  final IconData icon;
  final bool showBorder, showBackground;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: ScreenUtil().screenWidth,
        padding: const EdgeInsets.all(16),
        margin: const EdgeInsets.symmetric(horizontal: MySizes.defaultSpace),
        decoration: BoxDecoration(
          color: showBackground
              ? dark
                  ? Colors.black
                  : Colors.white
              : Colors.transparent,
          borderRadius: BorderRadius.circular(16),
          border: showBorder ? Border.all(color: MyColors.borderPrimary) : null,
        ),
        child: Row(
          children: [
            const Icon(Iconsax.search_normal, color: Colors.grey),
            const SizedBox(width: 12),
            Text(text, style: Theme.of(context).textTheme.bodySmall)
          ],
        ),
      ),
    );
  }
}
