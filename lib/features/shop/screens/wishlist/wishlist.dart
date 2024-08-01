import 'package:e_commerce/common/widgets/button/rounded_button.dart';
import 'package:e_commerce/common/widgets/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:e_commerce/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../utils/constants/colors.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text("Wishlist", style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          MyCircularIconBtn(
            icon: Iconsax.add,
            onPressed: () => context.pushNamed(Routes.testScreen),
            backgroundColor: MyColors.primary,
            color: Colors.white,
            width: 30,
            height: 30,
            elevation: 2,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              GridLayout(itemCount: 6, itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
        ),
      ),
    );
  }
}