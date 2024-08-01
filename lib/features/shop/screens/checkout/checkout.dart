import 'package:e_commerce/features/shop/screens/cart/widgets/cart_list.dart';
import 'package:e_commerce/features/shop/screens/checkout/widget/billing_amount_section.dart';
import 'package:e_commerce/features/shop/screens/checkout/widget/billing_payment_section.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:flutter/material.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/rounded_container.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';
import '../../../../utils/helpers/my_helper_functions.dart';
import '../../../../utils/routing/routes.dart';
import 'widget/billing_address_section.dart';
import 'widget/coupon_widget.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Column(
            children: [
              // Items in Cards
              const CartsList(showAddRemoveButtons: false, cardsCount: 3),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Coupon TextView
              const CouponCode(),
              const SizedBox(height: MySizes.spaceBtwItems),

              // Billing Section
              RoundedContainer(
                padding: const EdgeInsets.all(MySizes.md),
                showBorder: true,
                backgroundColor: dark ? MyColors.black : MyColors.white,
                child: const Column(
                  children: [
                    // Pricing
                    BillingAmountSection(),
                    SizedBox(height: 4),

                    // Divider
                    Divider(),

                    // Payment Method
                    BillingPaymentSection(),
                    SizedBox(height: MySizes.spaceBtwItems),

                    // Address
                    BillingAddressSection(),
                  ],
                ),
              )
              // Total
            ],
          ),
        ),
      ),

      // Checkout Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Card(
          elevation: 5,
          child: ElevatedButton(
            onPressed: () => context.pushNamed(
              Routes.successScreen,
              arguments: {
                MyTexts.titleArg: 'Payment Success',
                MyTexts.supTitleArg: 'Your order has been placed successfully',
                MyTexts.imageArg: MyImages.verifyEmailSuccess,
                MyTexts.onPressedArg: () {
                  context.pushNamedAndRemoveUntil(
                    Routes.navigationMenu,
                    predicate: ModalRoute.withName(Routes.navigationMenu), // Remove until LoginScreen
                  );
                },
              },
            ),
            child: const Text('Checkout  \$256'),
          ),
        ),
      ),
    );
  }
}
