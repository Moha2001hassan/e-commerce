import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/section_heading.dart';
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
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  MyHomeAppBar(),
                  SizedBox(height: 20),

                  // SearchBar
                  MySearchContainer(text: 'Search in Store'),
                  SizedBox(height: 20),

                  // Categories
                  Padding(
                    padding: EdgeInsets.only(left: MySizes.defaultSpace),
                    child: Column(
                      children: [
                        // Heading
                        MySectionHeading(
                          title: "Popular Categories",
                          showActionButton: false,
                          textColor: Colors.white,
                        ),
                        SizedBox(height: 20),

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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: PromoSlider(
                banners: [
                  MyImages.loginImg,
                  MyImages.verifyEmailImg,
                  MyImages.verifyEmailSuccess,
                  MyImages.resetPassword,
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
