import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/texts/section_heading.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/image_strings.dart';
import 'widgets/profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        showBackArrow: true,
        title: Text("Profile", style: Theme.of(context).textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              // Profile Pic
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(image: MyImages.boyImg, width: 80, height: 80),
                    TextButton(onPressed: () {}, child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              // Details
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 14),

              // Heading Profile Info
              const MySectionHeading(title: "Profile Information", showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              ProfileMenu(title: 'Name', value: 'Mohamed Hassan', onPressed: () {}),
              ProfileMenu(title: 'Username', value: 'mohassan2001', onPressed: () {}),

              const Divider(),
              const SizedBox(height: 14),

              // Heading Profile Info
              const MySectionHeading(title: "Personal Information", showActionButton: false),
              const SizedBox(height: MySizes.spaceBtwItems),

              ProfileMenu(title: 'User ID', value: '71101', icon: Iconsax.copy, onPressed: () {}),
              ProfileMenu(title: 'E-Mail', value: 'mohhassan@gmail.com', onPressed: () {}),
              ProfileMenu(title: 'Phone Number', value: '01014300651', onPressed: () {}),
              ProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
              ProfileMenu(title: 'Date of Birth', value: '7 Nov, 2001', onPressed: () {}),
              const Divider(),
              const SizedBox(height: 8),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text('Close Account', style: TextStyle(color: Colors.red)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
