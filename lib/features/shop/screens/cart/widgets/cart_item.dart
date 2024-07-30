import 'package:e_commerce/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/products/cart/add_remove_button.dart';
import '../../../../../common/widgets/texts/product_price_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/helpers/my_helper_functions.dart';
import 'cart_item_info.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = MyHelperFunctions.isDarkMode(context);
    return Material(
      elevation: 5,
      color: Colors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: RoundedContainer(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        backgroundColor: isDark ? MyColors.darkerGrey : MyColors.grey,
        child: const Column(
          children: [
            CartItemInfo(),
            SizedBox(height: 15),
            Divider(),
            // Product Quantity & Price
            Row(
              children: [
                SizedBox(width: 10),
                // Add Remove Buttons
                ProductQuantityWithAddRemove(),
                Spacer(),
                // Price
                ProductPriceText(price: '256', isLarge: true),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
