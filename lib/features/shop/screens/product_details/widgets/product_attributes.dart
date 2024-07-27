import 'package:e_commerce/common/widgets/choice_chip.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/my_helper_functions.dart';
import 'package:flutter/material.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // Selected Attribute Pricing & Description
        RoundedContainer(
          padding: const EdgeInsets.all(MySizes.md),
          backgroundColor: isDark ? MyColors.darkerGrey : MyColors.grey,
          child: Column(
            children: [
              // Title, Price, Stock Status
              Row(
                children: [
                  Text('Variation', style: Theme.of(context).textTheme.headlineSmall),
                  const SizedBox(width: MySizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(title: 'Price :  ', smallSize: true),

                          // Actual Price
                          Text(
                            "\$25",
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: MySizes.spaceBtwItems),

                          // Sale Price
                          const ProductPriceText(price: '20')
                        ],
                      ),

                      // Stock
                      Row(
                        children: [
                          const ProductTitleText(title: 'Stock : ', smallSize: true),
                          Text('In Stock', style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 4),
              const ProductTitleText(
                title: 'This is the Description of the Product and it can go up to max 4 lines.',
                smallSize: true,
              ),
            ],
          ),
        ),
        const SizedBox(height: MySizes.spaceBtwItems),

        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Colors'),
            const SizedBox(height: 4),
            Wrap(
              children: [
                MyChoiceChip(text: 'Green', selected: true, onSelected: (value) {}),
                MyChoiceChip(text: 'Blue', selected: false, onSelected: (value) {}),
                MyChoiceChip(text: 'Yellow', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const MySectionHeading(title: 'Size'),
            const SizedBox(height: 4),

            Wrap(
              spacing: 8,
              children: [
                MyChoiceChip(text: 'EU 34', selected: true, onSelected: (value) {}),
                MyChoiceChip(text: 'EU 36', selected: false, onSelected: (value) {}),
                MyChoiceChip(text: 'EU 38', selected: false, onSelected: (value) {}),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
