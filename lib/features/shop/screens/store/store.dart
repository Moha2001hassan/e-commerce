import 'package:e_commerce/common/widgets/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_with_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/helpers/my_helper_functions.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Store', style: Theme.of(context).textTheme.headlineMedium),
        actions: [MyCartCounterIcon(onPressed: () {})],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrollable) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor: dark ? Colors.black : Colors.white,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(MySizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    // Search Bar
                    const MySearchContainer(
                      text: "Search in Store",
                      showBorder: true,
                      showBackground: false,
                      margin: EdgeInsets.zero,
                    ),
                    const SizedBox(height: MySizes.spaceBtwSections),

                    // Heading
                    MySectionHeading(
                      title: "Features Brands",
                      onPressed: () {},
                    ),
                    const SizedBox(height: MySizes.spaceBtwItems / 2),

                    GridLayout(
                      mainAxisExtent: 70,
                      itemCount: 4,
                      itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: () {},
                          child: RoundedContainer(
                            padding: const EdgeInsets.all(5),
                            showBorder: true,
                            backgroundColor: Colors.transparent,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Icon
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 7),
                                  child: CircularImage(
                                    image: MyImages.clothesIcon,
                                    isNetworkImage: false,
                                    padding: 0,
                                    backgroundColor: Colors.transparent,
                                    overlayColor: dark ? Colors.white : Colors.black,
                                    width: 30,
                                    height: 30,
                                  ),
                                ),
                                //const SizedBox(width: MySizes.spaceBtwItems / 3),

                                // Text
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      const BrandTitleWithVerifiedIcon(
                                          title: "Nike"),
                                      Text(
                                        "256 products",
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
