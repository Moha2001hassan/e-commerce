import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAddressSection extends StatelessWidget {
  const BillingAddressSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const MySectionHeading(title: 'Shopping Address', buttonTitle: 'Change', onPressed: null),
        Text('Mohamed Hassan', style: Theme.of(context).textTheme.bodyLarge),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.grey, size: 16),
            const SizedBox(width: MySizes.spaceBtwItems),
            Text('+20 101 430 0651', style: Theme.of(context).textTheme.bodyMedium)
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),
        Row(
          children: [
            const Icon(Icons.location_history, color: Colors.grey, size: 16),
            const SizedBox(width: MySizes.spaceBtwItems),
            Expanded(
              child: Text(
                'El-Mahalla El-Kubra, Egypt',
                style: Theme.of(context).textTheme.bodyMedium,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
