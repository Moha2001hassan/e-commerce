import 'package:flutter/material.dart';
import 'cart_item.dart';

class CartsList extends StatelessWidget {
  const CartsList({
    super.key,
    this.showAddRemoveButtons = true,
    this.cardsCount = 8,
  });

  final bool showAddRemoveButtons;
  final int cardsCount;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: cardsCount,
      shrinkWrap: true,
      separatorBuilder: (_, __) => const SizedBox(height: 10),
      itemBuilder: (_, index) => CartItem(showAddRemoveButtons: showAddRemoveButtons),
    );
  }
}
