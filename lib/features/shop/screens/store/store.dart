import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/appbar/tabbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/brand/brand_card.dart';
import '../../../../common/widgets/grid_layout.dart';
import '../../../../utils/helpers/my_helper_functions.dart';
import 'widgets/category_tab.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return DefaultTabController(
      length: 5,
      child: Scaffold(
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
                expandedHeight: 350,
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

                      // Brands GridView
                      GridLayout(
                        mainAxisExtent: 60,
                        itemCount: 4,
                        itemBuilder: (_, index) {
                          return const BrandCard(showBorder: true);
                        },
                      )
                    ],
                  ),
                ),

                // Tabs
                bottom: const MyTabBar(
                  tabs: [
                    Tab(child: Text("Sports")),
                    Tab(child: Text("Furniture")),
                    Tab(child: Text("Electronics")),
                    Tab(child: Text("Clothes")),
                    Tab(child: Text("Cosmetics")),
                  ],
                ),
              )
            ];
          },

          // Body
          body: const TabBarView(
            children: [
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}
