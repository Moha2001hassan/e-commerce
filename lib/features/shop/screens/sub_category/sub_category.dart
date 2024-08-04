import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/images/rounded_image.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/products/product_cards/product_card_horizontal.dart';

class SubCategoriesScreen extends StatelessWidget {
  const SubCategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Sports shirts', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // Banner
              const RoundedImage(
                fit: BoxFit.cover,
                  imgUrl: MyImages.banner1,
                  width: double.infinity,
                  applyImgRadius: true),
              const SizedBox(height: MySizes.spaceBtwSections),

              // Sub Categories
              Column(
                children: [
                  // Heading
                  MySectionHeading(title: 'Sports shirts', onPressed: () {}),
                  const SizedBox(height: MySizes.spaceBtwItems / 2),

                  //const ProductCardHorizontal(),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => const SizedBox(width: 20),
                      itemBuilder: (context, index) => const ProductCardHorizontal(),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
