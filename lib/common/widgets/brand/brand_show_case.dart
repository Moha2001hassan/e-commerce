import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/my_helper_functions.dart';
import '../custom_shapes/containers/rounded_container.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({super.key, required this.images});

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: MyColors.darkGrey,
      backgroundColor: Colors.transparent,
      padding: const EdgeInsets.fromLTRB(9, 9, 0, 9),
      margin: const EdgeInsets.only(bottom: 12),
      child: Column(
        children: [
          // Brand with Products Count
          const BrandCard(showBorder: false),

          // Brand Top 3 Product images
          Row(
            children: images
                .map((image) => brandTopProductImageWidget(image, context))
                .toList(),
          )
        ],
      ),
    );
  }

  Widget brandTopProductImageWidget(String image, context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Expanded(
      child: RoundedContainer(
        height: 100,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(right: 9),
        backgroundColor: dark ? MyColors.darkGrey : MyColors.light,
        child: const Image(
          fit: BoxFit.contain,
          image: AssetImage(MyImages.shoesImg),
        ),
      ),
    );
  }
}
