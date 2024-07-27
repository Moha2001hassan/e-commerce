import 'package:e_commerce/common/widgets/images/circular_image.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_icon.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & sale Price
        Row(
          children: [
            // Sale Tag
            RoundedContainer(
              radius: MySizes.sm,
              backgroundColor: MyColors.secondary.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: MySizes.sm, vertical: MySizes.xs),
              child: Text(
                "25%",
                style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.black),
              ),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),

            // Price
            Text(
              '\$250',
              style: Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
            ),
            const SizedBox(width: MySizes.spaceBtwItems),
            const ProductPriceText(price: '175', isLarge: true),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        // Title
        const ProductTitleText(title: 'Green Nike Sports Shirt'),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        // Stock Status
        Row(
          children: [
            const ProductTitleText(title: 'Stock:'),
            const SizedBox(width: MySizes.spaceBtwItems/3),
            Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 1.5),

        // Brand
        Row(
          children: [
            CircularImage(
              image: MyImages.shoesIcon,
              width: 32,
              height: 32,
              overlayColor: isDark ? Colors.white : Colors.black,
            ),
            const BrandTitleWithVerifiedIcon(title: 'Nike'),
          ],
        )
      ],
    );
  }
}
