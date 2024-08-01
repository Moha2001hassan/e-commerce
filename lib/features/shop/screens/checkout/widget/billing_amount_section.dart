import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BillingAmountSection extends StatelessWidget {
  const BillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Subtotal
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Price', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$265.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),

        // Shipping Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$6.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),

        // Tax Fee
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium),
            Text('\$3.0', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
        const SizedBox(height: MySizes.spaceBtwItems / 2),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Total Price', style: Theme.of(context).textTheme.titleLarge),
            Text('\$280.0', style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
      ],
    );
  }
}
