import 'package:flutter/material.dart';

import '../../../../../common/widgets/appbar.dart';
import '../../../../../common/widgets/products/cart/cart_menu_icon.dart';
import '../../../../../utils/constants/text_strings.dart';

class MyHomeAppBar extends StatelessWidget {
  const MyHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            MyTexts.homeAppbarTitle,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .apply(color: Colors.grey[350]),
          ),
          Text(
            MyTexts.homeAppbarSupTitle,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: Colors.white),
          ),
        ],
      ),
      actions: [
        MyCartCounterIcon(
          onPressed: () {},
          iconColor: Colors.white,
        )
      ],
    );
  }
}
