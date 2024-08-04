import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import '../../common/widgets/products/product_cards/product_card_horizontal.dart';
import '../../utils/constants/sizes.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          child: const Column(
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
