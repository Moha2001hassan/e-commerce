import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: Text('Popular Products',style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              DropdownButtonFormField(
                decoration: const InputDecoration(prefixIcon: Icon(Iconsax.sort)),
                onChanged: (value){},
                items: ['Name', 'Higher Price', 'Lower Price','Sale', 'newest', 'Popularity']
                    .map((option) => DropdownMenuItem(value: option, child: Text(option)))
                    .toList(),
              ),
              const SizedBox(height: MySizes.spaceBtwItems),
              // Products
              GridLayout(itemCount: 4, itemBuilder: (_, index) => const ProductCardVertical()),
            ],
          ),
        ),
      ),
    );
  }
}
