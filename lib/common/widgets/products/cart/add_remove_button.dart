import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../button/rounded_button.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [

        MyCircularIconBtn(
          icon: Iconsax.minus,
          onPressed: () {},
          backgroundColor: Colors.black,
          width: 32,
          height: 32,
          color: Colors.white,
        ),

        const SizedBox(width: MySizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(width: MySizes.spaceBtwItems),

        MyCircularIconBtn(
          icon: Icons.add,
          onPressed: () {},
          backgroundColor: MyColors.primary,
          width: 32,
          height: 32,
          color: Colors.white,
        ),
      ],
    );
  }
}