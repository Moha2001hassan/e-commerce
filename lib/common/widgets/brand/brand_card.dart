import 'package:flutter/material.dart';

import '../custom_shapes/containers/rounded_container.dart';
import '../images/circular_image.dart';
import '../texts/brand_title_with_icon.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/helpers/my_helper_functions.dart';

class BrandCard extends StatelessWidget {
  const BrandCard({super.key, required this.showBorder});

  final bool showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return InkWell(
      borderRadius: BorderRadius.circular(16),
      onTap: () {},
      child: RoundedContainer(
        padding: const EdgeInsets.all(10),
        showBorder: showBorder,
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
            const SizedBox(width: 3),

            // Text
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const BrandTitleWithVerifiedIcon(title: "Nike"),
                  Text(
                    "256 products",
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.labelMedium,
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
