import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';

class MySingleAddress extends StatelessWidget {
  const MySingleAddress({
    super.key,
    required this.selectedAddress,
    required this.onTap,
    required this.index,
    required this.address,
  });

  final bool selectedAddress;
  final VoidCallback onTap;
  final int index;
  final String address;

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Material(
        borderRadius: BorderRadius.circular(16),
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: RoundedContainer(
            padding: const EdgeInsets.all(MySizes.md),
            width: double.infinity,
            showBorder: true,
            backgroundColor: selectedAddress
                ? MyColors.primary.withOpacity(0.5)
                : Colors.transparent,
            borderColor: selectedAddress
                ? Colors.transparent
                : dark
                    ? MyColors.darkGrey
                    : MyColors.grey,
            child: Stack(
              children: [
                Positioned(
                  right: 5,
                  top: 0,
                  child: Icon(
                    selectedAddress ? Iconsax.tick_circle5 : null,
                    color: selectedAddress
                        ? dark
                            ? MyColors.light
                            : MyColors.dark
                        : null,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohamed Hassan",
                      style: Theme.of(context).textTheme.titleLarge,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: MySizes.sm / 2),
                    const Text("(+20) 123 456 7890", maxLines: 1, overflow: TextOverflow.ellipsis),
                    const SizedBox(height: MySizes.sm / 2),
                    Text(address, softWrap: true),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
