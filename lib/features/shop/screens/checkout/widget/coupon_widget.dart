import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class CouponCode extends StatelessWidget {
  const CouponCode({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      backgroundColor: dark ? MyColors.dark : MyColors.white,
      padding: const EdgeInsets.only(
        top: MySizes.xs,
        bottom: MySizes.xs,
        left: MySizes.md,
        right: MySizes.sm,
      ),
      child: Row(
        children: [
          //TextFormField
          Flexible(
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Have a promo code? Enter here',
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                errorBorder: InputBorder.none,
                disabledBorder: InputBorder.none,
              ),
            ),
          ),

          // Apply Button
          SizedBox(
            width: 75,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  foregroundColor: dark
                      ? MyColors.white.withOpacity(0.5)
                      : MyColors.dark.withOpacity(0.5),
                  backgroundColor: MyColors.grey.withOpacity(0.2),
                  side: BorderSide(color: MyColors.grey.withOpacity(0.1))),
              child: const Text('Apply'),
            ),
          ),
        ],
      ),
    );
  }
}