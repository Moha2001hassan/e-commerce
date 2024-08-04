import 'package:flutter/material.dart';

import '../../common/widgets/products/product_cards/product_card_horizontal.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              Text("Test Screen"),
              SizedBox(height: 100),

              ProductCardHorizontal(),
            ],
          ),
        ),
      ),
    );
  }
}
