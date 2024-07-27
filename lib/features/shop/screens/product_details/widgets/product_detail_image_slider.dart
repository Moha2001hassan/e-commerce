import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/appbar/appbar.dart';
import '../../../../../common/widgets/circular_icon.dart';
import '../../../../../common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return MyCurvedEdgesWidget(
      child: Container(
        color: isDark ? MyColors.darkerGrey : MyColors.grey,
        child: Stack(
          children: [
            // Main Large Image
            const SizedBox(
              height: 370,
              child: Padding(
                padding: EdgeInsets.all(40),
                child: Center(child: Image(image: AssetImage(MyImages.shoesImg))),
              ),
            ),

            // Image Slider
            Positioned(
              right: 0,
              bottom: 24,
              left: 20,
              child: SizedBox(
                height: 70,
                child: ListView.separated(
                  itemCount: 4,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (_, __) => const SizedBox(width: 12),
                  itemBuilder: (_, index) => RoundedImage(
                    width: 70,
                    imgUrl: MyImages.loginImg,
                    padding: const EdgeInsets.all(MySizes.sm),
                    border: Border.all(color: MyColors.primary),
                    backgroundColor: isDark ? MyColors.dark : Colors.white,
                  ),
                ),
              ),
            ),

            // AppBar Icon
            const MyAppBar(
              showBackArrow: true,
              actions: [CircularIcon(icon: Iconsax.heart5, color: Colors.red)],
            ),
          ],
        ),
      ),
    );
  }
}
