import 'package:flutter/material.dart';
import '../../../../../common/widgets/images/rounded_image.dart';
import '../../../../../common/widgets/texts/brand_title_with_icon.dart';
import '../../../../../common/widgets/texts/product_title_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class CartItemInfo extends StatelessWidget {
  const CartItemInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        // Image
        RoundedImage(
          imgUrl: MyImages.shoesImg,
          height: 65,
          width: 65,
          padding: const EdgeInsets.all(MySizes.sm),
          backgroundColor: dark ? MyColors.grey : MyColors.darkerGrey,
        ),
        const SizedBox(width: 16),

        // Title, Price & Size
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BrandTitleWithVerifiedIcon(title: 'Nike'),
              const Flexible(child: ProductTitleText(title: 'Black Sports shoes', maxLines: 1)),
              // Attributes
              Text.rich(TextSpan(children: [
                TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'Green   ', style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyLarge),
              ])),
            ],
          ),
        ),
      ],
    );
  }
}
