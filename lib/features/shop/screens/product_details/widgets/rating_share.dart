import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../../utils/constants/sizes.dart';

class RatingAndShare extends StatelessWidget {
  const RatingAndShare({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Iconsax.star5, color: Colors.amber, size: 24),
            const SizedBox(width: 8),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                      text: '5.0',
                      style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(
                      text: '(199)',
                      style: Theme.of(context).textTheme.labelLarge),
                ],
              ),
            )
          ],
        ),
        // Share Button
        IconButton(
          icon: const Icon(Icons.share, size: MySizes.iconMd),
          onPressed: ()  {
             Share.share("Hi Share this:  https://www.google.com");
          },
        )
      ],
    );
  }
}
