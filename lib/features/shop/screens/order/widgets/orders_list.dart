import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class OrderListItems extends StatelessWidget {
  const OrderListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 8,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (_, index) => const OrderItemCard(),
    );
  }
}

class OrderItemCard extends StatelessWidget {
  const OrderItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Card(
      margin: const EdgeInsets.all(0),
      elevation: 2,
      color: Colors.transparent,
      child: RoundedContainer(
        showBorder: true,
        backgroundColor: dark ? MyColors.dark : MyColors.light,
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Row 1
            Row(
              children: [
                // Icon
                const Icon(Iconsax.ship),
                const SizedBox(width: MySizes.spaceBtwItems / 2),

                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Processing",
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                              color: MyColors.primary, fontWeightDelta: 1),
                      ),
                      Text("01 Sep 2023", style: Theme.of(context).textTheme.titleLarge),
                    ],
                  ),
                ),
                const Spacer(),

                // Icon
                IconButton(
                    onPressed: () {},
                    icon: const Icon(Iconsax.arrow_right_34, size: MySizes.iconSm),
                ),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwItems),

            // Row 2
            Row(
              children: [
                // Icon
                const Icon(Iconsax.tag),
                const SizedBox(width: MySizes.spaceBtwItems / 2),

                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Order", style: Theme.of(context).textTheme.labelMedium),
                      Text("[#256f2]", style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
                const SizedBox(width: MySizes.spaceBtwItems),

                const Icon(Iconsax.calendar),
                const SizedBox(width: MySizes.spaceBtwItems / 2),
                // Status & Date
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Shipping Date", style: Theme.of(context).textTheme.labelMedium),
                      Text("03 Feb, 2024", style: Theme.of(context).textTheme.titleMedium),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
