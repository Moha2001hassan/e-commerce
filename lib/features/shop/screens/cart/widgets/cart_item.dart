import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/texts/brand_title_with_icon.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, this.showAddRemoveButtons = true});

  final bool showAddRemoveButtons;

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Material(
      elevation: 5,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: RoundedContainer(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        backgroundColor: isDark ? MyColors.darkerGrey : MyColors.grey,
        child: Column(
          children: [
            //Cart Item Information
            Row(
              children: [
                // Image
                RoundedImage(
                  imgUrl: MyImages.shoesImg,
                  height: 65,
                  width: 65,
                  padding: const EdgeInsets.all(MySizes.sm),
                  backgroundColor: isDark ? MyColors.grey : MyColors.darkerGrey,
                ),
                const SizedBox(width: 16),

                // Title, Price & Size
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const BrandTitleWithVerifiedIcon(title: 'Nike'),
                      const Flexible(child: ProductTitleText(title: 'Black Sports shoes', maxLines: 1)),
                      // Attributes
                      Text.rich(TextSpan(children: [
                        TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'Green   ', style: Theme.of(context).textTheme.bodyLarge),
                        TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                        TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
                      ])),
                    ],
                  ),
                ),
              ],
            ),
            if (showAddRemoveButtons) const SizedBox(height: 15),
            if (showAddRemoveButtons) const Divider(),
            // Product Quantity & Price
            if (showAddRemoveButtons)
              const Row(
                children: [
                  SizedBox(width: 10),
                  // Add Remove Buttons
                  ProductQuantityWithAddRemove(),
                  Spacer(),
                  // Price
                  ProductPriceText(price: '256', isLarge: true),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
