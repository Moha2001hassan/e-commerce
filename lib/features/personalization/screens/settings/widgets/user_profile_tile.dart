import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/images/circular_image.dart';
import '../../../../../utils/constants/image_strings.dart';

class UserProfileTile extends StatelessWidget {
  const UserProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircularImage(image: MyImages.boyImg, width: 50, height: 50, padding: 0),
      title: Text(
        "Mohamed Hassan",
        style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.white),
      ),
      subtitle: Text(
        "mohhassan@gmail.com",
        style: Theme.of(context).textTheme.bodySmall!.apply(color: Colors.white),
      ),
      trailing: IconButton(
        onPressed: () {},
        icon: const Icon(Iconsax.edit, color: Colors.white),
      ),
    );
  }
}
