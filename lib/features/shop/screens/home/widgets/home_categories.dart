import 'package:flutter/material.dart';
import '../../../../../common/widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class MyHomeCategories extends StatelessWidget {
  const MyHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: MyImages.googleLogo,
            title: 'Shoes',
            onTap: () {},
          );
        },
      ),
    );
  }
}
