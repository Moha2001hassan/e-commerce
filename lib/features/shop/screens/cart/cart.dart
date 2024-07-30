import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';
import 'widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text('Cart', style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: ListView.separated(
          itemCount: 8,
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: 20),
          itemBuilder: (_, index) => const CartItem(),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
        child: Card(
          elevation: 5,
          child: ElevatedButton(onPressed: () {}, child: const Text('Checkout  \$256')),
        ),
      ),
    );
  }
}

