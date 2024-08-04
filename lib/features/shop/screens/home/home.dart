import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/routing/routes.dart';
import 'widgets/home_appbar.dart';
import 'widgets/home_categories.dart';
import 'widgets/promo_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  const MyHomeAppBar(),
                  const SizedBox(height: 20),

                  // SearchBar
                  const MySearchContainer(text: 'Search in Store'),
                  const SizedBox(height: 20),

                  // Categories
                  Padding(
                    padding: const EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        const MySectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        const SizedBox(height: 20),

                        // Categories
                        MyHomeCategories(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Body
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [
                  // Promo Slider and Indicator
                  const PromoSlider(
                    banners: [
                      MyImages.banner1,
                      MyImages.banner2,
                      MyImages.banner3,
                    ],
                  ),
                  const SizedBox(height: 20),

                  MySectionHeading(
                    title: "Popular Products",
                    onPressed: () => context.pushNamed(Routes.allProductsScreen),
                  ),

                  // Popular Products
                  GridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
