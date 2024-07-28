import 'package:e_commerce/common/widgets/button/rounded_button.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: isDark ? MyColors.darkerGrey : MyColors.grey,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(MySizes.cardRadiusLg),
          topRight: Radius.circular(MySizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              AppRoundedButton(
                icon: Iconsax.minus,
                onPressed: () {},
                backgroundColor: Colors.black,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
              const SizedBox(width: MySizes.spaceBtwItems),
              Text('2', style: Theme.of(context).textTheme.titleSmall),
              const SizedBox(width: MySizes.spaceBtwItems),
              AppRoundedButton(
                icon: Icons.add,
                onPressed: () {},
                backgroundColor: MyColors.primary,
                width: 40,
                height: 40,
                color: Colors.white,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(MySizes.md),
              backgroundColor: MyColors.primary,
              side: const BorderSide(color: MyColors.primary),
              elevation: 7
            ),
            child: const Text('Add to cart'),
          ),
        ],
      ),
    );
  }
}
