import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:flutter/material.dart';
import '../../../../utils/routing/routes.dart';
import 'widgets/cart_list.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: CartsList(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Card(
          elevation: 5,
          child: ElevatedButton(
            onPressed: () => context.pushNamed(Routes.checkoutScreen),
            child: const Text('Checkout  \$256'),
          ),
        ),
      ),
    );
  }
}



