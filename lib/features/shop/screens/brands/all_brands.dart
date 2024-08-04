import 'package:e_commerce/common/widgets/brand/brand_card.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/grid_layout.dart';
import '../../../../common/widgets/texts/section_heading.dart';
import '../../../../utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
          title: Text('Brands', style: Theme.of(context).textTheme.headlineSmall),
          showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const MySectionHeading(title: 'Brands', showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Brands
              GridLayout(
                  itemCount: 10,
                  mainAxisExtent: 65,
                  itemBuilder: (_, __) => const BrandCard(showBorder: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
