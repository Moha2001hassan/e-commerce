import 'package:e_commerce/common/widgets/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/brand/brand_show_case.dart';
import '../../../../../utils/constants/image_strings.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),

      children: [
        Padding(
          padding: const EdgeInsets.all(13),
          child: Column(
            children: [
              // Brands
              const BrandShowcase(
                images: [
                  MyImages.shoesImg,
                  MyImages.shoesImg,
                  MyImages.shoesImg,
                ],
              ),

              // Products
              MySectionHeading(
                title: "You may like",
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(height: MySizes.spaceBtwItems / 2),

              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        )
      ],
    );
  }
}
