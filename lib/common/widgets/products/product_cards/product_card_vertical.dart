import 'package:e_commerce/common/styles/shadows.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:e_commerce/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/my_helper_functions.dart';
import '../../circular_icon.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../images/rounded_image.dart';
import '../../texts/brand_title_with_icon.dart';
import '../../texts/product_price_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () => context.pushNamed(Routes.productDetails),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(0.5),
        decoration: BoxDecoration(
          color: dark ? MyColors.darkerGrey : Colors.white,
          borderRadius: BorderRadius.circular(MySizes.productImageRadius),
          boxShadow: [ShadowStyle.verticalProductShadow],
        ),
        child: Column(
          children: [
            // Thumbnail, Wishlist Button, Discount Tag
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(5),
              backgroundColor: dark ? MyColors.dark : MyColors.light,
              child: Stack(
                children: [
                  // Thumbnail Image
                  RoundedImage(
                    imgUrl: MyImages.shoesImg,
                    applyImgRadius: true,
                    backgroundColor: dark ? MyColors.dark : MyColors.light,
                  ),

                  // Sale Tag
                  Positioned(
                    top: 9,
                    child: RoundedContainer(
                      radius: MySizes.sm,
                      backgroundColor: MyColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                          horizontal: MySizes.sm, vertical: MySizes.xs),
                      child: Text(
                        "25%",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: Colors.black),
                      ),
                    ),
                  ),

                  // Favorite Icon
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CircularIcon(
                        icon: Iconsax.heart5, color: Colors.red),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 1),

            // Details
            const Padding(
              padding: EdgeInsets.only(left: MySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  ProductTitleText(title: "Green Nike Air Shoes", smallSize: true),
                  SizedBox(height: 8),

                  // brand name
                  BrandTitleWithVerifiedIcon(title: "Nike"),
                ],
              ),
            ),

            // Price & Add Button
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Price
                const Padding(
                  padding: EdgeInsets.only(left: 8.0),
                  child: ProductPriceText(price: '53', isLarge: true),
                ),

                // Add to Card Button
                Container(
                  decoration: const BoxDecoration(
                    color: MyColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  child: const SizedBox(
                    width: 32,
                    height: 32,
                    child: Center(
                      child: Icon(Iconsax.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}