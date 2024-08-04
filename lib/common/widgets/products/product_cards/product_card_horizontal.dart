import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/product_price_text.dart';
import 'package:e_commerce/common/widgets/texts/product_title_text.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/my_helper_functions.dart';
import '../../custom_shapes/containers/rounded_container.dart';
import '../../texts/brand_title_with_icon.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      // height: 150,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        color: dark ? MyColors.darkerGrey : MyColors.grey,
        borderRadius: BorderRadius.circular(MySizes.productImageRadius),
        //boxShadow: [ShadowStyle.verticalProductShadow],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // Thumbnail, Wishlist Button, Discount Tag
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(MySizes.sm),
            backgroundColor: MyColors.light,
            child: Stack(
              children: [
                // Thumbnail Image
                const RoundedImage(
                  imgUrl: MyImages.shoesImg,
                  applyImgRadius: true,
                  width: 120,
                  height: 120,
                ),

                // Sale Tag
                Positioned(
                  top: 0,
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
                  child: Icon(Iconsax.heart5, color: Colors.red),
                ),
              ],
            ),
          ),

          // Details
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(MySizes.sm, MySizes.sm, 0, 0),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                          title: 'Green Nike Half Sleeves Shirt',
                          smallSize: true),
                      SizedBox(height: MySizes.spaceBtwItems / 2),
                      BrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),

                  // Price & Add Button
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      const Flexible(child: ProductPriceText(price: '256.0', isLarge: true,)),

                      // Add To Cart
                      Container(
                        decoration: const BoxDecoration(
                          color: MyColors.dark,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(MySizes.cardRadiusMd),
                            bottomRight: Radius.circular(MySizes.cardRadiusMd),
                          ),

                        ),
                        child: const SizedBox(
                          width: 35,
                          height: 35,
                          child: Center(child: Icon(Iconsax.add, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
