import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../utils/helpers/my_helper_functions.dart';
import 'widgets/product_detail_image_slider.dart';
import 'widgets/product_meta_data.dart';
import 'widgets/rating_share.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final isDark = MyHelperFunctions.isDarkMode(context);
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Product Image Slider
              ProductImageSlider(),

              // Product Details
              Padding(
                padding: EdgeInsets.only(
                  left: MySizes.defaultSpace,
                  right: MySizes.defaultSpace,
                  bottom: MySizes.defaultSpace,
                ),
                child: Column(
                  children: [
                    // Rating & Share
                    RatingAndShare(),

                    // Price, Title, Stock, Brand
                    ProductMetaData(),

                    // Attributes
                    // Checkout Button
                    // Description
                    // Reviews
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


