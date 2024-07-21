import 'package:e_commerce/common/widgets/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

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

                    RoundedContainer(
                      padding: const EdgeInsets.all(3),
                      showBorder: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        children: [
                          Container(
                            width: 56,
                            height: 56,
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: dark? Colors.black: Colors.white,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: Image(
                              image: const AssetImage(MyImages.clothesIcon),
                              color: dark? Colors.white: Colors.black,
                            ),
                          ),
                        ],
                      ),


                    ),
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
