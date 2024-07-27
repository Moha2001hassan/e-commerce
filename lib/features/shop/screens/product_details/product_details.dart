import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/features/shop/screens/product_details/widgets/bottom_add_to_cart.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'widgets/product_attributes.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: const BottomAddToCart(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Product Image Slider
              const ProductImageSlider(),

              // Product Details
              Padding(
                padding: const EdgeInsets.only(
                  left: MySizes.defaultSpace,
                  right: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace,
                ),
                child: Column(
                  children: [
                    // Rating & Share
                    const RatingAndShare(),

                    // Price, Title, Stock, Brand
                    const ProductMetaData(),

                    // Attributes
                    const ProductAttributes(),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    // Checkout Button
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(onPressed: () {}, child: const Text("Checkout")),
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems),

                    // Description
                    const MySectionHeading(title: 'Description', showActionButton: false),
                    const SizedBox(height: 8),
                    const ReadMoreText(
                      'This is a Product description for Blue Nike Sleeve less vest. There are more things that can be added but i am just practicing and nothing else.',
                      trimLines: 2,
                      trimMode: TrimMode.Line,
                      trimCollapsedText: 'Show more',
                      trimExpandedText: '  Less',
                      moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: MyColors.primary),
                      lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800, color: MyColors.primary),
                    ),

                    // Reviews
                    const Divider(),
                    //const SizedBox(height: 1),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const MySectionHeading(title: 'Reviews (199)', showActionButton: false),
                        IconButton(onPressed: (){}, icon: const Icon(Iconsax.arrow_right_3, size: 18))
                      ],
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
