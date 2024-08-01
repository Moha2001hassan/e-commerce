import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:flutter/material.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class BillingPaymentSection extends StatelessWidget {
  const BillingPaymentSection({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        MySectionHeading(title: 'Payment Method', buttonTitle: 'Change', onPressed: () {}),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        Row(
          children: [
            const Image(
                image: AssetImage(MyImages.paypalIcon),
                fit: BoxFit.contain,
                width: 25,
                height: 25,
            ),
            const SizedBox(width: MySizes.spaceBtwItems / 2),
            Text('Paypal', style: Theme.of(context).textTheme.titleMedium),
          ],
        )
      ],
    );
  }
}
