import 'package:e_commerce/utils/helpers/navigation.dart';
import 'package:e_commerce/utils/routing/routes.dart';
import 'package:flutter/material.dart';
import '../../../../../common/widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart';

class MyHomeCategories extends StatelessWidget {
  MyHomeCategories({super.key});

  final List<Map<String, String>> categories = [
    {'title': 'Sports', 'image': MyImages.sportCategory},
    {'title': 'Electronics', 'image': MyImages.electronicsCategory},
    {'title': 'Clothes', 'image': MyImages.clothesCategory},
    {'title': 'Animals', 'image': MyImages.animalsCategory},
    {'title': 'Furniture', 'image': MyImages.furnitureCategory},
    {'title': 'Shoes', 'image': MyImages.shoesCategory},
    {'title': 'Cosmetics', 'image': MyImages.cosmeticsCategory},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          return VerticalImageText(
            image: categories[index]['image']!,
            title: categories[index]['title']!,
            onTap: () => context.pushNamed(Routes.subCategoriesScreen),
          );
        },
      ),
    );
  }
}
