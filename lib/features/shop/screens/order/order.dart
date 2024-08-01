import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

import 'widgets/orders_list.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: Text("My Orders", style: Theme.of(context).textTheme.headlineSmall),
        showBackArrow: true,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: OrderListItems(),
      ),
    );
  }
}
